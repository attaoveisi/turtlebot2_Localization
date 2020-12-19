; Auto-generated. Do not edit!


(cl:in-package stdr_msgs-msg)


;//! \htmlinclude RfidTag.msg.html

(cl:defclass <RfidTag> (roslisp-msg-protocol:ros-message)
  ((tag_id
    :reader tag_id
    :initarg :tag_id
    :type cl:string
    :initform "")
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform "")
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D)))
)

(cl:defclass RfidTag (<RfidTag>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RfidTag>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RfidTag)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name stdr_msgs-msg:<RfidTag> is deprecated: use stdr_msgs-msg:RfidTag instead.")))

(cl:ensure-generic-function 'tag_id-val :lambda-list '(m))
(cl:defmethod tag_id-val ((m <RfidTag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stdr_msgs-msg:tag_id-val is deprecated.  Use stdr_msgs-msg:tag_id instead.")
  (tag_id m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <RfidTag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stdr_msgs-msg:message-val is deprecated.  Use stdr_msgs-msg:message instead.")
  (message m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <RfidTag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stdr_msgs-msg:pose-val is deprecated.  Use stdr_msgs-msg:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RfidTag>) ostream)
  "Serializes a message object of type '<RfidTag>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'tag_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'tag_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RfidTag>) istream)
  "Deserializes a message object of type '<RfidTag>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tag_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'tag_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RfidTag>)))
  "Returns string type for a message object of type '<RfidTag>"
  "stdr_msgs/RfidTag")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RfidTag)))
  "Returns string type for a message object of type 'RfidTag"
  "stdr_msgs/RfidTag")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RfidTag>)))
  "Returns md5sum for a message object of type '<RfidTag>"
  "e37433c890cfe140ccbef22419fae16c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RfidTag)))
  "Returns md5sum for a message object of type 'RfidTag"
  "e37433c890cfe140ccbef22419fae16c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RfidTag>)))
  "Returns full string definition for message of type '<RfidTag>"
  (cl:format cl:nil "# Rfid tag description~%~%string tag_id~%string message~%geometry_msgs/Pose2D pose # sensor pose, relative to the map origin~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RfidTag)))
  "Returns full string definition for message of type 'RfidTag"
  (cl:format cl:nil "# Rfid tag description~%~%string tag_id~%string message~%geometry_msgs/Pose2D pose # sensor pose, relative to the map origin~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RfidTag>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'tag_id))
     4 (cl:length (cl:slot-value msg 'message))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RfidTag>))
  "Converts a ROS message object to a list"
  (cl:list 'RfidTag
    (cl:cons ':tag_id (tag_id msg))
    (cl:cons ':message (message msg))
    (cl:cons ':pose (pose msg))
))
