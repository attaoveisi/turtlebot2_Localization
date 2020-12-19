; Auto-generated. Do not edit!


(cl:in-package stdr_msgs-msg)


;//! \htmlinclude RobotIndexedMsg.msg.html

(cl:defclass <RobotIndexedMsg> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (robot
    :reader robot
    :initarg :robot
    :type stdr_msgs-msg:RobotMsg
    :initform (cl:make-instance 'stdr_msgs-msg:RobotMsg)))
)

(cl:defclass RobotIndexedMsg (<RobotIndexedMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotIndexedMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotIndexedMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name stdr_msgs-msg:<RobotIndexedMsg> is deprecated: use stdr_msgs-msg:RobotIndexedMsg instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <RobotIndexedMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stdr_msgs-msg:name-val is deprecated.  Use stdr_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'robot-val :lambda-list '(m))
(cl:defmethod robot-val ((m <RobotIndexedMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stdr_msgs-msg:robot-val is deprecated.  Use stdr_msgs-msg:robot instead.")
  (robot m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotIndexedMsg>) ostream)
  "Serializes a message object of type '<RobotIndexedMsg>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'robot) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotIndexedMsg>) istream)
  "Deserializes a message object of type '<RobotIndexedMsg>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'robot) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotIndexedMsg>)))
  "Returns string type for a message object of type '<RobotIndexedMsg>"
  "stdr_msgs/RobotIndexedMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotIndexedMsg)))
  "Returns string type for a message object of type 'RobotIndexedMsg"
  "stdr_msgs/RobotIndexedMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotIndexedMsg>)))
  "Returns md5sum for a message object of type '<RobotIndexedMsg>"
  "f74cd2b918be4e39c8fb0e1bebbbf480")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotIndexedMsg)))
  "Returns md5sum for a message object of type 'RobotIndexedMsg"
  "f74cd2b918be4e39c8fb0e1bebbbf480")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotIndexedMsg>)))
  "Returns full string definition for message of type '<RobotIndexedMsg>"
  (cl:format cl:nil "string name~%stdr_msgs/RobotMsg robot~%~%================================================================================~%MSG: stdr_msgs/RobotMsg~%geometry_msgs/Pose2D initialPose~%~%stdr_msgs/FootprintMsg footprint~%~%stdr_msgs/LaserSensorMsg[] laserSensors~%stdr_msgs/SonarSensorMsg[] sonarSensors~%stdr_msgs/RfidSensorMsg[] rfidSensors~%stdr_msgs/CO2SensorMsg[] co2Sensors~%stdr_msgs/SoundSensorMsg[] soundSensors~%stdr_msgs/ThermalSensorMsg[] thermalSensors~%~%stdr_msgs/KinematicMsg kinematicModel~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: stdr_msgs/FootprintMsg~%geometry_msgs/Point[] points~%float32 radius # for circular footprints~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: stdr_msgs/LaserSensorMsg~%# Laser Sensor description~%float32 maxAngle~%float32 minAngle~%float32 maxRange~%float32 minRange~%int32 numRays~%~%stdr_msgs/Noise noise~%~%float32 frequency~%~%string frame_id~%geometry_msgs/Pose2D pose # sensor pose, relative to robot center~%~%================================================================================~%MSG: stdr_msgs/Noise~%bool noise~%float32 noiseMean~%float32 noiseStd~%~%================================================================================~%MSG: stdr_msgs/SonarSensorMsg~%# Rfid sensor description~%float32 maxRange~%float32 minRange~%float32 coneAngle~%~%float32 frequency~%stdr_msgs/Noise noise~%~%string frame_id~%geometry_msgs/Pose2D pose # sensor pose, relative to robot center~%~%================================================================================~%MSG: stdr_msgs/RfidSensorMsg~%# Rfid sensor description~%float32 maxRange~%float32 angleSpan~%float32 signalCutoff~%~%float32 frequency~%~%string frame_id~%geometry_msgs/Pose2D pose # sensor pose, relative to robot center~%~%================================================================================~%MSG: stdr_msgs/CO2SensorMsg~%# Sensor description~%~%float32 maxRange~%float32 frequency~%string frame_id~%~%# sensor pose, relative to robot center~%geometry_msgs/Pose2D pose ~%~%================================================================================~%MSG: stdr_msgs/SoundSensorMsg~%# Sensor description~%~%float32 maxRange~%float32 frequency~%float32 angleSpan~%string frame_id~%~%# sensor pose, relative to robot center~%geometry_msgs/Pose2D pose ~%~%================================================================================~%MSG: stdr_msgs/ThermalSensorMsg~%# Sensor description~%~%float32 maxRange~%float32 frequency~%float32 angleSpan~%string frame_id~%~%# sensor pose, relative to robot center~%geometry_msgs/Pose2D pose ~%~%================================================================================~%MSG: stdr_msgs/KinematicMsg~%# Container for the kinematic model parameters. The parameters selected/~%# are quite general. For a more accurate motion model a per-kinematic model~%# approach should be followed.~%# Parameters are in the form a_C_D, where C is affected by D.~%# ux is the linear speed~%# uy is the lateral speed (for omni vehicles)~%# w is the angular speed~%# g is a cofficient that directly affects the angular speed~%# For more information check the MotionController::sampleVelocities function.~%~%string type~%float32 a_ux_ux~%float32 a_ux_uy~%float32 a_ux_w~%float32 a_uy_ux~%float32 a_uy_uy~%float32 a_uy_w~%float32 a_w_ux~%float32 a_w_uy~%float32 a_w_w~%float32 a_g_ux~%float32 a_g_uy~%float32 a_g_w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotIndexedMsg)))
  "Returns full string definition for message of type 'RobotIndexedMsg"
  (cl:format cl:nil "string name~%stdr_msgs/RobotMsg robot~%~%================================================================================~%MSG: stdr_msgs/RobotMsg~%geometry_msgs/Pose2D initialPose~%~%stdr_msgs/FootprintMsg footprint~%~%stdr_msgs/LaserSensorMsg[] laserSensors~%stdr_msgs/SonarSensorMsg[] sonarSensors~%stdr_msgs/RfidSensorMsg[] rfidSensors~%stdr_msgs/CO2SensorMsg[] co2Sensors~%stdr_msgs/SoundSensorMsg[] soundSensors~%stdr_msgs/ThermalSensorMsg[] thermalSensors~%~%stdr_msgs/KinematicMsg kinematicModel~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: stdr_msgs/FootprintMsg~%geometry_msgs/Point[] points~%float32 radius # for circular footprints~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: stdr_msgs/LaserSensorMsg~%# Laser Sensor description~%float32 maxAngle~%float32 minAngle~%float32 maxRange~%float32 minRange~%int32 numRays~%~%stdr_msgs/Noise noise~%~%float32 frequency~%~%string frame_id~%geometry_msgs/Pose2D pose # sensor pose, relative to robot center~%~%================================================================================~%MSG: stdr_msgs/Noise~%bool noise~%float32 noiseMean~%float32 noiseStd~%~%================================================================================~%MSG: stdr_msgs/SonarSensorMsg~%# Rfid sensor description~%float32 maxRange~%float32 minRange~%float32 coneAngle~%~%float32 frequency~%stdr_msgs/Noise noise~%~%string frame_id~%geometry_msgs/Pose2D pose # sensor pose, relative to robot center~%~%================================================================================~%MSG: stdr_msgs/RfidSensorMsg~%# Rfid sensor description~%float32 maxRange~%float32 angleSpan~%float32 signalCutoff~%~%float32 frequency~%~%string frame_id~%geometry_msgs/Pose2D pose # sensor pose, relative to robot center~%~%================================================================================~%MSG: stdr_msgs/CO2SensorMsg~%# Sensor description~%~%float32 maxRange~%float32 frequency~%string frame_id~%~%# sensor pose, relative to robot center~%geometry_msgs/Pose2D pose ~%~%================================================================================~%MSG: stdr_msgs/SoundSensorMsg~%# Sensor description~%~%float32 maxRange~%float32 frequency~%float32 angleSpan~%string frame_id~%~%# sensor pose, relative to robot center~%geometry_msgs/Pose2D pose ~%~%================================================================================~%MSG: stdr_msgs/ThermalSensorMsg~%# Sensor description~%~%float32 maxRange~%float32 frequency~%float32 angleSpan~%string frame_id~%~%# sensor pose, relative to robot center~%geometry_msgs/Pose2D pose ~%~%================================================================================~%MSG: stdr_msgs/KinematicMsg~%# Container for the kinematic model parameters. The parameters selected/~%# are quite general. For a more accurate motion model a per-kinematic model~%# approach should be followed.~%# Parameters are in the form a_C_D, where C is affected by D.~%# ux is the linear speed~%# uy is the lateral speed (for omni vehicles)~%# w is the angular speed~%# g is a cofficient that directly affects the angular speed~%# For more information check the MotionController::sampleVelocities function.~%~%string type~%float32 a_ux_ux~%float32 a_ux_uy~%float32 a_ux_w~%float32 a_uy_ux~%float32 a_uy_uy~%float32 a_uy_w~%float32 a_w_ux~%float32 a_w_uy~%float32 a_w_w~%float32 a_g_ux~%float32 a_g_uy~%float32 a_g_w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotIndexedMsg>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'robot))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotIndexedMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotIndexedMsg
    (cl:cons ':name (name msg))
    (cl:cons ':robot (robot msg))
))
