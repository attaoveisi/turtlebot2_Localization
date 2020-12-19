;; Auto-generated. Do not edit!


(when (boundp 'stdr_msgs::ThermalSourceVector)
  (if (not (find-package "STDR_MSGS"))
    (make-package "STDR_MSGS"))
  (shadow 'ThermalSourceVector (find-package "STDR_MSGS")))
(unless (find-package "STDR_MSGS::THERMALSOURCEVECTOR")
  (make-package "STDR_MSGS::THERMALSOURCEVECTOR"))

(in-package "ROS")
;;//! \htmlinclude ThermalSourceVector.msg.html


(defclass stdr_msgs::ThermalSourceVector
  :super ros::object
  :slots (_thermal_sources ))

(defmethod stdr_msgs::ThermalSourceVector
  (:init
   (&key
    ((:thermal_sources __thermal_sources) (let (r) (dotimes (i 0) (push (instance stdr_msgs::ThermalSource :init) r)) r))
    )
   (send-super :init)
   (setq _thermal_sources __thermal_sources)
   self)
  (:thermal_sources
   (&rest __thermal_sources)
   (if (keywordp (car __thermal_sources))
       (send* _thermal_sources __thermal_sources)
     (progn
       (if __thermal_sources (setq _thermal_sources (car __thermal_sources)))
       _thermal_sources)))
  (:serialization-length
   ()
   (+
    ;; stdr_msgs/ThermalSource[] _thermal_sources
    (apply #'+ (send-all _thermal_sources :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; stdr_msgs/ThermalSource[] _thermal_sources
     (write-long (length _thermal_sources) s)
     (dolist (elem _thermal_sources)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; stdr_msgs/ThermalSource[] _thermal_sources
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _thermal_sources (let (r) (dotimes (i n) (push (instance stdr_msgs::ThermalSource :init) r)) r))
     (dolist (elem- _thermal_sources)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get stdr_msgs::ThermalSourceVector :md5sum-) "dddbbf1cf2eb1ad9e8f6f398fb8b44ac")
(setf (get stdr_msgs::ThermalSourceVector :datatype-) "stdr_msgs/ThermalSourceVector")
(setf (get stdr_msgs::ThermalSourceVector :definition-)
      "# Thermal sources list
stdr_msgs/ThermalSource[] thermal_sources

================================================================================
MSG: stdr_msgs/ThermalSource
# Source description

string id
float32 degrees

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



(provide :stdr_msgs/ThermalSourceVector "dddbbf1cf2eb1ad9e8f6f398fb8b44ac")


