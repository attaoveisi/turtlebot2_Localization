; Auto-generated. Do not edit!


(cl:in-package stdr_msgs-msg)


;//! \htmlinclude ThermalSourceVector.msg.html

(cl:defclass <ThermalSourceVector> (roslisp-msg-protocol:ros-message)
  ((thermal_sources
    :reader thermal_sources
    :initarg :thermal_sources
    :type (cl:vector stdr_msgs-msg:ThermalSource)
   :initform (cl:make-array 0 :element-type 'stdr_msgs-msg:ThermalSource :initial-element (cl:make-instance 'stdr_msgs-msg:ThermalSource))))
)

(cl:defclass ThermalSourceVector (<ThermalSourceVector>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ThermalSourceVector>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ThermalSourceVector)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name stdr_msgs-msg:<ThermalSourceVector> is deprecated: use stdr_msgs-msg:ThermalSourceVector instead.")))

(cl:ensure-generic-function 'thermal_sources-val :lambda-list '(m))
(cl:defmethod thermal_sources-val ((m <ThermalSourceVector>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stdr_msgs-msg:thermal_sources-val is deprecated.  Use stdr_msgs-msg:thermal_sources instead.")
  (thermal_sources m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ThermalSourceVector>) ostream)
  "Serializes a message object of type '<ThermalSourceVector>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'thermal_sources))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'thermal_sources))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ThermalSourceVector>) istream)
  "Deserializes a message object of type '<ThermalSourceVector>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'thermal_sources) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'thermal_sources)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'stdr_msgs-msg:ThermalSource))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ThermalSourceVector>)))
  "Returns string type for a message object of type '<ThermalSourceVector>"
  "stdr_msgs/ThermalSourceVector")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ThermalSourceVector)))
  "Returns string type for a message object of type 'ThermalSourceVector"
  "stdr_msgs/ThermalSourceVector")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ThermalSourceVector>)))
  "Returns md5sum for a message object of type '<ThermalSourceVector>"
  "dddbbf1cf2eb1ad9e8f6f398fb8b44ac")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ThermalSourceVector)))
  "Returns md5sum for a message object of type 'ThermalSourceVector"
  "dddbbf1cf2eb1ad9e8f6f398fb8b44ac")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ThermalSourceVector>)))
  "Returns full string definition for message of type '<ThermalSourceVector>"
  (cl:format cl:nil "# Thermal sources list~%stdr_msgs/ThermalSource[] thermal_sources~%~%================================================================================~%MSG: stdr_msgs/ThermalSource~%# Source description~%~%string id~%float32 degrees~%~%# sensor pose, relative to the map origin~%geometry_msgs/Pose2D pose ~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ThermalSourceVector)))
  "Returns full string definition for message of type 'ThermalSourceVector"
  (cl:format cl:nil "# Thermal sources list~%stdr_msgs/ThermalSource[] thermal_sources~%~%================================================================================~%MSG: stdr_msgs/ThermalSource~%# Source description~%~%string id~%float32 degrees~%~%# sensor pose, relative to the map origin~%geometry_msgs/Pose2D pose ~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ThermalSourceVector>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'thermal_sources) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ThermalSourceVector>))
  "Converts a ROS message object to a list"
  (cl:list 'ThermalSourceVector
    (cl:cons ':thermal_sources (thermal_sources msg))
))
