;; Auto-generated. Do not edit!


(when (boundp 'stdr_msgs::KinematicMsg)
  (if (not (find-package "STDR_MSGS"))
    (make-package "STDR_MSGS"))
  (shadow 'KinematicMsg (find-package "STDR_MSGS")))
(unless (find-package "STDR_MSGS::KINEMATICMSG")
  (make-package "STDR_MSGS::KINEMATICMSG"))

(in-package "ROS")
;;//! \htmlinclude KinematicMsg.msg.html


(defclass stdr_msgs::KinematicMsg
  :super ros::object
  :slots (_type _a_ux_ux _a_ux_uy _a_ux_w _a_uy_ux _a_uy_uy _a_uy_w _a_w_ux _a_w_uy _a_w_w _a_g_ux _a_g_uy _a_g_w ))

(defmethod stdr_msgs::KinematicMsg
  (:init
   (&key
    ((:type __type) "")
    ((:a_ux_ux __a_ux_ux) 0.0)
    ((:a_ux_uy __a_ux_uy) 0.0)
    ((:a_ux_w __a_ux_w) 0.0)
    ((:a_uy_ux __a_uy_ux) 0.0)
    ((:a_uy_uy __a_uy_uy) 0.0)
    ((:a_uy_w __a_uy_w) 0.0)
    ((:a_w_ux __a_w_ux) 0.0)
    ((:a_w_uy __a_w_uy) 0.0)
    ((:a_w_w __a_w_w) 0.0)
    ((:a_g_ux __a_g_ux) 0.0)
    ((:a_g_uy __a_g_uy) 0.0)
    ((:a_g_w __a_g_w) 0.0)
    )
   (send-super :init)
   (setq _type (string __type))
   (setq _a_ux_ux (float __a_ux_ux))
   (setq _a_ux_uy (float __a_ux_uy))
   (setq _a_ux_w (float __a_ux_w))
   (setq _a_uy_ux (float __a_uy_ux))
   (setq _a_uy_uy (float __a_uy_uy))
   (setq _a_uy_w (float __a_uy_w))
   (setq _a_w_ux (float __a_w_ux))
   (setq _a_w_uy (float __a_w_uy))
   (setq _a_w_w (float __a_w_w))
   (setq _a_g_ux (float __a_g_ux))
   (setq _a_g_uy (float __a_g_uy))
   (setq _a_g_w (float __a_g_w))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:a_ux_ux
   (&optional __a_ux_ux)
   (if __a_ux_ux (setq _a_ux_ux __a_ux_ux)) _a_ux_ux)
  (:a_ux_uy
   (&optional __a_ux_uy)
   (if __a_ux_uy (setq _a_ux_uy __a_ux_uy)) _a_ux_uy)
  (:a_ux_w
   (&optional __a_ux_w)
   (if __a_ux_w (setq _a_ux_w __a_ux_w)) _a_ux_w)
  (:a_uy_ux
   (&optional __a_uy_ux)
   (if __a_uy_ux (setq _a_uy_ux __a_uy_ux)) _a_uy_ux)
  (:a_uy_uy
   (&optional __a_uy_uy)
   (if __a_uy_uy (setq _a_uy_uy __a_uy_uy)) _a_uy_uy)
  (:a_uy_w
   (&optional __a_uy_w)
   (if __a_uy_w (setq _a_uy_w __a_uy_w)) _a_uy_w)
  (:a_w_ux
   (&optional __a_w_ux)
   (if __a_w_ux (setq _a_w_ux __a_w_ux)) _a_w_ux)
  (:a_w_uy
   (&optional __a_w_uy)
   (if __a_w_uy (setq _a_w_uy __a_w_uy)) _a_w_uy)
  (:a_w_w
   (&optional __a_w_w)
   (if __a_w_w (setq _a_w_w __a_w_w)) _a_w_w)
  (:a_g_ux
   (&optional __a_g_ux)
   (if __a_g_ux (setq _a_g_ux __a_g_ux)) _a_g_ux)
  (:a_g_uy
   (&optional __a_g_uy)
   (if __a_g_uy (setq _a_g_uy __a_g_uy)) _a_g_uy)
  (:a_g_w
   (&optional __a_g_w)
   (if __a_g_w (setq _a_g_w __a_g_w)) _a_g_w)
  (:serialization-length
   ()
   (+
    ;; string _type
    4 (length _type)
    ;; float32 _a_ux_ux
    4
    ;; float32 _a_ux_uy
    4
    ;; float32 _a_ux_w
    4
    ;; float32 _a_uy_ux
    4
    ;; float32 _a_uy_uy
    4
    ;; float32 _a_uy_w
    4
    ;; float32 _a_w_ux
    4
    ;; float32 _a_w_uy
    4
    ;; float32 _a_w_w
    4
    ;; float32 _a_g_ux
    4
    ;; float32 _a_g_uy
    4
    ;; float32 _a_g_w
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; float32 _a_ux_ux
       (sys::poke _a_ux_ux (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _a_ux_uy
       (sys::poke _a_ux_uy (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _a_ux_w
       (sys::poke _a_ux_w (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _a_uy_ux
       (sys::poke _a_uy_ux (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _a_uy_uy
       (sys::poke _a_uy_uy (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _a_uy_w
       (sys::poke _a_uy_w (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _a_w_ux
       (sys::poke _a_w_ux (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _a_w_uy
       (sys::poke _a_w_uy (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _a_w_w
       (sys::poke _a_w_w (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _a_g_ux
       (sys::poke _a_g_ux (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _a_g_uy
       (sys::poke _a_g_uy (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _a_g_w
       (sys::poke _a_g_w (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _a_ux_ux
     (setq _a_ux_ux (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _a_ux_uy
     (setq _a_ux_uy (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _a_ux_w
     (setq _a_ux_w (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _a_uy_ux
     (setq _a_uy_ux (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _a_uy_uy
     (setq _a_uy_uy (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _a_uy_w
     (setq _a_uy_w (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _a_w_ux
     (setq _a_w_ux (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _a_w_uy
     (setq _a_w_uy (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _a_w_w
     (setq _a_w_w (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _a_g_ux
     (setq _a_g_ux (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _a_g_uy
     (setq _a_g_uy (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _a_g_w
     (setq _a_g_w (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get stdr_msgs::KinematicMsg :md5sum-) "75d30a9f55f18dd9353f0abaabfaf261")
(setf (get stdr_msgs::KinematicMsg :datatype-) "stdr_msgs/KinematicMsg")
(setf (get stdr_msgs::KinematicMsg :definition-)
      "# Container for the kinematic model parameters. The parameters selected/
# are quite general. For a more accurate motion model a per-kinematic model
# approach should be followed.
# Parameters are in the form a_C_D, where C is affected by D.
# ux is the linear speed
# uy is the lateral speed (for omni vehicles)
# w is the angular speed
# g is a cofficient that directly affects the angular speed
# For more information check the MotionController::sampleVelocities function.

string type
float32 a_ux_ux
float32 a_ux_uy
float32 a_ux_w
float32 a_uy_ux
float32 a_uy_uy
float32 a_uy_w
float32 a_w_ux
float32 a_w_uy
float32 a_w_w
float32 a_g_ux
float32 a_g_uy
float32 a_g_w

")



(provide :stdr_msgs/KinematicMsg "75d30a9f55f18dd9353f0abaabfaf261")


