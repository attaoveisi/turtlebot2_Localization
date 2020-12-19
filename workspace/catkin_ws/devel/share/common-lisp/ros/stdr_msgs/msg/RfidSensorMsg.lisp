; Auto-generated. Do not edit!


(cl:in-package stdr_msgs-msg)


;//! \htmlinclude RfidSensorMsg.msg.html

(cl:defclass <RfidSensorMsg> (roslisp-msg-protocol:ros-message)
  ((maxRange
    :reader maxRange
    :initarg :maxRange
    :type cl:float
    :initform 0.0)
   (angleSpan
    :reader angleSpan
    :initarg :angleSpan
    :type cl:float
    :initform 0.0)
   (signalCutoff
    :reader signalCutoff
    :initarg :signalCutoff
    :type cl:float
    :initform 0.0)
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

(cl:defclass RfidSensorMsg (<RfidSensorMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RfidSensorMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RfidSensorMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name stdr_msgs-msg:<RfidSensorMsg> is deprecated: use stdr_msgs-msg:RfidSensorMsg instead.")))

(cl:ensure-generic-function 'maxRange-val :lambda-list '(m))
(cl:defmethod maxRange-val ((m <RfidSensorMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stdr_msgs-msg:maxRange-val is deprecated.  Use stdr_msgs-msg:maxRange instead.")
  (maxRange m))

(cl:ensure-generic-function 'angleSpan-val :lambda-list '(m))
(cl:defmethod angleSpan-val ((m <RfidSensorMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stdr_msgs-msg:angleSpan-val is deprecated.  Use stdr_msgs-msg:angleSpan instead.")
  (angleSpan m))

(cl:ensure-generic-function 'signalCutoff-val :lambda-list '(m))
(cl:defmethod signalCutoff-val ((m <RfidSensorMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stdr_msgs-msg:signalCutoff-val is deprecated.  Use stdr_msgs-msg:signalCutoff instead.")
  (signalCutoff m))

(cl:ensure-generic-function 'frequency-val :lambda-list '(m))
(cl:defmethod frequency-val ((m <RfidSensorMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stdr_msgs-msg:frequency-val is deprecated.  Use stdr_msgs-msg:frequency instead.")
  (frequency m))

(cl:ensure-generic-function 'frame_id-val :lambda-list '(m))
(cl:defmethod frame_id-val ((m <RfidSensorMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stdr_msgs-msg:frame_id-val is deprecated.  Use stdr_msgs-msg:frame_id instead.")
  (frame_id m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <RfidSensorMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stdr_msgs-msg:pose-val is deprecated.  Use stdr_msgs-msg:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RfidSensorMsg>) ostream)
  "Serializes a message object of type '<RfidSensorMsg>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'maxRange))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angleSpan))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'signalCutoff))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RfidSensorMsg>) istream)
  "Deserializes a message object of type '<RfidSensorMsg>"
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
    (cl:setf (cl:slot-value msg 'angleSpan) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'signalCutoff) (roslisp-utils:decode-single-float-bits bits)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RfidSensorMsg>)))
  "Returns string type for a message object of type '<RfidSensorMsg>"
  "stdr_msgs/RfidSensorMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RfidSensorMsg)))
  "Returns string type for a message object of type 'RfidSensorMsg"
  "stdr_msgs/RfidSensorMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RfidSensorMsg>)))
  "Returns md5sum for a message object of type '<RfidSensorMsg>"
  "a210bd881966e92d87b9dcab3e305128")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RfidSensorMsg)))
  "Returns md5sum for a message object of type 'RfidSensorMsg"
  "a210bd881966e92d87b9dcab3e305128")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RfidSensorMsg>)))
  "Returns full string definition for message of type '<RfidSensorMsg>"
  (cl:format cl:nil "# Rfid sensor description~%float32 maxRange~%float32 angleSpan~%float32 signalCutoff~%~%float32 frequency~%~%string frame_id~%geometry_msgs/Pose2D pose # sensor pose, relative to robot center~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RfidSensorMsg)))
  "Returns full string definition for message of type 'RfidSensorMsg"
  (cl:format cl:nil "# Rfid sensor description~%float32 maxRange~%float32 angleSpan~%float32 signalCutoff~%~%float32 frequency~%~%string frame_id~%geometry_msgs/Pose2D pose # sensor pose, relative to robot center~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RfidSensorMsg>))
  (cl:+ 0
     4
     4
     4
     4
     4 (cl:length (cl:slot-value msg 'frame_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RfidSensorMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'RfidSensorMsg
    (cl:cons ':maxRange (maxRange msg))
    (cl:cons ':angleSpan (angleSpan msg))
    (cl:cons ':signalCutoff (signalCutoff msg))
    (cl:cons ':frequency (frequency msg))
    (cl:cons ':frame_id (frame_id msg))
    (cl:cons ':pose (pose msg))
))
