; Auto-generated. Do not edit!


(cl:in-package stdr_msgs-msg)


;//! \htmlinclude SoundSourceVector.msg.html

(cl:defclass <SoundSourceVector> (roslisp-msg-protocol:ros-message)
  ((sound_sources
    :reader sound_sources
    :initarg :sound_sources
    :type (cl:vector stdr_msgs-msg:SoundSource)
   :initform (cl:make-array 0 :element-type 'stdr_msgs-msg:SoundSource :initial-element (cl:make-instance 'stdr_msgs-msg:SoundSource))))
)

(cl:defclass SoundSourceVector (<SoundSourceVector>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SoundSourceVector>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SoundSourceVector)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name stdr_msgs-msg:<SoundSourceVector> is deprecated: use stdr_msgs-msg:SoundSourceVector instead.")))

(cl:ensure-generic-function 'sound_sources-val :lambda-list '(m))
(cl:defmethod sound_sources-val ((m <SoundSourceVector>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stdr_msgs-msg:sound_sources-val is deprecated.  Use stdr_msgs-msg:sound_sources instead.")
  (sound_sources m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SoundSourceVector>) ostream)
  "Serializes a message object of type '<SoundSourceVector>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'sound_sources))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'sound_sources))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SoundSourceVector>) istream)
  "Deserializes a message object of type '<SoundSourceVector>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'sound_sources) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'sound_sources)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'stdr_msgs-msg:SoundSource))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SoundSourceVector>)))
  "Returns string type for a message object of type '<SoundSourceVector>"
  "stdr_msgs/SoundSourceVector")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SoundSourceVector)))
  "Returns string type for a message object of type 'SoundSourceVector"
  "stdr_msgs/SoundSourceVector")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SoundSourceVector>)))
  "Returns md5sum for a message object of type '<SoundSourceVector>"
  "b0990ed9e7eeb58876a06c8b484951b4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SoundSourceVector)))
  "Returns md5sum for a message object of type 'SoundSourceVector"
  "b0990ed9e7eeb58876a06c8b484951b4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SoundSourceVector>)))
  "Returns full string definition for message of type '<SoundSourceVector>"
  (cl:format cl:nil "# Sound sources list~%stdr_msgs/SoundSource[] sound_sources~%~%================================================================================~%MSG: stdr_msgs/SoundSource~%# Source description~%~%string id~%float32 dbs~%~%# sensor pose, relative to the map origin~%geometry_msgs/Pose2D pose ~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SoundSourceVector)))
  "Returns full string definition for message of type 'SoundSourceVector"
  (cl:format cl:nil "# Sound sources list~%stdr_msgs/SoundSource[] sound_sources~%~%================================================================================~%MSG: stdr_msgs/SoundSource~%# Source description~%~%string id~%float32 dbs~%~%# sensor pose, relative to the map origin~%geometry_msgs/Pose2D pose ~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SoundSourceVector>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'sound_sources) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SoundSourceVector>))
  "Converts a ROS message object to a list"
  (cl:list 'SoundSourceVector
    (cl:cons ':sound_sources (sound_sources msg))
))
