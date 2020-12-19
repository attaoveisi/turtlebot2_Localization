; Auto-generated. Do not edit!


(cl:in-package stdr_msgs-msg)


;//! \htmlinclude ThermalSensorMeasurementMsg.msg.html

(cl:defclass <ThermalSensorMeasurementMsg> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (thermal_source_degrees
    :reader thermal_source_degrees
    :initarg :thermal_source_degrees
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass ThermalSensorMeasurementMsg (<ThermalSensorMeasurementMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ThermalSensorMeasurementMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ThermalSensorMeasurementMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name stdr_msgs-msg:<ThermalSensorMeasurementMsg> is deprecated: use stdr_msgs-msg:ThermalSensorMeasurementMsg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ThermalSensorMeasurementMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stdr_msgs-msg:header-val is deprecated.  Use stdr_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'thermal_source_degrees-val :lambda-list '(m))
(cl:defmethod thermal_source_degrees-val ((m <ThermalSensorMeasurementMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stdr_msgs-msg:thermal_source_degrees-val is deprecated.  Use stdr_msgs-msg:thermal_source_degrees instead.")
  (thermal_source_degrees m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ThermalSensorMeasurementMsg>) ostream)
  "Serializes a message object of type '<ThermalSensorMeasurementMsg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'thermal_source_degrees))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'thermal_source_degrees))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ThermalSensorMeasurementMsg>) istream)
  "Deserializes a message object of type '<ThermalSensorMeasurementMsg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'thermal_source_degrees) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'thermal_source_degrees)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ThermalSensorMeasurementMsg>)))
  "Returns string type for a message object of type '<ThermalSensorMeasurementMsg>"
  "stdr_msgs/ThermalSensorMeasurementMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ThermalSensorMeasurementMsg)))
  "Returns string type for a message object of type 'ThermalSensorMeasurementMsg"
  "stdr_msgs/ThermalSensorMeasurementMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ThermalSensorMeasurementMsg>)))
  "Returns md5sum for a message object of type '<ThermalSensorMeasurementMsg>"
  "e4b704fefcd6eb849f164e31d5084251")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ThermalSensorMeasurementMsg)))
  "Returns md5sum for a message object of type 'ThermalSensorMeasurementMsg"
  "e4b704fefcd6eb849f164e31d5084251")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ThermalSensorMeasurementMsg>)))
  "Returns full string definition for message of type '<ThermalSensorMeasurementMsg>"
  (cl:format cl:nil "# Sensor measurement description~%~%Header header~%~%float32[] thermal_source_degrees~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ThermalSensorMeasurementMsg)))
  "Returns full string definition for message of type 'ThermalSensorMeasurementMsg"
  (cl:format cl:nil "# Sensor measurement description~%~%Header header~%~%float32[] thermal_source_degrees~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ThermalSensorMeasurementMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'thermal_source_degrees) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ThermalSensorMeasurementMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'ThermalSensorMeasurementMsg
    (cl:cons ':header (header msg))
    (cl:cons ':thermal_source_degrees (thermal_source_degrees msg))
))
