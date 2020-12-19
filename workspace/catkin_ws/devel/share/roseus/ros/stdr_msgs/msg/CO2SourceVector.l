;; Auto-generated. Do not edit!


(when (boundp 'stdr_msgs::CO2SourceVector)
  (if (not (find-package "STDR_MSGS"))
    (make-package "STDR_MSGS"))
  (shadow 'CO2SourceVector (find-package "STDR_MSGS")))
(unless (find-package "STDR_MSGS::CO2SOURCEVECTOR")
  (make-package "STDR_MSGS::CO2SOURCEVECTOR"))

(in-package "ROS")
;;//! \htmlinclude CO2SourceVector.msg.html


(defclass stdr_msgs::CO2SourceVector
  :super ros::object
  :slots (_co2_sources ))

(defmethod stdr_msgs::CO2SourceVector
  (:init
   (&key
    ((:co2_sources __co2_sources) (let (r) (dotimes (i 0) (push (instance stdr_msgs::CO2Source :init) r)) r))
    )
   (send-super :init)
   (setq _co2_sources __co2_sources)
   self)
  (:co2_sources
   (&rest __co2_sources)
   (if (keywordp (car __co2_sources))
       (send* _co2_sources __co2_sources)
     (progn
       (if __co2_sources (setq _co2_sources (car __co2_sources)))
       _co2_sources)))
  (:serialization-length
   ()
   (+
    ;; stdr_msgs/CO2Source[] _co2_sources
    (apply #'+ (send-all _co2_sources :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; stdr_msgs/CO2Source[] _co2_sources
     (write-long (length _co2_sources) s)
     (dolist (elem _co2_sources)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; stdr_msgs/CO2Source[] _co2_sources
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _co2_sources (let (r) (dotimes (i n) (push (instance stdr_msgs::CO2Source :init) r)) r))
     (dolist (elem- _co2_sources)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get stdr_msgs::CO2SourceVector :md5sum-) "5ded45505bc7155e81a2d6033817c7f3")
(setf (get stdr_msgs::CO2SourceVector :datatype-) "stdr_msgs/CO2SourceVector")
(setf (get stdr_msgs::CO2SourceVector :definition-)
      "# CO2 sources list

stdr_msgs/CO2Source[] co2_sources

================================================================================
MSG: stdr_msgs/CO2Source
# Source description

string id
float32 ppm

# sensor pose, relative to the map origin
geometry_msgs/Pose2D pose 

================================================================================
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta

")



(provide :stdr_msgs/CO2SourceVector "5ded45505bc7155e81a2d6033817c7f3")


