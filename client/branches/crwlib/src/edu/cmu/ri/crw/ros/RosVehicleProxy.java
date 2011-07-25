package edu.cmu.ri.crw.ros;

import java.net.InetAddress;
import java.net.URI;
import java.net.UnknownHostException;
import java.util.logging.Logger;

import org.ros.actionlib.client.SimpleActionClientCallbacks;
import org.ros.actionlib.state.SimpleClientGoalState;
import org.ros.exception.RemoteException;
import org.ros.exception.RosException;
import org.ros.exception.ServiceNotFoundException;
import org.ros.message.MessageListener;
import org.ros.message.crwlib_msgs.UtmPose;
import org.ros.message.crwlib_msgs.UtmPoseWithCovarianceStamped;
import org.ros.message.crwlib_msgs.VehicleImageCaptureFeedback;
import org.ros.message.crwlib_msgs.VehicleImageCaptureResult;
import org.ros.message.crwlib_msgs.VehicleNavigationFeedback;
import org.ros.message.crwlib_msgs.VehicleNavigationResult;
import org.ros.message.geometry_msgs.Twist;
import org.ros.message.geometry_msgs.TwistWithCovarianceStamped;
import org.ros.message.sensor_msgs.CompressedImage;
import org.ros.namespace.NameResolver;
import org.ros.node.DefaultNodeFactory;
import org.ros.node.Node;
import org.ros.node.NodeConfiguration;
import org.ros.node.NodeRunner;
import org.ros.node.service.ServiceClient;
import org.ros.node.service.ServiceResponseListener;
import org.ros.node.topic.Publisher;
import org.ros.service.crwlib_msgs.CaptureImage;
import org.ros.service.crwlib_msgs.GetCameraStatus;
import org.ros.service.crwlib_msgs.GetNumSensors;
import org.ros.service.crwlib_msgs.GetPid;
import org.ros.service.crwlib_msgs.GetSensorType;
import org.ros.service.crwlib_msgs.GetState;
import org.ros.service.crwlib_msgs.GetVelocity;
import org.ros.service.crwlib_msgs.GetWaypoint;
import org.ros.service.crwlib_msgs.GetWaypointStatus;
import org.ros.service.crwlib_msgs.IsAutonomous;
import org.ros.service.crwlib_msgs.SetAutonomous;
import org.ros.service.crwlib_msgs.SetPid;
import org.ros.service.crwlib_msgs.SetSensorType;
import org.ros.service.crwlib_msgs.SetState;

import edu.cmu.ri.crw.AbstractVehicleServer;
import edu.cmu.ri.crw.ImagingObserver;
import edu.cmu.ri.crw.WaypointObserver;

/**
 * Takes the node name of an existing RosVehicleServer and connects through ROS,
 * wrapping the functionality of a VehicleServer transparently. Once connected,
 * this object can be used as a vehicle server, but all commands will be
 * forwarded to the underlying ROS node.
 * 
 * @author pkv
 * @author kss
 * 
 */
public class RosVehicleProxy extends AbstractVehicleServer {

	public static final Logger logger = 
		Logger.getLogger(RosVehicleProxy.class.getName());

	public static final String DEFAULT_NODE_NAME = "vehicle_client";

	protected Node _node;
	protected Publisher<UtmPose> _statePublisher;
	protected Publisher<Twist> _velocityPublisher;
	protected RosVehicleNavigation.Client _navClient; 
	protected RosVehicleImaging.Client _imgClient;
	
	protected ServiceClient<SetState.Request, SetState.Response> _setStateClient;
	protected ServiceClient<GetState.Request, GetState.Response> _getStateClient;
	protected ServiceClient<CaptureImage.Request, CaptureImage.Response> _captureImageClient;
	protected ServiceClient<GetCameraStatus.Request, GetCameraStatus.Response> _getCameraStatusClient;    
	protected ServiceClient<SetSensorType.Request, SetSensorType.Response> _setSensorTypeClient;    
	protected ServiceClient<GetSensorType.Request, GetSensorType.Response> _getSensorTypeClient;    
	protected ServiceClient<GetNumSensors.Request, GetNumSensors.Response> _getNumSensorsClient;    
	protected ServiceClient<GetVelocity.Request, GetVelocity.Response> _getVelocityClient;    
	protected ServiceClient<IsAutonomous.Request, IsAutonomous.Response> _isAutonomousClient;    
	protected ServiceClient<SetAutonomous.Request, SetState.Response> _setAutonomousClient;    
	protected ServiceClient<GetWaypoint.Request, GetWaypoint.Response> _getWaypointClient; 
	protected ServiceClient<GetWaypointStatus.Request, GetWaypointStatus.Response> _getWaypointStatusClient;    
	protected ServiceClient<SetPid.Request, SetPid.Response> _setPidClient;    
	protected ServiceClient<GetPid.Request, GetPid.Response> _getPidClient;  
	
	public RosVehicleProxy() {
		this(NodeConfiguration.DEFAULT_MASTER_URI, DEFAULT_NODE_NAME);
	}

	public RosVehicleProxy(String nodeName) {
		this(NodeConfiguration.DEFAULT_MASTER_URI, nodeName);
	}

	public RosVehicleProxy(URI masterUri, String nodeName) {
		
		// Create a node configuration and start a node
		NodeConfiguration config = createNodeConfiguration(nodeName, masterUri);
	    _node = new DefaultNodeFactory().newNode(nodeName, config);		
		
	    // Start up action clients to run navigation and imaging
	    NodeRunner runner = NodeRunner.newDefault();
	    
	    
	    // Create an action server for vehicle navigation
		NodeConfiguration navConfig = createNodeConfiguration(nodeName, masterUri);
		NameResolver navResolver = NameResolver.create("/nav");
		navConfig.setParentResolver(navResolver);
		
		try {
			_navClient = new RosVehicleNavigation.Spec()
					.buildSimpleActionClient(nodeName + "/nav");
			runner.run(_navClient, navConfig);
		} catch (RosException ex) {
			logger.severe("Unable to start navigation action client: " + ex);
		}

		// Create an action server for image capturing
		NodeConfiguration imgConfig = createNodeConfiguration(nodeName, masterUri);
		NameResolver imgResolver = NameResolver.create("/img");
		imgConfig.setParentResolver(imgResolver);
		
		try {
			_imgClient = new RosVehicleImaging.Spec()
					.buildSimpleActionClient(nodeName + "/img");
			runner.run(_imgClient, imgConfig);
		} catch (RosException ex) {
			logger.severe("Unable to start image action client: " + ex);
		}

		// Register subscriber for state
		_node.newSubscriber("state", "crwlib_msgs/UtmPoseWithCovarianceStamped", 
				new MessageListener<UtmPoseWithCovarianceStamped>() {

			@Override
			public void onNewMessage(UtmPoseWithCovarianceStamped pose) {
				sendState(pose);
			}
		});
		
		// Register subscriber for imaging
		_node.newSubscriber("image/compressed", "sensor_msgs/CompressedImage", 
				new MessageListener<CompressedImage>() {

			@Override
			public void onNewMessage(CompressedImage image) {
				sendImage(image);
			}
		});
		
		// Register subscriber for velocity
		_node.newSubscriber("velocity", "geometry_msgs/TwistWithCovarianceStamped", 
				new MessageListener<TwistWithCovarianceStamped>() {

			@Override
			public void onNewMessage(TwistWithCovarianceStamped velocity) {
				sendVelocity(velocity);
			}
		});
		
		// Register publisher for one-way setters
		_statePublisher = _node.newPublisher("cmd_state", "crwlib_msgs/UtmPose");
		_velocityPublisher = _node.newPublisher("cmd_vel", "geometry_msgs/Twist");
		
		// Register services for two-way setters and accessor functions
		try {
		    _setStateClient = _node.newServiceClient("/set_state", "crwlib_msgs/SetState");    
		} catch (ServiceNotFoundException ex) {
			logger.warning("Failed to find service for SetState.");
		}
		
		try { 
			_getStateClient = _node.newServiceClient("/get_state", "crwlib_msgs/GetState");
		} catch (ServiceNotFoundException ex) {
			logger.warning("Failed to find service for GetState.");
		}
		
		try {
		    _captureImageClient = _node.newServiceClient("/capture_image", "crwlib_msgs/CaptureImage");
		} catch (ServiceNotFoundException ex) {
			logger.warning("Failed to find service for CaptureImage.");
		}
		
		try {
		    _getCameraStatusClient = _node.newServiceClient("/get_camera_status", "crwlib_msgs/GetCameraStatus");    
		} catch (ServiceNotFoundException ex) {
			logger.warning("Failed to find service for GetCameraStatus.");
		}
		
		try {
		    _setSensorTypeClient = _node.newServiceClient("/set_sensor_type", "crwlib_msgs/SetSensorType");    
		} catch (ServiceNotFoundException ex) {
			logger.warning("Failed to find service for SetSensorType.");
		}
		
		try {
			_getSensorTypeClient = _node.newServiceClient("/get_sensor_type", "crwlib_msgs/GetSensorType");    
		} catch (ServiceNotFoundException ex) {
			logger.warning("Failed to find service for GetSensorType.");
		}
		
		try {
			_getNumSensorsClient = _node.newServiceClient("/get_num_sensors", "crwlib_msgs/GetNumSensors");    
		} catch (ServiceNotFoundException ex) {
			logger.warning("Failed to find service for GetNumSensors.");
		}
		
		try {
			_getVelocityClient = _node.newServiceClient("/get_velocity", "crwlib_msgs/GetVelocity");    
		} catch (ServiceNotFoundException ex) {
			logger.warning("Failed to find service for GetVelocity.");
		}
		
		try {
			_isAutonomousClient = _node.newServiceClient("/is_autonomous", "crwlib_msgs/IsAutonomous");    
		} catch (ServiceNotFoundException ex) {
			logger.warning("Failed to find service for IsAutonomous.");
		}
		
		try {
			_setAutonomousClient = _node.newServiceClient("/set_autonomous", "crwlib_msgs/SetAutonomous");    
		} catch (ServiceNotFoundException ex) {
			logger.warning("Failed to find service for SetAutonomous.");
		}
	    
		try {
			_getWaypointClient = _node.newServiceClient("/get_waypoint", "crwlib_msgs/GetWaypoint"); 
		} catch (ServiceNotFoundException ex) {
			logger.warning("Failed to find service for GetWaypoint.");
		}
		
		try {
			_getWaypointStatusClient = _node.newServiceClient("/get_waypoint_status", "crwlib_msgs/GetWaypointStatus");    
		} catch (ServiceNotFoundException ex) {
			logger.warning("Failed to find service for GetWaypointStatus.");
		}
		
		try {
			_setPidClient = _node.newServiceClient("/set_pid", "crwlib_msgs/SetPid");    
		} catch (ServiceNotFoundException ex) {
			logger.warning("Failed to find service for SetPid.");
		}
	
		try {
			_getPidClient = _node.newServiceClient("/get_pid", "crwlib_msgs/GetPid");  
		} catch (ServiceNotFoundException ex) {
			logger.warning("Failed to find service for GetPid.");
		}
		
		logger.info("Proxy initialized successfully.");
	}
	
	/**
	 * Helper function that creates a public ROS node configuration if a 
	 * non-loopback hostname is available, and a private node configuration
	 * if the hostname cannot be resolved.
	 * 
	 * @param nodeName a ROS node name
	 * @param masterUri the desired ROS master URI 
	 * @return a ROS node configuration that is public when possible
	 */
	protected static NodeConfiguration createNodeConfiguration(String nodeName, URI masterUri) {
		NodeConfiguration config = null;
		try {
			String host = InetAddress.getLocalHost().getCanonicalHostName();
			config = NodeConfiguration.newPublic(host, masterUri);
		} catch (UnknownHostException ex) {
			logger.warning("Failed to get public hostname, using private hostname.");
			config = NodeConfiguration.newPrivate(masterUri);
		}
		return config;
	}
	
	/**
	 * Terminates the ROS processes wrapping a VehicleServer.
	 */
	public void shutdown() {
		_node.shutdown();
		_navClient.shutdown();
		_imgClient.shutdown();
	}

	SimpleActionClientCallbacks<VehicleNavigationFeedback, VehicleNavigationResult> navigationHandler = new SimpleActionClientCallbacks<VehicleNavigationFeedback, VehicleNavigationResult>() {

		@Override
		public void feedbackCallback(VehicleNavigationFeedback feedback) {
			logger.info("Vehicle feedback");
		}

		@Override
		public void doneCallback(SimpleClientGoalState state,
				VehicleNavigationResult result) {
			logger.info("Vehicle finished");
		}

		@Override
		public void activeCallback() {
			logger.info("Vehicle active");
		}
	};
	
	SimpleActionClientCallbacks<VehicleImageCaptureFeedback, VehicleImageCaptureResult> imageCaptureHandler = new SimpleActionClientCallbacks<VehicleImageCaptureFeedback, VehicleImageCaptureResult>() {

		@Override
		public void feedbackCallback(VehicleImageCaptureFeedback feedback) {
			logger.info("Capture feedback");
		}
		
		@Override
		public void doneCallback(SimpleClientGoalState state, VehicleImageCaptureResult result) {
			logger.info("Capture finished");
		}

		@Override
		public void activeCallback() {
			logger.info("Capture active");
		}

	};

	@Override
	public CompressedImage captureImage(int width, int height) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public CameraState getCameraStatus() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int getNumSensors() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public SensorType getSensorType(int channel) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public UtmPoseWithCovarianceStamped getState() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public TwistWithCovarianceStamped getVelocity() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public UtmPose getWaypoint() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public WaypointState getWaypointStatus() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean isAutonomous() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void setAutonomous(boolean auto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void setSensorType(int channel, SensorType type) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void setState(UtmPose state) {
		SetState.Request request = new SetState.Request();
		request.pose = state;
		final Object lockObject = new Object();
		
		_setStateClient.call(request, new ServiceResponseListener<SetState.Response>() {
	    	@Override
	    	public void onSuccess(SetState.Response message) {
	    		synchronized(lockObject) {
	    			lockObject.notify();
	    		}
	    	}

	    	@Override
	    	public void onFailure(RemoteException e) {
	    		logger.warning("Unable to complete setState.");
	    		synchronized(lockObject) {
	    			lockObject.notify();
	    		}
	    	}
	    });
		
		synchronized(lockObject) {
			try { lockObject.wait(); } catch (InterruptedException e1) {}
		}
	}

	@Override
	public void setVelocity(Twist velocity) {
		if (_velocityPublisher.hasSubscribers())
			_velocityPublisher.publish(velocity);
	}

	@Override
	public void startCamera(long numFrames, double interval, int width,
			int height, ImagingObserver obs) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void startWaypoint(UtmPose waypoint, WaypointObserver obs) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void stopCamera() {
		try {
			_imgClient.cancelGoal();
		} catch (RosException e) {
			logger.warning("Unable to cancel imaging.");
		}
	}

	@Override
	public void stopWaypoint() {
		try {
			_navClient.cancelGoal();
		} catch (RosException e) {
			logger.warning("Unable to cancel navigation.");
		}
	}
}
