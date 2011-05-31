package edu.cmu.ri.airboat.interfaces;

/**
 * This interface defines direct access to the sensors available on the airboat.
 * It can be used by external modules to log and process various environmental
 * data.
 * 
 * @author pkv
 * 
 */
public interface AirboatSensor {

	// Get 3D raw gyro readings
	public double[] getGyro();
        
        public String[] getSensorTypes();
        public String getSensorType(int port);
        public boolean setSensorType(int port, String type);
        public double[] getSensor(int port);
}
