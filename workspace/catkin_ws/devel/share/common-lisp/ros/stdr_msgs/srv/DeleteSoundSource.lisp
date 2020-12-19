; Auto-generated. Do not edit!


(cl:in-package stdr_msgs-srv)


;//! \htmlinclude DeleteSoundSource-request.msg.html

(cl:defclass <DeleteSoundSource-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass DeleteSoundSource-request (<DeleteSoundSource-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DeleteSoundSource-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DeleteSoundSource-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name stdr_msgs-srv:<DeleteSoundSource-request> is deprecated: use stdr_msgs-srv:DeleteSoundSource-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <DeleteSoundSource-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stdr_msgs-srv:name-val is deprecated.  Use stdr_msgs-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DeleteSoundSource-request>) ostream)
  "Serializes a message object of type '<DeleteSoundSource-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DeleteSoundSource-request>) istream)
  "Deserializes a message object of type '<DeleteSoundSource-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DeleteSoundSource-request>)))
  "Returns string type for a service object of type '<DeleteSoundSource-request>"
  "stdr_msgs/DeleteSoundSourceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteSoundSource-request)))
  "Returns string type for a service object of type 'DeleteSoundSource-request"
  "stdr_msgs/DeleteSoundSourceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DeleteSoundSource-request>)))
  "Returns md5sum for a message object of type '<DeleteSoundSource-request>"
  "c1f3d28f1b044c871e6eff2e9fc3c667")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DeleteSoundSource-request)))
  "Returns md5sum for a message object of type 'DeleteSoundSource-request"
  "c1f3d28f1b044c871e6eff2e9fc3c667")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DeleteSoundSource-request>)))
  "Returns full string definition for message of type '<DeleteSoundSource-request>"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DeleteSoundSource-request)))
  "Returns full string definition for message of type 'DeleteSoundSource-request"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DeleteSoundSource-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DeleteSoundSource-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DeleteSoundSource-request
    (cl:cons ':name (name msg))
))
;//! \htmlinclude DeleteSoundSource-response.msg.html

(cl:defclass <DeleteSoundSource-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass DeleteSoundSource-response (<DeleteSoundSource-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DeleteSoundSource-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DeleteSoundSource-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name stdr_msgs-srv:<DeleteSoundSource-response> is deprecated: use stdr_msgs-srv:DeleteSoundSource-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DeleteSoundSource-response>) ostream)
  "Serializes a message object of type '<DeleteSoundSource-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DeleteSoundSource-response>) istream)
  "Deserializes a message object of type '<DeleteSoundSource-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DeleteSoundSource-response>)))
  "Returns string type for a service object of type '<DeleteSoundSource-response>"
  "stdr_msgs/DeleteSoundSourceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteSoundSource-response)))
  "Returns string type for a service object of type 'DeleteSoundSource-response"
  "stdr_msgs/DeleteSoundSourceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DeleteSoundSource-response>)))
  "Returns md5sum for a message object of type '<DeleteSoundSource-response>"
  "c1f3d28f1b044c871e6eff2e9fc3c667")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DeleteSoundSource-response)))
  "Returns md5sum for a message object of type 'DeleteSoundSource-response"
  "c1f3d28f1b044c871e6eff2e9fc3c667")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DeleteSoundSource-response>)))
  "Returns full string definition for message of type '<DeleteSoundSource-response>"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DeleteSoundSource-response)))
  "Returns full string definition for message of type 'DeleteSoundSource-response"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DeleteSoundSource-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DeleteSoundSource-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DeleteSoundSource-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DeleteSoundSource)))
  'DeleteSoundSource-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DeleteSoundSource)))
  'DeleteSoundSource-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteSoundSource)))
  "Returns string type for a service object of type '<DeleteSoundSource>"
  "stdr_msgs/DeleteSoundSource")