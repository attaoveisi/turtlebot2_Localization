; Auto-generated. Do not edit!


(cl:in-package stdr_msgs-srv)


;//! \htmlinclude DeleteThermalSource-request.msg.html

(cl:defclass <DeleteThermalSource-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass DeleteThermalSource-request (<DeleteThermalSource-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DeleteThermalSource-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DeleteThermalSource-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name stdr_msgs-srv:<DeleteThermalSource-request> is deprecated: use stdr_msgs-srv:DeleteThermalSource-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <DeleteThermalSource-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stdr_msgs-srv:name-val is deprecated.  Use stdr_msgs-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DeleteThermalSource-request>) ostream)
  "Serializes a message object of type '<DeleteThermalSource-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DeleteThermalSource-request>) istream)
  "Deserializes a message object of type '<DeleteThermalSource-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DeleteThermalSource-request>)))
  "Returns string type for a service object of type '<DeleteThermalSource-request>"
  "stdr_msgs/DeleteThermalSourceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteThermalSource-request)))
  "Returns string type for a service object of type 'DeleteThermalSource-request"
  "stdr_msgs/DeleteThermalSourceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DeleteThermalSource-request>)))
  "Returns md5sum for a message object of type '<DeleteThermalSource-request>"
  "c1f3d28f1b044c871e6eff2e9fc3c667")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DeleteThermalSource-request)))
  "Returns md5sum for a message object of type 'DeleteThermalSource-request"
  "c1f3d28f1b044c871e6eff2e9fc3c667")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DeleteThermalSource-request>)))
  "Returns full string definition for message of type '<DeleteThermalSource-request>"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DeleteThermalSource-request)))
  "Returns full string definition for message of type 'DeleteThermalSource-request"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DeleteThermalSource-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DeleteThermalSource-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DeleteThermalSource-request
    (cl:cons ':name (name msg))
))
;//! \htmlinclude DeleteThermalSource-response.msg.html

(cl:defclass <DeleteThermalSource-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass DeleteThermalSource-response (<DeleteThermalSource-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DeleteThermalSource-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DeleteThermalSource-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name stdr_msgs-srv:<DeleteThermalSource-response> is deprecated: use stdr_msgs-srv:DeleteThermalSource-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DeleteThermalSource-response>) ostream)
  "Serializes a message object of type '<DeleteThermalSource-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DeleteThermalSource-response>) istream)
  "Deserializes a message object of type '<DeleteThermalSource-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DeleteThermalSource-response>)))
  "Returns string type for a service object of type '<DeleteThermalSource-response>"
  "stdr_msgs/DeleteThermalSourceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteThermalSource-response)))
  "Returns string type for a service object of type 'DeleteThermalSource-response"
  "stdr_msgs/DeleteThermalSourceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DeleteThermalSource-response>)))
  "Returns md5sum for a message object of type '<DeleteThermalSource-response>"
  "c1f3d28f1b044c871e6eff2e9fc3c667")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DeleteThermalSource-response)))
  "Returns md5sum for a message object of type 'DeleteThermalSource-response"
  "c1f3d28f1b044c871e6eff2e9fc3c667")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DeleteThermalSource-response>)))
  "Returns full string definition for message of type '<DeleteThermalSource-response>"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DeleteThermalSource-response)))
  "Returns full string definition for message of type 'DeleteThermalSource-response"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DeleteThermalSource-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DeleteThermalSource-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DeleteThermalSource-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DeleteThermalSource)))
  'DeleteThermalSource-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DeleteThermalSource)))
  'DeleteThermalSource-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteThermalSource)))
  "Returns string type for a service object of type '<DeleteThermalSource>"
  "stdr_msgs/DeleteThermalSource")