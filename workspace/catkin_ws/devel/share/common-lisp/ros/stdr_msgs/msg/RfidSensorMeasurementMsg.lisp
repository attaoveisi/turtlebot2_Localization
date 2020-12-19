; Auto-generated. Do not edit!


(cl:in-package stdr_msgs-msg)


;//! \htmlinclude RfidSensorMeasurementMsg.msg.html

(cl:defclass <RfidSensorMeasurementMsg> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (rfid_tags_ids
    :reader rfid_tags_ids
    :initarg :rfid_tags_ids
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (rfid_tags_msgs
    :reader rfid_tags_msgs
    :initarg :rfid_tags_msgs
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (rfid_tags_dbs
    :reader rfid_tags_dbs
    :initarg :rfid_tags_dbs
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass RfidSensorMeasurementMsg (<RfidSensorMeasurementMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RfidSensorMeasurementMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RfidSensorMeasurementMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name stdr_msgs-msg:<RfidSensorMeasurementMsg> is deprecated: use stdr_msgs-msg:RfidSensorMeasurementMsg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RfidSensorMeasurementMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stdr_msgs-msg:header-val is deprecated.  Use stdr_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'rfid_tags_ids-val :lambda-list '(m))
(cl:defmethod rfid_tags_ids-val ((m <RfidSensorMeasurementMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stdr_msgs-msg:rfid_tags_ids-val is deprecated.  Use stdr_msgs-msg:rfid_tags_ids instead.")
  (rfid_tags_ids m))

(cl:ensure-generic-function 'rfid_tags_msgs-val :lambda-list '(m))
(cl:defmethod rfid_tags_msgs-val ((m <RfidSensorMeasurementMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stdr_msgs-msg:rfid_tags_msgs-val is deprecated.  Use stdr_msgs-msg:rfid_tags_msgs instead.")
  (rfid_tags_msgs m))

(cl:ensure-generic-function 'rfid_tags_dbs-val :lambda-list '(m))
(cl:defmethod rfid_tags_dbs-val ((m <RfidSensorMeasurementMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stdr_msgs-msg:rfid_tags_dbs-val is deprecated.  Use stdr_msgs-msg:rfid_tags_dbs instead.")
  (rfid_tags_dbs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RfidSensorMeasurementMsg>) ostream)
  "Serializes a message object of type '<RfidSensorMeasurementMsg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'rfid_tags_ids))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'rfid_tags_ids))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'rfid_tags_msgs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'rfid_tags_msgs))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'rfid_tags_dbs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'rfid_tags_dbs))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RfidSensorMeasurementMsg>) istream)
  "Deserializes a message object of type '<RfidSensorMeasurementMsg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'rfid_tags_ids) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'rfid_tags_ids)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'rfid_tags_msgs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'rfid_tags_msgs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'rfid_tags_dbs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'rfid_tags_dbs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RfidSensorMeasurementMsg>)))
  "Returns string type for a message object of type '<RfidSensorMeasurementMsg>"
  "stdr_msgs/RfidSensorMeasurementMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RfidSensorMeasurementMsg)))
  "Returns string type for a message object of type 'RfidSensorMeasurementMsg"
  "stdr_msgs/RfidSensorMeasurementMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RfidSensorMeasurementMsg>)))
  "Returns md5sum for a message object of type '<RfidSensorMeasurementMsg>"
  "274b41808759cfa6e05b69149e9ea1ed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RfidSensorMeasurementMsg)))
  "Returns md5sum for a message object of type 'RfidSensorMeasurementMsg"
  "274b41808759cfa6e05b69149e9ea1ed")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RfidSensorMeasurementMsg>)))
  "Returns full string definition for message of type '<RfidSensorMeasurementMsg>"
  (cl:format cl:nil "# Rfid sensor measurement description - all vectors must have the same size~%Header header~%~%string[] rfid_tags_ids~%string[] rfid_tags_msgs~%float32[] rfid_tags_dbs~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RfidSensorMeasurementMsg)))
  "Returns full string definition for message of type 'RfidSensorMeasurementMsg"
  (cl:format cl:nil "# Rfid sensor measurement description - all vectors must have the same size~%Header header~%~%string[] rfid_tags_ids~%string[] rfid_tags_msgs~%float32[] rfid_tags_dbs~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RfidSensorMeasurementMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'rfid_tags_ids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'rfid_tags_msgs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'rfid_tags_dbs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RfidSensorMeasurementMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'RfidSensorMeasurementMsg
    (cl:cons ':header (header msg))
    (cl:cons ':rfid_tags_ids (rfid_tags_ids msg))
    (cl:cons ':rfid_tags_msgs (rfid_tags_msgs msg))
    (cl:cons ':rfid_tags_dbs (rfid_tags_dbs msg))
))
