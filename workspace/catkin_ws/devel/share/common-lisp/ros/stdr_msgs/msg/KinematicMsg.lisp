; Auto-generated. Do not edit!


(cl:in-package stdr_msgs-msg)


;//! \htmlinclude KinematicMsg.msg.html

(cl:defclass <KinematicMsg> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:string
    :initform "")
   (a_ux_ux
    :reader a_ux_ux
    :initarg :a_ux_ux
    :type cl:float
    :initform 0.0)
   (a_ux_uy
    :reader a_ux_uy
    :initarg :a_ux_uy
    :type cl:float
    :initform 0.0)
   (a_ux_w
    :reader a_ux_w
    :initarg :a_ux_w
    :type cl:float
    :initform 0.0)
   (a_uy_ux
    :reader a_uy_ux
    :initarg :a_uy_ux
    :type cl:float
    :initform 0.0)
   (a_uy_uy
    :reader a_uy_uy
    :initarg :a_uy_uy
    :type cl:float
    :initform 0.0)
   (a_uy_w
    :reader a_uy_w
    :initarg :a_uy_w
    :type cl:float
    :initform 0.0)
   (a_w_ux
    :reader a_w_ux
    :initarg :a_w_ux
    :type cl:float
    :initform 0.0)
   (a_w_uy
    :reader a_w_uy
    :initarg :a_w_uy
    :type cl:float
    :initform 0.0)
   (a_w_w
    :reader a_w_w
    :initarg :a_w_w
    :type cl:float
    :initform 0.0)
   (a_g_ux
    :reader a_g_ux
    :initarg :a_g_ux
    :type cl:float
    :initform 0.0)
   (a_g_uy
    :reader a_g_uy
    :initarg :a_g_uy
    :type cl:float
    :initform 0.0)
   (a_g_w
    :reader a_g_w
    :initarg :a_g_w
    :type cl:float
    :initform 0.0))
)

(cl:defclass KinematicMsg (<KinematicMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <KinematicMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'KinematicMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name stdr_msgs-msg:<KinematicMsg> is deprecated: use stdr_msgs-msg:KinematicMsg instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <KinematicMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stdr_msgs-msg:type-val is deprecated.  Use stdr_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'a_ux_ux-val :lambda-list '(m))
(cl:defmethod a_ux_ux-val ((m <KinematicMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stdr_msgs-msg:a_ux_ux-val is deprecated.  Use stdr_msgs-msg:a_ux_ux instead.")
  (a_ux_ux m))

(cl:ensure-generic-function 'a_ux_uy-val :lambda-list '(m))
(cl:defmethod a_ux_uy-val ((m <KinematicMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stdr_msgs-msg:a_ux_uy-val is deprecated.  Use stdr_msgs-msg:a_ux_uy instead.")
  (a_ux_uy m))

(cl:ensure-generic-function 'a_ux_w-val :lambda-list '(m))
(cl:defmethod a_ux_w-val ((m <KinematicMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stdr_msgs-msg:a_ux_w-val is deprecated.  Use stdr_msgs-msg:a_ux_w instead.")
  (a_ux_w m))

(cl:ensure-generic-function 'a_uy_ux-val :lambda-list '(m))
(cl:defmethod a_uy_ux-val ((m <KinematicMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stdr_msgs-msg:a_uy_ux-val is deprecated.  Use stdr_msgs-msg:a_uy_ux instead.")
  (a_uy_ux m))

(cl:ensure-generic-function 'a_uy_uy-val :lambda-list '(m))
(cl:defmethod a_uy_uy-val ((m <KinematicMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stdr_msgs-msg:a_uy_uy-val is deprecated.  Use stdr_msgs-msg:a_uy_uy instead.")
  (a_uy_uy m))

(cl:ensure-generic-function 'a_uy_w-val :lambda-list '(m))
(cl:defmethod a_uy_w-val ((m <KinematicMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stdr_msgs-msg:a_uy_w-val is deprecated.  Use stdr_msgs-msg:a_uy_w instead.")
  (a_uy_w m))

(cl:ensure-generic-function 'a_w_ux-val :lambda-list '(m))
(cl:defmethod a_w_ux-val ((m <KinematicMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stdr_msgs-msg:a_w_ux-val is deprecated.  Use stdr_msgs-msg:a_w_ux instead.")
  (a_w_ux m))

(cl:ensure-generic-function 'a_w_uy-val :lambda-list '(m))
(cl:defmethod a_w_uy-val ((m <KinematicMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stdr_msgs-msg:a_w_uy-val is deprecated.  Use stdr_msgs-msg:a_w_uy instead.")
  (a_w_uy m))

(cl:ensure-generic-function 'a_w_w-val :lambda-list '(m))
(cl:defmethod a_w_w-val ((m <KinematicMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stdr_msgs-msg:a_w_w-val is deprecated.  Use stdr_msgs-msg:a_w_w instead.")
  (a_w_w m))

(cl:ensure-generic-function 'a_g_ux-val :lambda-list '(m))
(cl:defmethod a_g_ux-val ((m <KinematicMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stdr_msgs-msg:a_g_ux-val is deprecated.  Use stdr_msgs-msg:a_g_ux instead.")
  (a_g_ux m))

(cl:ensure-generic-function 'a_g_uy-val :lambda-list '(m))
(cl:defmethod a_g_uy-val ((m <KinematicMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stdr_msgs-msg:a_g_uy-val is deprecated.  Use stdr_msgs-msg:a_g_uy instead.")
  (a_g_uy m))

(cl:ensure-generic-function 'a_g_w-val :lambda-list '(m))
(cl:defmethod a_g_w-val ((m <KinematicMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stdr_msgs-msg:a_g_w-val is deprecated.  Use stdr_msgs-msg:a_g_w instead.")
  (a_g_w m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <KinematicMsg>) ostream)
  "Serializes a message object of type '<KinematicMsg>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'a_ux_ux))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'a_ux_uy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'a_ux_w))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'a_uy_ux))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'a_uy_uy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'a_uy_w))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'a_w_ux))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'a_w_uy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'a_w_w))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'a_g_ux))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'a_g_uy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'a_g_w))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <KinematicMsg>) istream)
  "Deserializes a message object of type '<KinematicMsg>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a_ux_ux) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a_ux_uy) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a_ux_w) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a_uy_ux) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a_uy_uy) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a_uy_w) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a_w_ux) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a_w_uy) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a_w_w) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a_g_ux) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a_g_uy) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a_g_w) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<KinematicMsg>)))
  "Returns string type for a message object of type '<KinematicMsg>"
  "stdr_msgs/KinematicMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'KinematicMsg)))
  "Returns string type for a message object of type 'KinematicMsg"
  "stdr_msgs/KinematicMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<KinematicMsg>)))
  "Returns md5sum for a message object of type '<KinematicMsg>"
  "75d30a9f55f18dd9353f0abaabfaf261")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'KinematicMsg)))
  "Returns md5sum for a message object of type 'KinematicMsg"
  "75d30a9f55f18dd9353f0abaabfaf261")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<KinematicMsg>)))
  "Returns full string definition for message of type '<KinematicMsg>"
  (cl:format cl:nil "# Container for the kinematic model parameters. The parameters selected/~%# are quite general. For a more accurate motion model a per-kinematic model~%# approach should be followed.~%# Parameters are in the form a_C_D, where C is affected by D.~%# ux is the linear speed~%# uy is the lateral speed (for omni vehicles)~%# w is the angular speed~%# g is a cofficient that directly affects the angular speed~%# For more information check the MotionController::sampleVelocities function.~%~%string type~%float32 a_ux_ux~%float32 a_ux_uy~%float32 a_ux_w~%float32 a_uy_ux~%float32 a_uy_uy~%float32 a_uy_w~%float32 a_w_ux~%float32 a_w_uy~%float32 a_w_w~%float32 a_g_ux~%float32 a_g_uy~%float32 a_g_w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'KinematicMsg)))
  "Returns full string definition for message of type 'KinematicMsg"
  (cl:format cl:nil "# Container for the kinematic model parameters. The parameters selected/~%# are quite general. For a more accurate motion model a per-kinematic model~%# approach should be followed.~%# Parameters are in the form a_C_D, where C is affected by D.~%# ux is the linear speed~%# uy is the lateral speed (for omni vehicles)~%# w is the angular speed~%# g is a cofficient that directly affects the angular speed~%# For more information check the MotionController::sampleVelocities function.~%~%string type~%float32 a_ux_ux~%float32 a_ux_uy~%float32 a_ux_w~%float32 a_uy_ux~%float32 a_uy_uy~%float32 a_uy_w~%float32 a_w_ux~%float32 a_w_uy~%float32 a_w_w~%float32 a_g_ux~%float32 a_g_uy~%float32 a_g_w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <KinematicMsg>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'type))
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <KinematicMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'KinematicMsg
    (cl:cons ':type (type msg))
    (cl:cons ':a_ux_ux (a_ux_ux msg))
    (cl:cons ':a_ux_uy (a_ux_uy msg))
    (cl:cons ':a_ux_w (a_ux_w msg))
    (cl:cons ':a_uy_ux (a_uy_ux msg))
    (cl:cons ':a_uy_uy (a_uy_uy msg))
    (cl:cons ':a_uy_w (a_uy_w msg))
    (cl:cons ':a_w_ux (a_w_ux msg))
    (cl:cons ':a_w_uy (a_w_uy msg))
    (cl:cons ':a_w_w (a_w_w msg))
    (cl:cons ':a_g_ux (a_g_ux msg))
    (cl:cons ':a_g_uy (a_g_uy msg))
    (cl:cons ':a_g_w (a_g_w msg))
))
