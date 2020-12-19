; Auto-generated. Do not edit!


(cl:in-package stdr_msgs-srv)


;//! \htmlinclude DeleteRfidTag-request.msg.html

(cl:defclass <DeleteRfidTag-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass DeleteRfidTag-request (<DeleteRfidTag-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DeleteRfidTag-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DeleteRfidTag-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name stdr_msgs-srv:<DeleteRfidTag-request> is deprecated: use stdr_msgs-srv:DeleteRfidTag-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <DeleteRfidTag-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stdr_msgs-srv:name-val is deprecated.  Use stdr_msgs-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DeleteRfidTag-request>) ostream)
  "Serializes a message object of type '<DeleteRfidTag-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DeleteRfidTag-request>) istream)
  "Deserializes a message object of type '<DeleteRfidTag-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DeleteRfidTag-request>)))
  "Returns string type for a service object of type '<DeleteRfidTag-request>"
  "stdr_msgs/DeleteRfidTagRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteRfidTag-request)))
  "Returns string type for a service object of type 'DeleteRfidTag-request"
  "stdr_msgs/DeleteRfidTagRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DeleteRfidTag-request>)))
  "Returns md5sum for a message object of type '<DeleteRfidTag-request>"
  "c1f3d28f1b044c871e6eff2e9fc3c667")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DeleteRfidTag-request)))
  "Returns md5sum for a message object of type 'DeleteRfidTag-request"
  "c1f3d28f1b044c871e6eff2e9fc3c667")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DeleteRfidTag-request>)))
  "Returns full string definition for message of type '<DeleteRfidTag-request>"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DeleteRfidTag-request)))
  "Returns full string definition for message of type 'DeleteRfidTag-request"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DeleteRfidTag-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DeleteRfidTag-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DeleteRfidTag-request
    (cl:cons ':name (name msg))
))
;//! \htmlinclude DeleteRfidTag-response.msg.html

(cl:defclass <DeleteRfidTag-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass DeleteRfidTag-response (<DeleteRfidTag-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DeleteRfidTag-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DeleteRfidTag-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name stdr_msgs-srv:<DeleteRfidTag-response> is deprecated: use stdr_msgs-srv:DeleteRfidTag-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DeleteRfidTag-response>) ostream)
  "Serializes a message object of type '<DeleteRfidTag-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DeleteRfidTag-response>) istream)
  "Deserializes a message object of type '<DeleteRfidTag-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DeleteRfidTag-response>)))
  "Returns string type for a service object of type '<DeleteRfidTag-response>"
  "stdr_msgs/DeleteRfidTagResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteRfidTag-response)))
  "Returns string type for a service object of type 'DeleteRfidTag-response"
  "stdr_msgs/DeleteRfidTagResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DeleteRfidTag-response>)))
  "Returns md5sum for a message object of type '<DeleteRfidTag-response>"
  "c1f3d28f1b044c871e6eff2e9fc3c667")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DeleteRfidTag-response)))
  "Returns md5sum for a message object of type 'DeleteRfidTag-response"
  "c1f3d28f1b044c871e6eff2e9fc3c667")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DeleteRfidTag-response>)))
  "Returns full string definition for message of type '<DeleteRfidTag-response>"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DeleteRfidTag-response)))
  "Returns full string definition for message of type 'DeleteRfidTag-response"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DeleteRfidTag-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DeleteRfidTag-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DeleteRfidTag-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DeleteRfidTag)))
  'DeleteRfidTag-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DeleteRfidTag)))
  'DeleteRfidTag-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteRfidTag)))
  "Returns string type for a service object of type '<DeleteRfidTag>"
  "stdr_msgs/DeleteRfidTag")