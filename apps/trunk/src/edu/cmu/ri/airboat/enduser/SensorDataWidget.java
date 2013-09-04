package edu.cmu.ri.airboat.enduser;

import edu.cmu.ri.airboat.general.BoatProxy;
import edu.cmu.ri.airboat.general.Observation;
import edu.cmu.ri.airboat.general.ProxyManagerListener;
import edu.cmu.ri.crw.SensorListener;
import edu.cmu.ri.crw.VehicleServer.SensorType;
import edu.cmu.ri.crw.data.SensorData;
import gov.nasa.worldwind.awt.WorldWindowGLJPanel;
import gov.nasa.worldwind.geom.LatLon;
import gov.nasa.worldwind.geom.Position;
import gov.nasa.worldwind.geom.coords.UTMCoord;
import gov.nasa.worldwind.layers.MarkerLayer;
import gov.nasa.worldwind.layers.RenderableLayer;
import gov.nasa.worldwind.render.BasicShapeAttributes;
import gov.nasa.worldwind.render.Material;
import gov.nasa.worldwind.render.Renderable;
import gov.nasa.worldwind.render.ShapeAttributes;
import gov.nasa.worldwind.render.SurfaceQuad;
import gov.nasa.worldwind.render.markers.BasicMarker;
import gov.nasa.worldwind.render.markers.BasicMarkerAttributes;
import gov.nasa.worldwind.render.markers.BasicMarkerShape;
import gov.nasa.worldwind.render.markers.Marker;
import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.FlowLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.logging.Logger;
import javax.swing.JComboBox;
import javax.swing.JLabel;
import javax.swing.JPanel;

/**
 *
 * @author nbb
 */
public class SensorDataWidget implements ProxyManagerListener {

    static final double ALT_THRESH = 2500.0; // Altitude to switch from rectangles that are fixed size in m (< ALT_THRESH) to spheres that are fixed size in pixels (> ALT_THRESH)
    static final double HEATMAP_THRESH = 10.0; // What percent difference in data range to trigger a recalculation of heatmap colors for data values
    static final double DIST_THRESH = 10.0; // How far (m) from the last measurement recorded a new measurement must be in order to add it to the visualization
    final double RECT_OPACITY = 0.5; // Opacity of markers that are fixed size in m (< ALT_THRESH)
    final double SPHERE_OPACITY = 1.0; // Opacity of spheres that are fixed size in pixels (> ALT_THRESH)
    final int SPHERE_SIZE = 30; // Sphere size
    
    private static final Logger LOGGER = Logger.getLogger(SensorDataWidget.class.getName());
    private Hashtable<String, Integer> sensorNameToIndex = new Hashtable<String, Integer>();
    private Hashtable<Integer, String> indexToSensorName = new Hashtable<Integer, String>();
    private ArrayList<ArrayList<Renderable>> lowAltRenderables = new ArrayList<ArrayList<Renderable>>();
    private ArrayList<ArrayList<Marker>> highAltMarkers = new ArrayList<ArrayList<Marker>>();
    private ArrayList<ArrayList<Observation>> observations = new ArrayList<ArrayList<Observation>>();
    private ArrayList<UTMCoord> lastObsUtm = new ArrayList<UTMCoord>();
    private ArrayList<double[]> dataMinMax = new ArrayList<double[]>();
    private ArrayList<Renderable> activeLowAltRenderables = null;
    private ArrayList<Marker> activeHighAltMarkers = null;
    private double[] activeDataMinMax = null;
    private ArrayList<Observation> activeObservations = null;
    private RenderableLayer lowAltRenderableLayer;
    private MarkerLayer highAltMarkerLayer;
    private WorldWindowGLJPanel wwGlP;
    JLabel sourceL;
    JComboBox sourceCB;

    public SensorDataWidget(WorldWindowGLJPanel wwGlP) {
        this.wwGlP = wwGlP;
        initRenderableLayer();
        initButtons();
    }

    protected void initRenderableLayer() {
        if (wwGlP == null) {
            return;
        }

        lowAltRenderableLayer = new RenderableLayer();
        lowAltRenderableLayer.setPickEnabled(false);
        lowAltRenderableLayer.setMaxActiveAltitude(ALT_THRESH);
        lowAltRenderableLayer.setRenderables(activeLowAltRenderables);
        wwGlP.getModel().getLayers().add(lowAltRenderableLayer);

        highAltMarkerLayer = new MarkerLayer();
        highAltMarkerLayer.setOverrideMarkerElevation(true);
        highAltMarkerLayer.setKeepSeparated(false);
        highAltMarkerLayer.setElevation(10d);
        highAltMarkerLayer.setPickEnabled(false);
        highAltMarkerLayer.setMinActiveAltitude(ALT_THRESH);
        highAltMarkerLayer.setMarkers(activeHighAltMarkers);
        wwGlP.getModel().getLayers().add(highAltMarkerLayer);
    }

    protected void initButtons() {
        if (wwGlP == null) {
            return;
        }

        JPanel buttonPanel = new JPanel(new FlowLayout(FlowLayout.CENTER, 10, 0));
        sourceL = new JLabel("Visualized data source:");
        buttonPanel.add(sourceL);

        SensorType[] sensorTypes = SensorType.values();
        String[] choices = new String[sensorTypes.length + 1];
        final String noSensor = "NONE";
        choices[0] = noSensor;
        sensorNameToIndex.put(noSensor, 0);
        indexToSensorName.put(0, noSensor);

        lowAltRenderables.add(null);
        highAltMarkers.add(null);
        dataMinMax.add(null);
        observations.add(null);
        lastObsUtm.add(null);

        // Create mapping between each sensor type and a unique int
        for (int i = 0; i < sensorTypes.length; i++) {
            choices[i + 1] = sensorTypes[i].name();
            sensorNameToIndex.put(sensorTypes[i].toString(), i + 1);
            indexToSensorName.put(i + 1, sensorTypes[i].toString());

            lowAltRenderables.add(new ArrayList<Renderable>());
            highAltMarkers.add(new ArrayList<Marker>());
            dataMinMax.add(new double[]{Double.MAX_VALUE, Double.MIN_VALUE, 0.0});
            observations.add(new ArrayList<Observation>());
            lastObsUtm.add(null);
        }
        sourceCB = new JComboBox(choices);
        sourceCB.setSelectedIndex(0);
        sourceCB.addActionListener(new SensorChoiceLister());
        buttonPanel.add(sourceCB);

        wwGlP.add(buttonPanel, BorderLayout.SOUTH);
        wwGlP.revalidate();
    }

    public void proxyAdded(final BoatProxy boatProxy) {
        for (int i = 0; i < 3; i++) {
            boatProxy.addSensorListener(i, new SensorListener() {
                public void receivedSensor(SensorData sd) {
                    // If the observation is not in the same "cell" (as defined by DIST_THRESH) as the last one, store it
                    UTMCoord adjUtm = checkObservation(sd, boatProxy.getCurrLoc());
                    if (adjUtm != null) {
                        addObservation(sd, adjUtm);
                    }
                }
            });
        }
    }

    /**
     * Check if a sensor's values have diverged enough to warrant recomputation of heatmap colors
     * @param dataMinMax Bounds of the data of interest
     * @return True if heatmap needs to be recomputed
     */
    public boolean checkHeatmap(double[] dataMinMax) {
        if (((dataMinMax[1] - dataMinMax[0]) / dataMinMax[2] - 1) * 100.0 > HEATMAP_THRESH) {
            return true;
        }
        return false;
    }

    /**
     * Recomputes the currently viewed sensor's heatmap values
     */
    public void recomputeHeatmap() {
//        System.out.println("### RECOMPUTE ###");
        (new Thread() {
            public void run() {
                activeDataMinMax[2] = activeDataMinMax[1] - activeDataMinMax[0];
                Iterator obsIt = activeObservations.iterator();
                Iterator lowAltIt = activeLowAltRenderables.iterator();
                Iterator highAltIt = activeHighAltMarkers.iterator();

                while (obsIt.hasNext() && lowAltIt.hasNext() && highAltIt.hasNext()) {
                    Observation o = (Observation) obsIt.next();
                    Renderable r = (Renderable) lowAltIt.next();
                    Marker m = (Marker) highAltIt.next();

                    Color dataColor = dataToColor(o.getValue(), activeDataMinMax[0], activeDataMinMax[1]);
                    Material material = new Material(dataColor);
                    ((BasicMarker) m).getAttributes().setMaterial(material);
                    ((SurfaceQuad) r).getAttributes().setInteriorMaterial(material);
                    ((SurfaceQuad) r).getAttributes().setOutlineMaterial(material);
                }
                lowAltRenderableLayer.setRenderables(activeLowAltRenderables);
                highAltMarkerLayer.setMarkers(activeHighAltMarkers);
                wwGlP.redrawNow();

            }
        }).start();
    }

    /**
     * Check if this sensor data is at least DIST_THRESH away from the last recorded sensor data from this proxy's sensor
     * @param sd The received sensor data
     * @param curP The proxy's position when the sensor data was received
     * @return The UTM coordinate of the sensor data, snapped to the grid defined by DIST_THRESH
     */
    public UTMCoord checkObservation(SensorData sd, Position curP) {
        SensorType sensorType = sd.type;
        int sensorIndex = sensorNameToIndex.get(sensorType.toString());
        ArrayList<Renderable> sensorLowAltRenderables = lowAltRenderables.get(sensorIndex);
        ArrayList<Marker> sensorHighAltMarkers = highAltMarkers.get(sensorIndex);
        ArrayList<Observation> sensorObservations = observations.get(sensorIndex);
        double[] sensorDataMinMax = dataMinMax.get(sensorIndex);
        boolean rangeChanged = false;

        if (sensorLowAltRenderables == activeLowAltRenderables || sensorHighAltMarkers == activeHighAltMarkers) {
            // If we are visualizing the dataset this measurement belongs to,
            //  clone the list WW is rendering to avoid concurrent modification exceptions
            lowAltRenderableLayer.setRenderables((ArrayList<Renderable>) sensorLowAltRenderables.clone());
            highAltMarkerLayer.setMarkers((ArrayList<Marker>) sensorHighAltMarkers.clone());
            wwGlP.redrawNow();
        }
        // Compute adjusted center location for grid-like visualization
        UTMCoord curUtm = UTMCoord.fromLatLon(curP.latitude, curP.longitude);
        //@todo assumes shift does not change zones
        UTMCoord adjUtm = UTMCoord.fromUTM(curUtm.getZone(), curUtm.getHemisphere(),
                DIST_THRESH * Math.floor(curUtm.getEasting() / DIST_THRESH),
                DIST_THRESH * Math.floor(curUtm.getNorthing() / DIST_THRESH));
        UTMCoord lastUtm = lastObsUtm.get(sensorIndex);
        if (sd.data.length < 1
                || (lastUtm != null && (Math.sqrt(Math.pow(lastUtm.getEasting() - adjUtm.getEasting(), 2) + Math.pow(lastUtm.getNorthing() - adjUtm.getNorthing(), 2))) < DIST_THRESH)) {
            // Too close to last recorded measurement, skip these measurements
            return null;
        }
        return adjUtm;
    }

    /**
     * Add a heatmapped rectangle and sphere marker representing the sensor data and record the observation
     * @param sd The received sensor data
     * @param adjUtm The UTM coordinate of the sensor data, snapped to the grid defined by DIST_THRESH
     */
    public void addObservation(SensorData sd, UTMCoord adjUtm) {
        SensorType sensorType = sd.type;
        int sensorIndex = sensorNameToIndex.get(sensorType.toString());
        ArrayList<Renderable> sensorLowAltRenderables = lowAltRenderables.get(sensorIndex);
        ArrayList<Marker> sensorHighAltMarkers = highAltMarkers.get(sensorIndex);
        ArrayList<Observation> sensorObservations = observations.get(sensorIndex);
        double[] sensorDataMinMax = dataMinMax.get(sensorIndex);
        boolean rangeChanged = false;

        synchronized (lastObsUtm) {
            lastObsUtm.set(sensorIndex, adjUtm);
        }
        LatLon adjLatLon =
                UTMCoord.locationFromUTMCoord(
                adjUtm.getZone(),
                adjUtm.getHemisphere(),
                adjUtm.getEasting(),
                adjUtm.getNorthing(),
                null);

        // Only visualize the first measurement in this location
        //  Maybe take most interesting measurement from the data taken at this location instead?
        Observation obs = new Observation(sd.type.toString(), sd.data[0], new double[]{adjUtm.getEasting(), adjUtm.getNorthing()}, adjUtm.getZone(), adjUtm.getHemisphere().equalsIgnoreCase("N"));
        // Check if sensor measurement is outside of current heatmap bounds
        if (sd.data[0] < sensorDataMinMax[0]) {
            sensorDataMinMax[0] = sd.data[0];
            rangeChanged = true;
        }
        if (sd.data[0] > sensorDataMinMax[1]) {
            sensorDataMinMax[1] = sd.data[0];
            rangeChanged = true;
        }
        // Add observation
        synchronized (sensorObservations) {
            sensorObservations.add(obs);
        }
        // Compute heatmap color from current heatmap bounds
        Color dataColor = dataToColor(sd.data[0], sensorDataMinMax[0], sensorDataMinMax[1]);
        Material material = new Material(dataColor);
        // Create high altitude sphere
        BasicMarkerAttributes markerAtt = new BasicMarkerAttributes();
        markerAtt.setShapeType(BasicMarkerShape.SPHERE);
        markerAtt.setMinMarkerSize(SPHERE_SIZE);
        markerAtt.setMaterial(material);
        markerAtt.setOpacity(SPHERE_OPACITY);
        Position adjPos = new Position(adjLatLon, 0);
        BasicMarker marker = new BasicMarker(adjPos, markerAtt);
        synchronized (sensorHighAltMarkers) {
            sensorHighAltMarkers.add(marker);
        }
        // Create low altitude square
        SurfaceQuad rect = new SurfaceQuad(adjLatLon, DIST_THRESH, DIST_THRESH);
        ShapeAttributes rectAtt = new BasicShapeAttributes();
        rectAtt.setInteriorMaterial(material);
        rectAtt.setInteriorOpacity(RECT_OPACITY);
        rectAtt.setOutlineMaterial(material);
        rectAtt.setOutlineOpacity(RECT_OPACITY);
        rectAtt.setOutlineWidth(0);
        rect.setAttributes(rectAtt);
        synchronized (sensorLowAltRenderables) {
            sensorLowAltRenderables.add(rect);
        }

        boolean recompute = false;
        if (rangeChanged && (sensorLowAltRenderables == activeLowAltRenderables || sensorHighAltMarkers == activeHighAltMarkers)) {
            // If a observation was outside of the current heatmap min/max bounds and is from the sensor being visualized, check if the heatmap needs updating
            double[] activeDataMinMaxClone;
            synchronized (activeDataMinMax) {
                activeDataMinMaxClone = activeDataMinMax.clone();
            }
            if (checkHeatmap(activeDataMinMaxClone)) {
                // In separate thread, recompute heatmap and update marker and renderable layer
                recompute = true;
                recomputeHeatmap();
            }
        }
        if (!recompute && (sensorLowAltRenderables == activeLowAltRenderables || sensorHighAltMarkers == activeHighAltMarkers)) {
            // Heatmap was not updated, switch back from cloned version of list to original list with the received observation added
            lowAltRenderableLayer.setRenderables(activeLowAltRenderables);
            highAltMarkerLayer.setMarkers(activeHighAltMarkers);
            wwGlP.redrawNow();
        }
    }

    // Heatmap color computation
    // http://stackoverflow.com/questions/2374959/algorithm-to-convert-any-positive-integer-to-an-rgb-value
    public Color dataToColor(double value, double min, double max) {

        double wavelength = 0.0, factor = 0.0, red = 0.0, green = 0.0, blue = 0.0, gamma = 1.0;
        double adjMin = min - 5;
        double adjMax = max - 5;

        if (value < adjMin) {
            wavelength = 0.0;
        } else if (value <= adjMax) {
            wavelength = (value - adjMin) / (adjMax - adjMin) * (750.0f - 350.0f) + 350.0f;
        } else {
            wavelength = 0.0;
        }

        if (wavelength == 0.0f) {
            red = 0.0;
            green = 0.0;
            blue = 0.0;
        } else if (wavelength < 440.0f) {
            red = -(wavelength - 440.0f) / (440.0f - 350.0f);
            green = 0.0;
            blue = 1.0;
        } else if (wavelength < 490.0f) {
            red = 0.0;
            green = (wavelength - 440.0f) / (490.0f - 440.0f);
            blue = 1.0;
        } else if (wavelength < 510.0f) {
            red = 0.0;
            green = 1.0;
            blue = -(wavelength - 510.0f) / (510.0f - 490.0f);
        } else if (wavelength < 580.0f) {
            red = (wavelength - 510.0f) / (580.0f - 510.0f);
            green = 1.0;
            blue = 0.0;
        } else if (wavelength < 645) {
            red = 1.0;
            green = -(wavelength - 645.0f) / (645.0f - 580.0f);
            blue = 0.0;
        } else {
            red = 1.0;
            green = 0.0;
            blue = 0.0;
        }

        if (wavelength == 0.0f) {
            factor = 0.0;
        } else if (wavelength < 420) {
            factor = 0.3f + 0.7f * (wavelength - 350.0f) / (420.0f - 350.0f);
        } else if (wavelength < 680) {
            factor = 1.0;
        } else {
            factor = 0.3f + 0.7f * (750.0f - wavelength) / (750.0f - 680.0f);
        }

        Color color = new Color(
                (int) Math.floor(255.0 * Math.pow(red * factor, gamma)),
                (int) Math.floor(255.0 * Math.pow(green * factor, gamma)),
                (int) Math.floor(255.0 * Math.pow(blue * factor, gamma)));
        return color;
    }

    class SensorChoiceLister implements ActionListener {

        public void actionPerformed(ActionEvent e) {
            JComboBox cb = (JComboBox) e.getSource();
            String sensorChoice = (String) cb.getSelectedItem();
            int index = sensorNameToIndex.get(sensorChoice);
            activeLowAltRenderables = lowAltRenderables.get(index);
            activeHighAltMarkers = highAltMarkers.get(index);
            activeDataMinMax = dataMinMax.get(index);
            activeObservations = observations.get(index);

            boolean recompute = false;
            if (activeDataMinMax != null) {
                // May have new values that changed the data range since last time we visualized this sensor type, check if heatmap needs recomputing
                double[] activeDataMinMaxClone;
                synchronized (activeDataMinMax) {
                    activeDataMinMaxClone = activeDataMinMax.clone();
                }
                if (checkHeatmap(activeDataMinMaxClone)) {
                    recompute = true;
                    recomputeHeatmap();
                } else {
                    lowAltRenderableLayer.setRenderables(activeLowAltRenderables);
                    highAltMarkerLayer.setMarkers(activeHighAltMarkers);
                    wwGlP.redrawNow();
                }
            } else {
                lowAltRenderableLayer.setRenderables(null);
                highAltMarkerLayer.setMarkers(null);
                wwGlP.redraw();
            }
        }
    }
}
