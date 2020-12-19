; Auto-generated. Do not edit!


(cl:in-package stdr_msgs-msg)


;//! \htmlinclude RfidTagVector.msg.html

(cl:defclass <RfidTagVector> (roslisp-msg-protocol:ros-message)
  ((rfid_tags
    :reader rfid_tags
    :initarg :rfid_tags
    :type (cl:vector stdr_msgs-msg:RfidTag)
   :initform (cl:make-array 0 :element-type 'stdr_msgs-msg:RfidTag :initial-element (cl:make-instance 'stdr_msgs-msg:RfidTag))))
)

(cl:defclass RfidTagVector (<RfidTagVector>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RfidTagVector>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RfidTagVector)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name stdr_msgs-msg:<RfidTagVector> is deprecated: use stdr_msgs-msg:RfidTagVector instead.")))

(cl:ensure-generic-function 'rfid_tags-val :lambda-list '(m))
(cl:defmethod rfid_tags-val ((m <RfidTagVector>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stdr_msgs-msg:rfid_tags-val is deprecated.  Use stdr_msgs-msg:rfid_tags instead.")
  (rfid_tags m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RfidTagVector>) ostream)
  "Serializes a message object of type '<RfidTagVector>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'rfid_tags))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'rfid_tags))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RfidTagVector>) istream)
  "Deserializes a message object of type '<RfidTagVector>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'rfid_tags) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'rfid_tags)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'stdr_msgs-msg:RfidTag))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RfidTagVector>)))
  "Returns string type for a message object of type '<RfidTagVector>"
  "stdr_msgs/RfidTagVector")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RfidTagVector)))
  "Returns string type for a message object of type 'RfidTagVector"
  "stdr_msgs/RfidTagVector")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RfidTagVector>)))
  "Returns md5sum for a message object of type '<RfidTagVector>"
  "d1ccd79235f17c9d8c9665681cfa66f7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RfidTagVector)))
  "Returns md5sum for a message object of type 'RfidTagVector"
  "d1ccd79235f17c9d8c9665681cfa66f7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RfidTagVector>)))
  "Returns full string definition for message of type '<RfidTagVector>"
  (cl:format cl:nil "# Rfid tag list~%stdr_msgs/RfidTag[] rfid_tags~%~%================================================================================~%MSG: stdr_msgs/RfidTag~%# Rfid tag description~%~%string tag_id~%string message~%geometry_msgs/Pose2D pose # sensor pose, relative to the map origin~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RfidTagVector)))
  "Returns full string definition for message of type 'RfidTagVector"
  (cl:format cl:nil "# Rfid tag list~%stdr_msgs/RfidTag[] rfid_tags~%~%================================================================================~%MSG: stdr_msgs/RfidTag~%# Rfid tag description~%~%string tag_id~%string message~%geometry_msgs/Pose2D pose # sensor pose, relative to the map origin~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RfidTagVector>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'rfid_tags) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RfidTagVector>))
  "Converts a ROS message object to a list"
  (cl:list 'RfidTagVector
    (cl:cons ':rfid_tags (rfid_tags msg))
))
