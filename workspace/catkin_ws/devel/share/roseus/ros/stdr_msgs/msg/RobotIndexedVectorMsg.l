;; Auto-generated. Do not edit!


(when (boundp 'stdr_msgs::RobotIndexedVectorMsg)
  (if (not (find-package "STDR_MSGS"))
    (make-package "STDR_MSGS"))
  (shadow 'RobotIndexedVectorMsg (find-package "STDR_MSGS")))
(unless (find-package "STDR_MSGS::ROBOTINDEXEDVECTORMSG")
  (make-package "STDR_MSGS::ROBOTINDEXEDVECTORMSG"))

(in-package "ROS")
;;//! \htmlinclude RobotIndexedVectorMsg.msg.html


(defclass stdr_msgs::RobotIndexedVectorMsg
  :super ros::object
  :slots (_robots ))

(defmethod stdr_msgs::RobotIndexedVectorMsg
  (:init
   (&key
    ((:robots __robots) (let (r) (dotimes (i 0) (push (instance stdr_msgs::RobotIndexedMsg :init) r)) r))
    )
   (send-super :init)
   (setq _robots __robots)
   self)
  (:robots
   (&rest __robots)
   (if (keywordp (car __robots))
       (send* _robots __robots)
     (progn
       (if __robots (setq _robots (car __robots)))
       _robots)))
  (:serialization-length
   ()
   (+
    ;; stdr_msgs/RobotIndexedMsg[] _robots
    (apply #'+ (send-all _robots :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; stdr_msgs/RobotIndexedMsg[] _robots
     (write-long (length _robots) s)
     (dolist (elem _robots)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; stdr_msgs/RobotIndexedMsg[] _robots
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _robots (let (r) (dotimes (i n) (push (instance stdr_msgs::RobotIndexedMsg :init) r)) r))
     (dolist (elem- _robots)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get stdr_msgs::RobotIndexedVectorMsg :md5sum-) "5ba49d43b5f1ad43f9cbea11348366c5")
(setf (get stdr_msgs::RobotIndexedVectorMsg :datatype-) "stdr_msgs/RobotIndexedVectorMsg")
(setf (get stdr_msgs::RobotIndexedVectorMsg :definition-)
      "stdr_msgs/RobotIndexedMsg[] robots

================================================================================
MSG: stdr_msgs/RobotIndexedMsg
string name
stdr_msgs/RobotMsg robot

================================================================================
MSG: stdr_msgs/RobotMsg
geometry_msgs/Pose2D initialPose

stdr_msgs/FootprintMsg footprint

stdr_msgs/LaserSensorMsg[] laserSensors
stdr_msgs/SonarSensorMsg[] sonarSensors
stdr_msgs/RfidSensorMsg[] rfidSensors
stdr_msgs/CO2SensorMsg[] co2Sensors
stdr_msgs/SoundSensorMsg[] soundSensors
stdr_msgs/ThermalSensorMsg[] thermalSensors

stdr_msgs/KinematicMsg kinematicModel

================================================================================
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta

================================================================================
MSG: stdr_msgs/FootprintMsg
geometry_msgs/Point[] points
float32 radius # for circular footprints

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: stdr_msgs/LaserSensorMsg
# Laser Sensor description
float32 maxAngle
float32 minAngle
float32 maxRange
float32 minRange
int32 numRays

stdr_msgs/Noise noise

float32 frequency

string frame_id
geometry_msgs/Pose2D pose # sensor pose, relative to robot center

================================================================================
MSG: stdr_msgs/Noise
bool noise
float32 noiseMean
float32 noiseStd

================================================================================
MSG: stdr_msgs/SonarSensorMsg
# Rfid sensor description
float32 maxRange
float32 minRange
float32 coneAngle

float32 frequency
stdr_msgs/Noise noise

string frame_id
geometry_msgs/Pose2D pose # sensor pose, relative to robot center

================================================================================
MSG: stdr_msgs/RfidSensorMsg
# Rfid sensor description
float32 maxRange
float32 angleSpan
float32 signalCutoff

float32 frequency

string frame_id
geometry_msgs/Pose2D pose # sensor pose, relative to robot center

================================================================================
MSG: stdr_msgs/CO2SensorMsg
# Sensor description

float32 maxRange
float32 frequency
string frame_id

# sensor pose, relative to robot center
geometry_msgs/Pose2D pose 

================================================================================
MSG: stdr_msgs/SoundSensorMsg
# Sensor description

float32 maxRange
float32 frequency
float32 angleSpan
string frame_id

# sensor pose, relative to robot center
geometry_msgs/Pose2D pose 

================================================================================
MSG: stdr_msgs/ThermalSensorMsg
# Sensor description

float32 maxRange
float32 frequency
float32 angleSpan
string frame_id

# sensor pose, relative to robot center
geometry_msgs/Pose2D pose 

================================================================================
MSG: stdr_msgs/KinematicMsg
# Container for the kinematic model parameters. The parameters selected/
# are quite general. For a more accurate motion model a per-kinematic model
# approach should be followed.
# Parameters are in the form a_C_D, where C is affected by D.
# ux is the linear speed
# uy is the lateral speed (for omni vehicles)
# w is the angular speed
# g is a cofficient that directly affects the angular speed
# For more information check the MotionController::sampleVelocities function.

string type
float32 a_ux_ux
float32 a_ux_uy
float32 a_ux_w
float32 a_uy_ux
float32 a_uy_uy
float32 a_uy_w
float32 a_w_ux
float32 a_w_uy
float32 a_w_w
float32 a_g_ux
float32 a_g_uy
float32 a_g_w

")



(provide :stdr_msgs/RobotIndexedVectorMsg "5ba49d43b5f1ad43f9cbea11348366c5")


