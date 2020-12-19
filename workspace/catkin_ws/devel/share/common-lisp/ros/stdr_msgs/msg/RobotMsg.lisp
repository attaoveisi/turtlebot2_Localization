; Auto-generated. Do not edit!


(cl:in-package stdr_msgs-msg)


;//! \htmlinclude RobotMsg.msg.html

(cl:defclass <RobotMsg> (roslisp-msg-protocol:ros-message)
  ((initialPose
    :reader initialPose
    :initarg :initialPose
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D))
   (footprint
    :reader footprint
    :initarg :footprint
    :type stdr_msgs-msg:FootprintMsg
    :initform (cl:make-instance 'stdr_msgs-msg:FootprintMsg))
   (laserSensors
    :reader laserSensors
    :initarg :laserSensors
    :type (cl:vector stdr_msgs-msg:LaserSensorMsg)
   :initform (cl:make-array 0 :element-type 'stdr_msgs-msg:LaserSensorMsg :initial-element (cl:make-instance 'stdr_msgs-msg:LaserSensorMsg)))
   (sonarSensors
    :reader sonarSensors
    :initarg :sonarSensors
    :type (cl:vector stdr_msgs-msg:SonarSensorMsg)
   :initform (cl:make-array 0 :element-type 'stdr_msgs-msg:SonarSensorMsg :initial-element (cl:make-instance 'stdr_msgs-msg:SonarSensorMsg)))
   (rfidSensors
    :reader rfidSensors
    :initarg :rfidSensors
    :type (cl:vector stdr_msgs-msg:RfidSensorMsg)
   :initform (cl:make-array 0 :element-type 'stdr_msgs-msg:RfidSensorMsg :initial-element (cl:make-instance 'stdr_msgs-msg:RfidSensorMsg)))
   (co2Sensors
    :reader co2Sensors
    :initarg :co2Sensors
    :type (cl:vector stdr_msgs-msg:CO2SensorMsg)
   :initform (cl:make-array 0 :element-type 'stdr_msgs-msg:CO2SensorMsg :initial-element (cl:make-instance 'stdr_msgs-msg:CO2SensorMsg)))
   (soundSensors
    :reader soundSensors
    :initarg :soundSensors
    :type (cl:vector stdr_msgs-msg:SoundSensorMsg)
   :initform (cl:make-array 0 :element-type 'stdr_msgs-msg:SoundSensorMsg :initial-element (cl:make-instance 'stdr_msgs-msg:SoundSensorMsg)))
   (thermalSensors
    :reader thermalSensors
    :initarg :thermalSensors
    :type (cl:vector stdr_msgs-msg:ThermalSensorMsg)
   :initform (cl:make-array 0 :element-type 'stdr_msgs-msg:ThermalSensorMsg :initial-element (cl:make-instance 'stdr_msgs-msg:ThermalSensorMsg)))
   (kinematicModel
    :reader kinematicModel
    :initarg :kinematicModel
    :type stdr_msgs-msg:KinematicMsg
    :initform (cl:make-instance 'stdr_msgs-msg:KinematicMsg)))
)

(cl:defclass RobotMsg (<RobotMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name stdr_msgs-msg:<RobotMsg> is deprecated: use stdr_msgs-msg:RobotMsg instead.")))

(cl:ensure-generic-function 'initialPose-val :lambda-list '(m))
(cl:defmethod initialPose-val ((m <RobotMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stdr_msgs-msg:initialPose-val is deprecated.  Use stdr_msgs-msg:initialPose instead.")
  (initialPose m))

(cl:ensure-generic-function 'footprint-val :lambda-list '(m))
(cl:defmethod footprint-val ((m <RobotMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stdr_msgs-msg:footprint-val is deprecated.  Use stdr_msgs-msg:footprint instead.")
  (footprint m))

(cl:ensure-generic-function 'laserSensors-val :lambda-list '(m))
(cl:defmethod laserSensors-val ((m <RobotMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stdr_msgs-msg:laserSensors-val is deprecated.  Use stdr_msgs-msg:laserSensors instead.")
  (laserSensors m))

(cl:ensure-generic-function 'sonarSensors-val :lambda-list '(m))
(cl:defmethod sonarSensors-val ((m <RobotMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stdr_msgs-msg:sonarSensors-val is deprecated.  Use stdr_msgs-msg:sonarSensors instead.")
  (sonarSensors m))

(cl:ensure-generic-function 'rfidSensors-val :lambda-list '(m))
(cl:defmethod rfidSensors-val ((m <RobotMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stdr_msgs-msg:rfidSensors-val is deprecated.  Use stdr_msgs-msg:rfidSensors instead.")
  (rfidSensors m))

(cl:ensure-generic-function 'co2Sensors-val :lambda-list '(m))
(cl:defmethod co2Sensors-val ((m <RobotMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stdr_msgs-msg:co2Sensors-val is deprecated.  Use stdr_msgs-msg:co2Sensors instead.")
  (co2Sensors m))

(cl:ensure-generic-function 'soundSensors-val :lambda-list '(m))
(cl:defmethod soundSensors-val ((m <RobotMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stdr_msgs-msg:soundSensors-val is deprecated.  Use stdr_msgs-msg:soundSensors instead.")
  (soundSensors m))

(cl:ensure-generic-function 'thermalSensors-val :lambda-list '(m))
(cl:defmethod thermalSensors-val ((m <RobotMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stdr_msgs-msg:thermalSensors-val is deprecated.  Use stdr_msgs-msg:thermalSensors instead.")
  (thermalSensors m))

(cl:ensure-generic-function 'kinematicModel-val :lambda-list '(m))
(cl:defmethod kinematicModel-val ((m <RobotMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stdr_msgs-msg:kinematicModel-val is deprecated.  Use stdr_msgs-msg:kinematicModel instead.")
  (kinematicModel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotMsg>) ostream)
  "Serializes a message object of type '<RobotMsg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'initialPose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'footprint) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'laserSensors))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'laserSensors))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'sonarSensors))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'sonarSensors))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'rfidSensors))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'rfidSensors))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'co2Sensors))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'co2Sensors))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'soundSensors))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'soundSensors))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'thermalSensors))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'thermalSensors))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'kinematicModel) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotMsg>) istream)
  "Deserializes a message object of type '<RobotMsg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'initialPose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'footprint) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'laserSensors) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'laserSensors)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'stdr_msgs-msg:LaserSensorMsg))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'sonarSensors) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'sonarSensors)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'stdr_msgs-msg:SonarSensorMsg))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'rfidSensors) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'rfidSensors)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'stdr_msgs-msg:RfidSensorMsg))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'co2Sensors) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'co2Sensors)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'stdr_msgs-msg:CO2SensorMsg))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'soundSensors) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'soundSensors)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'stdr_msgs-msg:SoundSensorMsg))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'thermalSensors) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'thermalSensors)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'stdr_msgs-msg:ThermalSensorMsg))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'kinematicModel) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotMsg>)))
  "Returns string type for a message object of type '<RobotMsg>"
  "stdr_msgs/RobotMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotMsg)))
  "Returns string type for a message object of type 'RobotMsg"
  "stdr_msgs/RobotMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotMsg>)))
  "Returns md5sum for a message object of type '<RobotMsg>"
  "ffa138f7f6a9c979acfb84d2c8e73a39")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotMsg)))
  "Returns md5sum for a message object of type 'RobotMsg"
  "ffa138f7f6a9c979acfb84d2c8e73a39")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotMsg>)))
  "Returns full string definition for message of type '<RobotMsg>"
  (cl:format cl:nil "geometry_msgs/Pose2D initialPose~%~%stdr_msgs/FootprintMsg footprint~%~%stdr_msgs/LaserSensorMsg[] laserSensors~%stdr_msgs/SonarSensorMsg[] sonarSensors~%stdr_msgs/RfidSensorMsg[] rfidSensors~%stdr_msgs/CO2SensorMsg[] co2Sensors~%stdr_msgs/SoundSensorMsg[] soundSensors~%stdr_msgs/ThermalSensorMsg[] thermalSensors~%~%stdr_msgs/KinematicMsg kinematicModel~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: stdr_msgs/FootprintMsg~%geometry_msgs/Point[] points~%float32 radius # for circular footprints~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: stdr_msgs/LaserSensorMsg~%# Laser Sensor description~%float32 maxAngle~%float32 minAngle~%float32 maxRange~%float32 minRange~%int32 numRays~%~%stdr_msgs/Noise noise~%~%float32 frequency~%~%string frame_id~%geometry_msgs/Pose2D pose # sensor pose, relative to robot center~%~%================================================================================~%MSG: stdr_msgs/Noise~%bool noise~%float32 noiseMean~%float32 noiseStd~%~%================================================================================~%MSG: stdr_msgs/SonarSensorMsg~%# Rfid sensor description~%float32 maxRange~%float32 minRange~%float32 coneAngle~%~%float32 frequency~%stdr_msgs/Noise noise~%~%string frame_id~%geometry_msgs/Pose2D pose # sensor pose, relative to robot center~%~%================================================================================~%MSG: stdr_msgs/RfidSensorMsg~%# Rfid sensor description~%float32 maxRange~%float32 angleSpan~%float32 signalCutoff~%~%float32 frequency~%~%string frame_id~%geometry_msgs/Pose2D pose # sensor pose, relative to robot center~%~%================================================================================~%MSG: stdr_msgs/CO2SensorMsg~%# Sensor description~%~%float32 maxRange~%float32 frequency~%string frame_id~%~%# sensor pose, relative to robot center~%geometry_msgs/Pose2D pose ~%~%================================================================================~%MSG: stdr_msgs/SoundSensorMsg~%# Sensor description~%~%float32 maxRange~%float32 frequency~%float32 angleSpan~%string frame_id~%~%# sensor pose, relative to robot center~%geometry_msgs/Pose2D pose ~%~%================================================================================~%MSG: stdr_msgs/ThermalSensorMsg~%# Sensor description~%~%float32 maxRange~%float32 frequency~%float32 angleSpan~%string frame_id~%~%# sensor pose, relative to robot center~%geometry_msgs/Pose2D pose ~%~%================================================================================~%MSG: stdr_msgs/KinematicMsg~%# Container for the kinematic model parameters. The parameters selected/~%# are quite general. For a more accurate motion model a per-kinematic model~%# approach should be followed.~%# Parameters are in the form a_C_D, where C is affected by D.~%# ux is the linear speed~%# uy is the lateral speed (for omni vehicles)~%# w is the angular speed~%# g is a cofficient that directly affects the angular speed~%# For more information check the MotionController::sampleVelocities function.~%~%string type~%float32 a_ux_ux~%float32 a_ux_uy~%float32 a_ux_w~%float32 a_uy_ux~%float32 a_uy_uy~%float32 a_uy_w~%float32 a_w_ux~%float32 a_w_uy~%float32 a_w_w~%float32 a_g_ux~%float32 a_g_uy~%float32 a_g_w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotMsg)))
  "Returns full string definition for message of type 'RobotMsg"
  (cl:format cl:nil "geometry_msgs/Pose2D initialPose~%~%stdr_msgs/FootprintMsg footprint~%~%stdr_msgs/LaserSensorMsg[] laserSensors~%stdr_msgs/SonarSensorMsg[] sonarSensors~%stdr_msgs/RfidSensorMsg[] rfidSensors~%stdr_msgs/CO2SensorMsg[] co2Sensors~%stdr_msgs/SoundSensorMsg[] soundSensors~%stdr_msgs/ThermalSensorMsg[] thermalSensors~%~%stdr_msgs/KinematicMsg kinematicModel~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: stdr_msgs/FootprintMsg~%geometry_msgs/Point[] points~%float32 radius # for circular footprints~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: stdr_msgs/LaserSensorMsg~%# Laser Sensor description~%float32 maxAngle~%float32 minAngle~%float32 maxRange~%float32 minRange~%int32 numRays~%~%stdr_msgs/Noise noise~%~%float32 frequency~%~%string frame_id~%geometry_msgs/Pose2D pose # sensor pose, relative to robot center~%~%================================================================================~%MSG: stdr_msgs/Noise~%bool noise~%float32 noiseMean~%float32 noiseStd~%~%================================================================================~%MSG: stdr_msgs/SonarSensorMsg~%# Rfid sensor description~%float32 maxRange~%float32 minRange~%float32 coneAngle~%~%float32 frequency~%stdr_msgs/Noise noise~%~%string frame_id~%geometry_msgs/Pose2D pose # sensor pose, relative to robot center~%~%================================================================================~%MSG: stdr_msgs/RfidSensorMsg~%# Rfid sensor description~%float32 maxRange~%float32 angleSpan~%float32 signalCutoff~%~%float32 frequency~%~%string frame_id~%geometry_msgs/Pose2D pose # sensor pose, relative to robot center~%~%================================================================================~%MSG: stdr_msgs/CO2SensorMsg~%# Sensor description~%~%float32 maxRange~%float32 frequency~%string frame_id~%~%# sensor pose, relative to robot center~%geometry_msgs/Pose2D pose ~%~%================================================================================~%MSG: stdr_msgs/SoundSensorMsg~%# Sensor description~%~%float32 maxRange~%float32 frequency~%float32 angleSpan~%string frame_id~%~%# sensor pose, relative to robot center~%geometry_msgs/Pose2D pose ~%~%================================================================================~%MSG: stdr_msgs/ThermalSensorMsg~%# Sensor description~%~%float32 maxRange~%float32 frequency~%float32 angleSpan~%string frame_id~%~%# sensor pose, relative to robot center~%geometry_msgs/Pose2D pose ~%~%================================================================================~%MSG: stdr_msgs/KinematicMsg~%# Container for the kinematic model parameters. The parameters selected/~%# are quite general. For a more accurate motion model a per-kinematic model~%# approach should be followed.~%# Parameters are in the form a_C_D, where C is affected by D.~%# ux is the linear speed~%# uy is the lateral speed (for omni vehicles)~%# w is the angular speed~%# g is a cofficient that directly affects the angular speed~%# For more information check the MotionController::sampleVelocities function.~%~%string type~%float32 a_ux_ux~%float32 a_ux_uy~%float32 a_ux_w~%float32 a_uy_ux~%float32 a_uy_uy~%float32 a_uy_w~%float32 a_w_ux~%float32 a_w_uy~%float32 a_w_w~%float32 a_g_ux~%float32 a_g_uy~%float32 a_g_w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'initialPose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'footprint))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'laserSensors) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'sonarSensors) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'rfidSensors) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'co2Sensors) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'soundSensors) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'thermalSensors) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'kinematicModel))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotMsg
    (cl:cons ':initialPose (initialPose msg))
    (cl:cons ':footprint (footprint msg))
    (cl:cons ':laserSensors (laserSensors msg))
    (cl:cons ':sonarSensors (sonarSensors msg))
    (cl:cons ':rfidSensors (rfidSensors msg))
    (cl:cons ':co2Sensors (co2Sensors msg))
    (cl:cons ':soundSensors (soundSensors msg))
    (cl:cons ':thermalSensors (thermalSensors msg))
    (cl:cons ':kinematicModel (kinematicModel msg))
))
