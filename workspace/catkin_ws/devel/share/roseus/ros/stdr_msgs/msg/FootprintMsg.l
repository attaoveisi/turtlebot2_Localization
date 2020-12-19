;; Auto-generated. Do not edit!


(when (boundp 'stdr_msgs::FootprintMsg)
  (if (not (find-package "STDR_MSGS"))
    (make-package "STDR_MSGS"))
  (shadow 'FootprintMsg (find-package "STDR_MSGS")))
(unless (find-package "STDR_MSGS::FOOTPRINTMSG")
  (make-package "STDR_MSGS::FOOTPRINTMSG"))

(in-package "ROS")
;;//! \htmlinclude FootprintMsg.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass stdr_msgs::FootprintMsg
  :super ros::object
  :slots (_points _radius ))

(defmethod stdr_msgs::FootprintMsg
  (:init
   (&key
    ((:points __points) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point :init) r)) r))
    ((:radius __radius) 0.0)
    )
   (send-super :init)
   (setq _points __points)
   (setq _radius (float __radius))
   self)
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:radius
   (&optional __radius)
   (if __radius (setq _radius __radius)) _radius)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ;; float32 _radius
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;; float32 _radius
       (sys::poke _radius (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float32 _radius
     (setq _radius (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get stdr_msgs::FootprintMsg :md5sum-) "85abf3c88ffa720da1b02b0368d5d55e")
(setf (get stdr_msgs::FootprintMsg :datatype-) "stdr_msgs/FootprintMsg")
(setf (get stdr_msgs::FootprintMsg :definition-)
      "geometry_msgs/Point[] points
float32 radius # for circular footprints

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :stdr_msgs/FootprintMsg "85abf3c88ffa720da1b02b0368d5d55e")


