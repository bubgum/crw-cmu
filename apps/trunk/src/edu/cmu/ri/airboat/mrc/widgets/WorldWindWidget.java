/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.cmu.ri.airboat.mrc.widgets;

import edu.cmu.ri.airboat.general.widgets.WidgetInterface;
import gov.nasa.worldwind.BasicModel;
import gov.nasa.worldwind.Configuration;
import gov.nasa.worldwind.avlist.AVKey;
import gov.nasa.worldwind.awt.WorldWindowGLCanvas;
import gov.nasa.worldwind.layers.MarkerLayer;
import java.awt.BorderLayout;
import java.awt.Dimension;
import javax.swing.JPanel;

/**
 *
 * @author pscerri
 */
public class WorldWindWidget extends JPanel implements WidgetInterface {

    WorldWindowGLCanvas wwd = null;

    public WorldWindWidget() {
        // @todo Make initial position configurable            
        Configuration.setValue(AVKey.INITIAL_LATITUDE, 40.44515205369163);
        Configuration.setValue(AVKey.INITIAL_LONGITUDE, -80.01877404355538);
        Configuration.setValue(AVKey.INITIAL_ALTITUDE, 30000.0);

        // Set this when offline
        Configuration.setValue(AVKey.OFFLINE_MODE, "false");
        
        wwd = new WorldWindowGLCanvas();
        wwd.setPreferredSize(new java.awt.Dimension(1000, 800));
        wwd.setModel(new BasicModel());
        
        this.setLayout(new BorderLayout());
        this.add(wwd, BorderLayout.CENTER);
        
        this.setMinimumSize(new Dimension(0, 0));
        this.setPreferredSize(new java.awt.Dimension(1000, 800));
    }

    public JPanel getPanel() {
        return this;
    }

    public JPanel getControl() {
        return null;
    }
   
    public void addMarkerLayer(WWMarkerLayer l) {
        wwd.getModel().getLayers().add(l.getMarkerLayer());
    }
    
    public interface WWMarkerLayer {
        public MarkerLayer getMarkerLayer();
    }
    
}
