; Auto-generated. Do not edit!


(cl:in-package stdr_msgs-msg)


;//! \htmlinclude Noise.msg.html

(cl:defclass <Noise> (roslisp-msg-protocol:ros-message)
  ((noise
    :reader noise
    :initarg :noise
    :type cl:boolean
    :initform cl:nil)
   (noiseMean
    :reader noiseMean
    :initarg :noiseMean
    :type cl:float
    :initform 0.0)
   (noiseStd
    :reader noiseStd
    :initarg :noiseStd
    :type cl:float
    :initform 0.0))
)

(cl:defclass Noise (<Noise>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Noise>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Noise)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name stdr_msgs-msg:<Noise> is deprecated: use stdr_msgs-msg:Noise instead.")))

(cl:ensure-generic-function 'noise-val :lambda-list '(m))
(cl:defmethod noise-val ((m <Noise>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stdr_msgs-msg:noise-val is deprecated.  Use stdr_msgs-msg:noise instead.")
  (noise m))

(cl:ensure-generic-function 'noiseMean-val :lambda-list '(m))
(cl:defmethod noiseMean-val ((m <Noise>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stdr_msgs-msg:noiseMean-val is deprecated.  Use stdr_msgs-msg:noiseMean instead.")
  (noiseMean m))

(cl:ensure-generic-function 'noiseStd-val :lambda-list '(m))
(cl:defmethod noiseStd-val ((m <Noise>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stdr_msgs-msg:noiseStd-val is deprecated.  Use stdr_msgs-msg:noiseStd instead.")
  (noiseStd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Noise>) ostream)
  "Serializes a message object of type '<Noise>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'noise) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'noiseMean))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'noiseStd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Noise>) istream)
  "Deserializes a message object of type '<Noise>"
    (cl:setf (cl:slot-value msg 'noise) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'noiseMean) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'noiseStd) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Noise>)))
  "Returns string type for a message object of type '<Noise>"
  "stdr_msgs/Noise")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Noise)))
  "Returns string type for a message object of type 'Noise"
  "stdr_msgs/Noise")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Noise>)))
  "Returns md5sum for a message object of type '<Noise>"
  "a882ac96256e87f019f2655e9d7f0f81")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Noise)))
  "Returns md5sum for a message object of type 'Noise"
  "a882ac96256e87f019f2655e9d7f0f81")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Noise>)))
  "Returns full string definition for message of type '<Noise>"
  (cl:format cl:nil "bool noise~%float32 noiseMean~%float32 noiseStd~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Noise)))
  "Returns full string definition for message of type 'Noise"
  (cl:format cl:nil "bool noise~%float32 noiseMean~%float32 noiseStd~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Noise>))
  (cl:+ 0
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Noise>))
  "Converts a ROS message object to a list"
  (cl:list 'Noise
    (cl:cons ':noise (noise msg))
    (cl:cons ':noiseMean (noiseMean msg))
    (cl:cons ':noiseStd (noiseStd msg))
))
