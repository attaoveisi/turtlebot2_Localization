; Auto-generated. Do not edit!


(cl:in-package stdr_msgs-msg)


;//! \htmlinclude SoundSensorMeasurementMsg.msg.html

(cl:defclass <SoundSensorMeasurementMsg> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (sound_dbs
    :reader sound_dbs
    :initarg :sound_dbs
    :type cl:float
    :initform 0.0))
)

(cl:defclass SoundSensorMeasurementMsg (<SoundSensorMeasurementMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SoundSensorMeasurementMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SoundSensorMeasurementMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name stdr_msgs-msg:<SoundSensorMeasurementMsg> is deprecated: use stdr_msgs-msg:SoundSensorMeasurementMsg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SoundSensorMeasurementMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stdr_msgs-msg:header-val is deprecated.  Use stdr_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'sound_dbs-val :lambda-list '(m))
(cl:defmethod sound_dbs-val ((m <SoundSensorMeasurementMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stdr_msgs-msg:sound_dbs-val is deprecated.  Use stdr_msgs-msg:sound_dbs instead.")
  (sound_dbs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SoundSensorMeasurementMsg>) ostream)
  "Serializes a message object of type '<SoundSensorMeasurementMsg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'sound_dbs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SoundSensorMeasurementMsg>) istream)
  "Deserializes a message object of type '<SoundSensorMeasurementMsg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sound_dbs) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SoundSensorMeasurementMsg>)))
  "Returns string type for a message object of type '<SoundSensorMeasurementMsg>"
  "stdr_msgs/SoundSensorMeasurementMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SoundSensorMeasurementMsg)))
  "Returns string type for a message object of type 'SoundSensorMeasurementMsg"
  "stdr_msgs/SoundSensorMeasurementMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SoundSensorMeasurementMsg>)))
  "Returns md5sum for a message object of type '<SoundSensorMeasurementMsg>"
  "1f73a234937f6d19824ea2a78f157d78")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SoundSensorMeasurementMsg)))
  "Returns md5sum for a message object of type 'SoundSensorMeasurementMsg"
  "1f73a234937f6d19824ea2a78f157d78")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SoundSensorMeasurementMsg>)))
  "Returns full string definition for message of type '<SoundSensorMeasurementMsg>"
  (cl:format cl:nil "# Sensor measurement description~%# All vectors must have the same size~%~%Header header~%~%float32 sound_dbs~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SoundSensorMeasurementMsg)))
  "Returns full string definition for message of type 'SoundSensorMeasurementMsg"
  (cl:format cl:nil "# Sensor measurement description~%# All vectors must have the same size~%~%Header header~%~%float32 sound_dbs~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SoundSensorMeasurementMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SoundSensorMeasurementMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'SoundSensorMeasurementMsg
    (cl:cons ':header (header msg))
    (cl:cons ':sound_dbs (sound_dbs msg))
))
