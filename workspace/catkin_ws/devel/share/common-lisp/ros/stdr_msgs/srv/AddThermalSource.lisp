; Auto-generated. Do not edit!


(cl:in-package stdr_msgs-srv)


;//! \htmlinclude AddThermalSource-request.msg.html

(cl:defclass <AddThermalSource-request> (roslisp-msg-protocol:ros-message)
  ((newSource
    :reader newSource
    :initarg :newSource
    :type stdr_msgs-msg:ThermalSource
    :initform (cl:make-instance 'stdr_msgs-msg:ThermalSource)))
)

(cl:defclass AddThermalSource-request (<AddThermalSource-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddThermalSource-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddThermalSource-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name stdr_msgs-srv:<AddThermalSource-request> is deprecated: use stdr_msgs-srv:AddThermalSource-request instead.")))

(cl:ensure-generic-function 'newSource-val :lambda-list '(m))
(cl:defmethod newSource-val ((m <AddThermalSource-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stdr_msgs-srv:newSource-val is deprecated.  Use stdr_msgs-srv:newSource instead.")
  (newSource m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddThermalSource-request>) ostream)
  "Serializes a message object of type '<AddThermalSource-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'newSource) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddThermalSource-request>) istream)
  "Deserializes a message object of type '<AddThermalSource-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'newSource) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddThermalSource-request>)))
  "Returns string type for a service object of type '<AddThermalSource-request>"
  "stdr_msgs/AddThermalSourceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddThermalSource-request)))
  "Returns string type for a service object of type 'AddThermalSource-request"
  "stdr_msgs/AddThermalSourceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddThermalSource-request>)))
  "Returns md5sum for a message object of type '<AddThermalSource-request>"
  "9fd17d9c0c1371182c625b3bfbbcf75f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddThermalSource-request)))
  "Returns md5sum for a message object of type 'AddThermalSource-request"
  "9fd17d9c0c1371182c625b3bfbbcf75f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddThermalSource-request>)))
  "Returns full string definition for message of type '<AddThermalSource-request>"
  (cl:format cl:nil "stdr_msgs/ThermalSource newSource~%~%================================================================================~%MSG: stdr_msgs/ThermalSource~%# Source description~%~%string id~%float32 degrees~%~%# sensor pose, relative to the map origin~%geometry_msgs/Pose2D pose ~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddThermalSource-request)))
  "Returns full string definition for message of type 'AddThermalSource-request"
  (cl:format cl:nil "stdr_msgs/ThermalSource newSource~%~%================================================================================~%MSG: stdr_msgs/ThermalSource~%# Source description~%~%string id~%float32 degrees~%~%# sensor pose, relative to the map origin~%geometry_msgs/Pose2D pose ~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddThermalSource-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'newSource))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddThermalSource-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AddThermalSource-request
    (cl:cons ':newSource (newSource msg))
))
;//! \htmlinclude AddThermalSource-response.msg.html

(cl:defclass <AddThermalSource-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass AddThermalSource-response (<AddThermalSource-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddThermalSource-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddThermalSource-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name stdr_msgs-srv:<AddThermalSource-response> is deprecated: use stdr_msgs-srv:AddThermalSource-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <AddThermalSource-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stdr_msgs-srv:success-val is deprecated.  Use stdr_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <AddThermalSource-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stdr_msgs-srv:message-val is deprecated.  Use stdr_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddThermalSource-response>) ostream)
  "Serializes a message object of type '<AddThermalSource-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddThermalSource-response>) istream)
  "Deserializes a message object of type '<AddThermalSource-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddThermalSource-response>)))
  "Returns string type for a service object of type '<AddThermalSource-response>"
  "stdr_msgs/AddThermalSourceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddThermalSource-response)))
  "Returns string type for a service object of type 'AddThermalSource-response"
  "stdr_msgs/AddThermalSourceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddThermalSource-response>)))
  "Returns md5sum for a message object of type '<AddThermalSource-response>"
  "9fd17d9c0c1371182c625b3bfbbcf75f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddThermalSource-response)))
  "Returns md5sum for a message object of type 'AddThermalSource-response"
  "9fd17d9c0c1371182c625b3bfbbcf75f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddThermalSource-response>)))
  "Returns full string definition for message of type '<AddThermalSource-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddThermalSource-response)))
  "Returns full string definition for message of type 'AddThermalSource-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddThermalSource-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddThermalSource-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AddThermalSource-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AddThermalSource)))
  'AddThermalSource-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AddThermalSource)))
  'AddThermalSource-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddThermalSource)))
  "Returns string type for a service object of type '<AddThermalSource>"
  "stdr_msgs/AddThermalSource")