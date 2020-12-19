; Auto-generated. Do not edit!


(cl:in-package stdr_msgs-srv)


;//! \htmlinclude DeleteCO2Source-request.msg.html

(cl:defclass <DeleteCO2Source-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass DeleteCO2Source-request (<DeleteCO2Source-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DeleteCO2Source-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DeleteCO2Source-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name stdr_msgs-srv:<DeleteCO2Source-request> is deprecated: use stdr_msgs-srv:DeleteCO2Source-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <DeleteCO2Source-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stdr_msgs-srv:name-val is deprecated.  Use stdr_msgs-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DeleteCO2Source-request>) ostream)
  "Serializes a message object of type '<DeleteCO2Source-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DeleteCO2Source-request>) istream)
  "Deserializes a message object of type '<DeleteCO2Source-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DeleteCO2Source-request>)))
  "Returns string type for a service object of type '<DeleteCO2Source-request>"
  "stdr_msgs/DeleteCO2SourceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteCO2Source-request)))
  "Returns string type for a service object of type 'DeleteCO2Source-request"
  "stdr_msgs/DeleteCO2SourceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DeleteCO2Source-request>)))
  "Returns md5sum for a message object of type '<DeleteCO2Source-request>"
  "c1f3d28f1b044c871e6eff2e9fc3c667")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DeleteCO2Source-request)))
  "Returns md5sum for a message object of type 'DeleteCO2Source-request"
  "c1f3d28f1b044c871e6eff2e9fc3c667")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DeleteCO2Source-request>)))
  "Returns full string definition for message of type '<DeleteCO2Source-request>"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DeleteCO2Source-request)))
  "Returns full string definition for message of type 'DeleteCO2Source-request"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DeleteCO2Source-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DeleteCO2Source-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DeleteCO2Source-request
    (cl:cons ':name (name msg))
))
;//! \htmlinclude DeleteCO2Source-response.msg.html

(cl:defclass <DeleteCO2Source-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass DeleteCO2Source-response (<DeleteCO2Source-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DeleteCO2Source-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DeleteCO2Source-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name stdr_msgs-srv:<DeleteCO2Source-response> is deprecated: use stdr_msgs-srv:DeleteCO2Source-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DeleteCO2Source-response>) ostream)
  "Serializes a message object of type '<DeleteCO2Source-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DeleteCO2Source-response>) istream)
  "Deserializes a message object of type '<DeleteCO2Source-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DeleteCO2Source-response>)))
  "Returns string type for a service object of type '<DeleteCO2Source-response>"
  "stdr_msgs/DeleteCO2SourceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteCO2Source-response)))
  "Returns string type for a service object of type 'DeleteCO2Source-response"
  "stdr_msgs/DeleteCO2SourceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DeleteCO2Source-response>)))
  "Returns md5sum for a message object of type '<DeleteCO2Source-response>"
  "c1f3d28f1b044c871e6eff2e9fc3c667")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DeleteCO2Source-response)))
  "Returns md5sum for a message object of type 'DeleteCO2Source-response"
  "c1f3d28f1b044c871e6eff2e9fc3c667")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DeleteCO2Source-response>)))
  "Returns full string definition for message of type '<DeleteCO2Source-response>"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DeleteCO2Source-response)))
  "Returns full string definition for message of type 'DeleteCO2Source-response"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DeleteCO2Source-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DeleteCO2Source-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DeleteCO2Source-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DeleteCO2Source)))
  'DeleteCO2Source-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DeleteCO2Source)))
  'DeleteCO2Source-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteCO2Source)))
  "Returns string type for a service object of type '<DeleteCO2Source>"
  "stdr_msgs/DeleteCO2Source")