;; Auto-generated. Do not edit!


(when (boundp 'stdr_msgs::Noise)
  (if (not (find-package "STDR_MSGS"))
    (make-package "STDR_MSGS"))
  (shadow 'Noise (find-package "STDR_MSGS")))
(unless (find-package "STDR_MSGS::NOISE")
  (make-package "STDR_MSGS::NOISE"))

(in-package "ROS")
;;//! \htmlinclude Noise.msg.html


(defclass stdr_msgs::Noise
  :super ros::object
  :slots (_noise _noiseMean _noiseStd ))

(defmethod stdr_msgs::Noise
  (:init
   (&key
    ((:noise __noise) nil)
    ((:noiseMean __noiseMean) 0.0)
    ((:noiseStd __noiseStd) 0.0)
    )
   (send-super :init)
   (setq _noise __noise)
   (setq _noiseMean (float __noiseMean))
   (setq _noiseStd (float __noiseStd))
   self)
  (:noise
   (&optional __noise)
   (if __noise (setq _noise __noise)) _noise)
  (:noiseMean
   (&optional __noiseMean)
   (if __noiseMean (setq _noiseMean __noiseMean)) _noiseMean)
  (:noiseStd
   (&optional __noiseStd)
   (if __noiseStd (setq _noiseStd __noiseStd)) _noiseStd)
  (:serialization-length
   ()
   (+
    ;; bool _noise
    1
    ;; float32 _noiseMean
    4
    ;; float32 _noiseStd
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _noise
       (if _noise (write-byte -1 s) (write-byte 0 s))
     ;; float32 _noiseMean
       (sys::poke _noiseMean (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _noiseStd
       (sys::poke _noiseStd (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _noise
     (setq _noise (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _noiseMean
     (setq _noiseMean (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _noiseStd
     (setq _noiseStd (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get stdr_msgs::Noise :md5sum-) "a882ac96256e87f019f2655e9d7f0f81")
(setf (get stdr_msgs::Noise :datatype-) "stdr_msgs/Noise")
(setf (get stdr_msgs::Noise :definition-)
      "bool noise
float32 noiseMean
float32 noiseStd

")



(provide :stdr_msgs/Noise "a882ac96256e87f019f2655e9d7f0f81")


