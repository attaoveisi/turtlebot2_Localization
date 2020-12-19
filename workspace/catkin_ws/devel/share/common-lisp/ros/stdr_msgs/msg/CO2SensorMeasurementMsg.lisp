; Auto-generated. Do not edit!


(cl:in-package stdr_msgs-msg)


;//! \htmlinclude CO2SensorMeasurementMsg.msg.html

(cl:defclass <CO2SensorMeasurementMsg> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (co2_ppm
    :reader co2_ppm
    :initarg :co2_ppm
    :type cl:float
    :initform 0.0))
)

(cl:defclass CO2SensorMeasurementMsg (<CO2SensorMeasurementMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CO2SensorMeasurementMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CO2SensorMeasurementMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name stdr_msgs-msg:<CO2SensorMeasurementMsg> is deprecated: use stdr_msgs-msg:CO2SensorMeasurementMsg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CO2SensorMeasurementMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stdr_msgs-msg:header-val is deprecated.  Use stdr_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'co2_ppm-val :lambda-list '(m))
(cl:defmethod co2_ppm-val ((m <CO2SensorMeasurementMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stdr_msgs-msg:co2_ppm-val is deprecated.  Use stdr_msgs-msg:co2_ppm instead.")
  (co2_ppm m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CO2SensorMeasurementMsg>) ostream)
  "Serializes a message object of type '<CO2SensorMeasurementMsg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'co2_ppm))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CO2SensorMeasurementMsg>) istream)
  "Deserializes a message object of type '<CO2SensorMeasurementMsg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'co2_ppm) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CO2SensorMeasurementMsg>)))
  "Returns string type for a message object of type '<CO2SensorMeasurementMsg>"
  "stdr_msgs/CO2SensorMeasurementMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CO2SensorMeasurementMsg)))
  "Returns string type for a message object of type 'CO2SensorMeasurementMsg"
  "stdr_msgs/CO2SensorMeasurementMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CO2SensorMeasurementMsg>)))
  "Returns md5sum for a message object of type '<CO2SensorMeasurementMsg>"
  "ea3141a4e89d798f2735cb324ffcd870")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CO2SensorMeasurementMsg)))
  "Returns md5sum for a message object of type 'CO2SensorMeasurementMsg"
  "ea3141a4e89d798f2735cb324ffcd870")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CO2SensorMeasurementMsg>)))
  "Returns full string definition for message of type '<CO2SensorMeasurementMsg>"
  (cl:format cl:nil "# Sensor measurement description~%# All vectors must have the same size~%~%Header header~%~%float32 co2_ppm~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CO2SensorMeasurementMsg)))
  "Returns full string definition for message of type 'CO2SensorMeasurementMsg"
  (cl:format cl:nil "# Sensor measurement description~%# All vectors must have the same size~%~%Header header~%~%float32 co2_ppm~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CO2SensorMeasurementMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CO2SensorMeasurementMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'CO2SensorMeasurementMsg
    (cl:cons ':header (header msg))
    (cl:cons ':co2_ppm (co2_ppm msg))
))
