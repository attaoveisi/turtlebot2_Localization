; Auto-generated. Do not edit!


(cl:in-package stdr_msgs-msg)


;//! \htmlinclude LaserSensorMsg.msg.html

(cl:defclass <LaserSensorMsg> (roslisp-msg-protocol:ros-message)
  ((maxAngle
    :reader maxAngle
    :initarg :maxAngle
    :type cl:float
    :initform 0.0)
   (minAngle
    :reader minAngle
    :initarg :minAngle
    :type cl:float
    :initform 0.0)
   (maxRange
    :reader maxRange
    :initarg :maxRange
    :type cl:float
    :initform 0.0)
   (minRange
    :reader minRange
    :initarg :minRange
    :type cl:float
    :initform 0.0)
   (numRays
    :reader numRays
    :initarg :numRays
    :type cl:integer
    :initform 0)
   (noise
    :reader noise
    :initarg :noise
    :type stdr_msgs-msg:Noise
    :initform (cl:make-instance 'stdr_msgs-msg:Noise))
   (frequency
    :reader frequency
    :initarg :frequency
    :type cl:float
    :initform 0.0)
   (frame_id
    :reader frame_id
    :initarg :frame_id
    :type cl:string
    :initform "")
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D)))
)

(cl:defclass LaserSensorMsg (<LaserSensorMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaserSensorMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaserSensorMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name stdr_msgs-msg:<LaserSensorMsg> is deprecated: use stdr_msgs-msg:LaserSensorMsg instead.")))

(cl:ensure-generic-function 'maxAngle-val :lambda-list '(m))
(cl:defmethod maxAngle-val ((m <LaserSensorMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stdr_msgs-msg:maxAngle-val is deprecated.  Use stdr_msgs-msg:maxAngle instead.")
  (maxAngle m))

(cl:ensure-generic-function 'minAngle-val :lambda-list '(m))
(cl:defmethod minAngle-val ((m <LaserSensorMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stdr_msgs-msg:minAngle-val is deprecated.  Use stdr_msgs-msg:minAngle instead.")
  (minAngle m))

(cl:ensure-generic-function 'maxRange-val :lambda-list '(m))
(cl:defmethod maxRange-val ((m <LaserSensorMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stdr_msgs-msg:maxRange-val is deprecated.  Use stdr_msgs-msg:maxRange instead.")
  (maxRange m))

(cl:ensure-generic-function 'minRange-val :lambda-list '(m))
(cl:defmethod minRange-val ((m <LaserSensorMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stdr_msgs-msg:minRange-val is deprecated.  Use stdr_msgs-msg:minRange instead.")
  (minRange m))

(cl:ensure-generic-function 'numRays-val :lambda-list '(m))
(cl:defmethod numRays-val ((m <LaserSensorMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stdr_msgs-msg:numRays-val is deprecated.  Use stdr_msgs-msg:numRays instead.")
  (numRays m))

(cl:ensure-generic-function 'noise-val :lambda-list '(m))
(cl:defmethod noise-val ((m <LaserSensorMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stdr_msgs-msg:noise-val is deprecated.  Use stdr_msgs-msg:noise instead.")
  (noise m))

(cl:ensure-generic-function 'frequency-val :lambda-list '(m))
(cl:defmethod frequency-val ((m <LaserSensorMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stdr_msgs-msg:frequency-val is deprecated.  Use stdr_msgs-msg:frequency instead.")
  (frequency m))

(cl:ensure-generic-function 'frame_id-val :lambda-list '(m))
(cl:defmethod frame_id-val ((m <LaserSensorMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stdr_msgs-msg:frame_id-val is deprecated.  Use stdr_msgs-msg:frame_id instead.")
  (frame_id m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <LaserSensorMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stdr_msgs-msg:pose-val is deprecated.  Use stdr_msgs-msg:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaserSensorMsg>) ostream)
  "Serializes a message object of type '<LaserSensorMsg>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'maxAngle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'minAngle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'maxRange))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'minRange))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'numRays)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'noise) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'frequency))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'frame_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'frame_id))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaserSensorMsg>) istream)
  "Deserializes a message object of type '<LaserSensorMsg>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'maxAngle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'minAngle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'maxRange) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'minRange) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'numRays) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'noise) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'frequency) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'frame_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'frame_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaserSensorMsg>)))
  "Returns string type for a message object of type '<LaserSensorMsg>"
  "stdr_msgs/LaserSensorMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaserSensorMsg)))
  "Returns string type for a message object of type 'LaserSensorMsg"
  "stdr_msgs/LaserSensorMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaserSensorMsg>)))
  "Returns md5sum for a message object of type '<LaserSensorMsg>"
  "32812e51fee48d19daf80d745cf2ad57")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaserSensorMsg)))
  "Returns md5sum for a message object of type 'LaserSensorMsg"
  "32812e51fee48d19daf80d745cf2ad57")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaserSensorMsg>)))
  "Returns full string definition for message of type '<LaserSensorMsg>"
  (cl:format cl:nil "# Laser Sensor description~%float32 maxAngle~%float32 minAngle~%float32 maxRange~%float32 minRange~%int32 numRays~%~%stdr_msgs/Noise noise~%~%float32 frequency~%~%string frame_id~%geometry_msgs/Pose2D pose # sensor pose, relative to robot center~%~%================================================================================~%MSG: stdr_msgs/Noise~%bool noise~%float32 noiseMean~%float32 noiseStd~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaserSensorMsg)))
  "Returns full string definition for message of type 'LaserSensorMsg"
  (cl:format cl:nil "# Laser Sensor description~%float32 maxAngle~%float32 minAngle~%float32 maxRange~%float32 minRange~%int32 numRays~%~%stdr_msgs/Noise noise~%~%float32 frequency~%~%string frame_id~%geometry_msgs/Pose2D pose # sensor pose, relative to robot center~%~%================================================================================~%MSG: stdr_msgs/Noise~%bool noise~%float32 noiseMean~%float32 noiseStd~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaserSensorMsg>))
  (cl:+ 0
     4
     4
     4
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'noise))
     4
     4 (cl:length (cl:slot-value msg 'frame_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaserSensorMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'LaserSensorMsg
    (cl:cons ':maxAngle (maxAngle msg))
    (cl:cons ':minAngle (minAngle msg))
    (cl:cons ':maxRange (maxRange msg))
    (cl:cons ':minRange (minRange msg))
    (cl:cons ':numRays (numRays msg))
    (cl:cons ':noise (noise msg))
    (cl:cons ':frequency (frequency msg))
    (cl:cons ':frame_id (frame_id msg))
    (cl:cons ':pose (pose msg))
))
