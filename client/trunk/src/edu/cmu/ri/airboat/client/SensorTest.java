/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.cmu.ri.airboat.client;

import edu.cmu.ri.crw.AsyncVehicleServer;
import edu.cmu.ri.crw.SensorListener;
import edu.cmu.ri.crw.SimpleBoatSimulator;
import edu.cmu.ri.crw.VehicleServer;
import edu.cmu.ri.crw.data.SensorData;
import edu.cmu.ri.crw.udp.UdpVehicleServer;
import edu.cmu.ri.crw.udp.UdpVehicleService;
import java.net.InetSocketAddress;
import java.net.SocketAddress;
import java.util.Arrays;

/**
 * Simple test application that enumerates and prints all available 
 * sensor data from a particular vehicle.
 * 
 * @author pkv
 */
public class SensorTest {
    public static void main(String args[]) {
        
        String hostname = (args.length > 0) ? args[0] : "128.237.247.170";
        int port = (args.length > 1) ? Integer.parseInt(args[1]) : 11411;
        
        // Connect to an existing vehicle
        UdpVehicleServer udpServer = new UdpVehicleServer(new InetSocketAddress(hostname, port));
        VehicleServer server = AsyncVehicleServer.Util.toSync(udpServer);
        System.out.println("Opened connection to: " + udpServer.getVehicleService());
        
        int nSensors = server.getNumSensors();
        System.out.println("Number of sensors detected: " + nSensors);
        
        for (int i = 0; i < nSensors; ++i) {
            server.addSensorListener(i, new SensorListener() {
                public void receivedSensor(SensorData sd) {
                    System.out.println("SENSOR[" + sd.channel + "] (" + sd.type + "):" + Arrays.toString(sd.data));
                }
            });
        }
    }
}
