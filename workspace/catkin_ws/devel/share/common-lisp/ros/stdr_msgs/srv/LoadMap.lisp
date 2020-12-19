; Auto-generated. Do not edit!


(cl:in-package stdr_msgs-srv)


;//! \htmlinclude LoadMap-request.msg.html

(cl:defclass <LoadMap-request> (roslisp-msg-protocol:ros-message)
  ((mapFile
    :reader mapFile
    :initarg :mapFile
    :type cl:string
    :initform ""))
)

(cl:defclass LoadMap-request (<LoadMap-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LoadMap-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LoadMap-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name stdr_msgs-srv:<LoadMap-request> is deprecated: use stdr_msgs-srv:LoadMap-request instead.")))

(cl:ensure-generic-function 'mapFile-val :lambda-list '(m))
(cl:defmethod mapFile-val ((m <LoadMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stdr_msgs-srv:mapFile-val is deprecated.  Use stdr_msgs-srv:mapFile instead.")
  (mapFile m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LoadMap-request>) ostream)
  "Serializes a message object of type '<LoadMap-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mapFile))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mapFile))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LoadMap-request>) istream)
  "Deserializes a message object of type '<LoadMap-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mapFile) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mapFile) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LoadMap-request>)))
  "Returns string type for a service object of type '<LoadMap-request>"
  "stdr_msgs/LoadMapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoadMap-request)))
  "Returns string type for a service object of type 'LoadMap-request"
  "stdr_msgs/LoadMapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LoadMap-request>)))
  "Returns md5sum for a message object of type '<LoadMap-request>"
  "656f50b5e78328d62ac1c4a5c19fefd5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LoadMap-request)))
  "Returns md5sum for a message object of type 'LoadMap-request"
  "656f50b5e78328d62ac1c4a5c19fefd5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LoadMap-request>)))
  "Returns full string definition for message of type '<LoadMap-request>"
  (cl:format cl:nil "string mapFile~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LoadMap-request)))
  "Returns full string definition for message of type 'LoadMap-request"
  (cl:format cl:nil "string mapFile~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LoadMap-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'mapFile))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LoadMap-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LoadMap-request
    (cl:cons ':mapFile (mapFile msg))
))
;//! \htmlinclude LoadMap-response.msg.html

(cl:defclass <LoadMap-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass LoadMap-response (<LoadMap-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LoadMap-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LoadMap-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name stdr_msgs-srv:<LoadMap-response> is deprecated: use stdr_msgs-srv:LoadMap-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LoadMap-response>) ostream)
  "Serializes a message object of type '<LoadMap-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LoadMap-response>) istream)
  "Deserializes a message object of type '<LoadMap-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LoadMap-response>)))
  "Returns string type for a service object of type '<LoadMap-response>"
  "stdr_msgs/LoadMapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoadMap-response)))
  "Returns string type for a service object of type 'LoadMap-response"
  "stdr_msgs/LoadMapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LoadMap-response>)))
  "Returns md5sum for a message object of type '<LoadMap-response>"
  "656f50b5e78328d62ac1c4a5c19fefd5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LoadMap-response)))
  "Returns md5sum for a message object of type 'LoadMap-response"
  "656f50b5e78328d62ac1c4a5c19fefd5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LoadMap-response>)))
  "Returns full string definition for message of type '<LoadMap-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LoadMap-response)))
  "Returns full string definition for message of type 'LoadMap-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LoadMap-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LoadMap-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LoadMap-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LoadMap)))
  'LoadMap-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LoadMap)))
  'LoadMap-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoadMap)))
  "Returns string type for a service object of type '<LoadMap>"
  "stdr_msgs/LoadMap")