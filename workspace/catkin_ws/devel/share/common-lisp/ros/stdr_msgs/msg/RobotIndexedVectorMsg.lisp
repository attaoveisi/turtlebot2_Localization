; Auto-generated. Do not edit!


(cl:in-package stdr_msgs-msg)


;//! \htmlinclude RobotIndexedVectorMsg.msg.html

(cl:defclass <RobotIndexedVectorMsg> (roslisp-msg-protocol:ros-message)
  ((robots
    :reader robots
    :initarg :robots
    :type (cl:vector stdr_msgs-msg:RobotIndexedMsg)
   :initform (cl:make-array 0 :element-type 'stdr_msgs-msg:RobotIndexedMsg :initial-element (cl:make-instance 'stdr_msgs-msg:RobotIndexedMsg))))
)

(cl:defclass RobotIndexedVectorMsg (<RobotIndexedVectorMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotIndexedVectorMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotIndexedVectorMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name stdr_msgs-msg:<RobotIndexedVectorMsg> is deprecated: use stdr_msgs-msg:RobotIndexedVectorMsg instead.")))

(cl:ensure-generic-function 'robots-val :lambda-list '(m))
(cl:defmethod robots-val ((m <RobotIndexedVectorMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stdr_msgs-msg:robots-val is deprecated.  Use stdr_msgs-msg:robots instead.")
  (robots m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotIndexedVectorMsg>) ostream)
  "Serializes a message object of type '<RobotIndexedVectorMsg>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'robots))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'robots))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotIndexedVectorMsg>) istream)
  "Deserializes a message object of type '<RobotIndexedVectorMsg>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'robots) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'robots)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'stdr_msgs-msg:RobotIndexedMsg))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotIndexedVectorMsg>)))
  "Returns string type for a message object of type '<RobotIndexedVectorMsg>"
  "stdr_msgs/RobotIndexedVectorMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotIndexedVectorMsg)))
  "Returns string type for a message object of type 'RobotIndexedVectorMsg"
  "stdr_msgs/RobotIndexedVectorMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotIndexedVectorMsg>)))
  "Returns md5sum for a message object of type '<RobotIndexedVectorMsg>"
  "5ba49d43b5f1ad43f9cbea11348366c5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotIndexedVectorMsg)))
  "Returns md5sum for a message object of type 'RobotIndexedVectorMsg"
  "5ba49d43b5f1ad43f9cbea11348366c5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotIndexedVectorMsg>)))
  "Returns full string definition for message of type '<RobotIndexedVectorMsg>"
  (cl:format cl:nil "stdr_msgs/RobotIndexedMsg[] robots~%~%================================================================================~%MSG: stdr_msgs/RobotIndexedMsg~%string name~%stdr_msgs/RobotMsg robot~%~%================================================================================~%MSG: stdr_msgs/RobotMsg~%geometry_msgs/Pose2D initialPose~%~%stdr_msgs/FootprintMsg footprint~%~%stdr_msgs/LaserSensorMsg[] laserSensors~%stdr_msgs/SonarSensorMsg[] sonarSensors~%stdr_msgs/RfidSensorMsg[] rfidSensors~%stdr_msgs/CO2SensorMsg[] co2Sensors~%stdr_msgs/SoundSensorMsg[] soundSensors~%stdr_msgs/ThermalSensorMsg[] thermalSensors~%~%stdr_msgs/KinematicMsg kinematicModel~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: stdr_msgs/FootprintMsg~%geometry_msgs/Point[] points~%float32 radius # for circular footprints~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: stdr_msgs/LaserSensorMsg~%# Laser Sensor description~%float32 maxAngle~%float32 minAngle~%float32 maxRange~%float32 minRange~%int32 numRays~%~%stdr_msgs/Noise noise~%~%float32 frequency~%~%string frame_id~%geometry_msgs/Pose2D pose # sensor pose, relative to robot center~%~%================================================================================~%MSG: stdr_msgs/Noise~%bool noise~%float32 noiseMean~%float32 noiseStd~%~%================================================================================~%MSG: stdr_msgs/SonarSensorMsg~%# Rfid sensor description~%float32 maxRange~%float32 minRange~%float32 coneAngle~%~%float32 frequency~%stdr_msgs/Noise noise~%~%string frame_id~%geometry_msgs/Pose2D pose # sensor pose, relative to robot center~%~%================================================================================~%MSG: stdr_msgs/RfidSensorMsg~%# Rfid sensor description~%float32 maxRange~%float32 angleSpan~%float32 signalCutoff~%~%float32 frequency~%~%string frame_id~%geometry_msgs/Pose2D pose # sensor pose, relative to robot center~%~%================================================================================~%MSG: stdr_msgs/CO2SensorMsg~%# Sensor description~%~%float32 maxRange~%float32 frequency~%string frame_id~%~%# sensor pose, relative to robot center~%geometry_msgs/Pose2D pose ~%~%================================================================================~%MSG: stdr_msgs/SoundSensorMsg~%# Sensor description~%~%float32 maxRange~%float32 frequency~%float32 angleSpan~%string frame_id~%~%# sensor pose, relative to robot center~%geometry_msgs/Pose2D pose ~%~%================================================================================~%MSG: stdr_msgs/ThermalSensorMsg~%# Sensor description~%~%float32 maxRange~%float32 frequency~%float32 angleSpan~%string frame_id~%~%# sensor pose, relative to robot center~%geometry_msgs/Pose2D pose ~%~%================================================================================~%MSG: stdr_msgs/KinematicMsg~%# Container for the kinematic model parameters. The parameters selected/~%# are quite general. For a more accurate motion model a per-kinematic model~%# approach should be followed.~%# Parameters are in the form a_C_D, where C is affected by D.~%# ux is the linear speed~%# uy is the lateral speed (for omni vehicles)~%# w is the angular speed~%# g is a cofficient that directly affects the angular speed~%# For more information check the MotionController::sampleVelocities function.~%~%string type~%float32 a_ux_ux~%float32 a_ux_uy~%float32 a_ux_w~%float32 a_uy_ux~%float32 a_uy_uy~%float32 a_uy_w~%float32 a_w_ux~%float32 a_w_uy~%float32 a_w_w~%float32 a_g_ux~%float32 a_g_uy~%float32 a_g_w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotIndexedVectorMsg)))
  "Returns full string definition for message of type 'RobotIndexedVectorMsg"
  (cl:format cl:nil "stdr_msgs/RobotIndexedMsg[] robots~%~%================================================================================~%MSG: stdr_msgs/RobotIndexedMsg~%string name~%stdr_msgs/RobotMsg robot~%~%================================================================================~%MSG: stdr_msgs/RobotMsg~%geometry_msgs/Pose2D initialPose~%~%stdr_msgs/FootprintMsg footprint~%~%stdr_msgs/LaserSensorMsg[] laserSensors~%stdr_msgs/SonarSensorMsg[] sonarSensors~%stdr_msgs/RfidSensorMsg[] rfidSensors~%stdr_msgs/CO2SensorMsg[] co2Sensors~%stdr_msgs/SoundSensorMsg[] soundSensors~%stdr_msgs/ThermalSensorMsg[] thermalSensors~%~%stdr_msgs/KinematicMsg kinematicModel~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: stdr_msgs/FootprintMsg~%geometry_msgs/Point[] points~%float32 radius # for circular footprints~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: stdr_msgs/LaserSensorMsg~%# Laser Sensor description~%float32 maxAngle~%float32 minAngle~%float32 maxRange~%float32 minRange~%int32 numRays~%~%stdr_msgs/Noise noise~%~%float32 frequency~%~%string frame_id~%geometry_msgs/Pose2D pose # sensor pose, relative to robot center~%~%================================================================================~%MSG: stdr_msgs/Noise~%bool noise~%float32 noiseMean~%float32 noiseStd~%~%================================================================================~%MSG: stdr_msgs/SonarSensorMsg~%# Rfid sensor description~%float32 maxRange~%float32 minRange~%float32 coneAngle~%~%float32 frequency~%stdr_msgs/Noise noise~%~%string frame_id~%geometry_msgs/Pose2D pose # sensor pose, relative to robot center~%~%================================================================================~%MSG: stdr_msgs/RfidSensorMsg~%# Rfid sensor description~%float32 maxRange~%float32 angleSpan~%float32 signalCutoff~%~%float32 frequency~%~%string frame_id~%geometry_msgs/Pose2D pose # sensor pose, relative to robot center~%~%================================================================================~%MSG: stdr_msgs/CO2SensorMsg~%# Sensor description~%~%float32 maxRange~%float32 frequency~%string frame_id~%~%# sensor pose, relative to robot center~%geometry_msgs/Pose2D pose ~%~%================================================================================~%MSG: stdr_msgs/SoundSensorMsg~%# Sensor description~%~%float32 maxRange~%float32 frequency~%float32 angleSpan~%string frame_id~%~%# sensor pose, relative to robot center~%geometry_msgs/Pose2D pose ~%~%================================================================================~%MSG: stdr_msgs/ThermalSensorMsg~%# Sensor description~%~%float32 maxRange~%float32 frequency~%float32 angleSpan~%string frame_id~%~%# sensor pose, relative to robot center~%geometry_msgs/Pose2D pose ~%~%================================================================================~%MSG: stdr_msgs/KinematicMsg~%# Container for the kinematic model parameters. The parameters selected/~%# are quite general. For a more accurate motion model a per-kinematic model~%# approach should be followed.~%# Parameters are in the form a_C_D, where C is affected by D.~%# ux is the linear speed~%# uy is the lateral speed (for omni vehicles)~%# w is the angular speed~%# g is a cofficient that directly affects the angular speed~%# For more information check the MotionController::sampleVelocities function.~%~%string type~%float32 a_ux_ux~%float32 a_ux_uy~%float32 a_ux_w~%float32 a_uy_ux~%float32 a_uy_uy~%float32 a_uy_w~%float32 a_w_ux~%float32 a_w_uy~%float32 a_w_w~%float32 a_g_ux~%float32 a_g_uy~%float32 a_g_w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotIndexedVectorMsg>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'robots) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotIndexedVectorMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotIndexedVectorMsg
    (cl:cons ':robots (robots msg))
))
