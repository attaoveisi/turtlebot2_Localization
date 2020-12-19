;; Auto-generated. Do not edit!


(when (boundp 'stdr_msgs::ThermalSource)
  (if (not (find-package "STDR_MSGS"))
    (make-package "STDR_MSGS"))
  (shadow 'ThermalSource (find-package "STDR_MSGS")))
(unless (find-package "STDR_MSGS::THERMALSOURCE")
  (make-package "STDR_MSGS::THERMALSOURCE"))

(in-package "ROS")
;;//! \htmlinclude ThermalSource.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass stdr_msgs::ThermalSource
  :super ros::object
  :slots (_id _degrees _pose ))

(defmethod stdr_msgs::ThermalSource
  (:init
   (&key
    ((:id __id) "")
    ((:degrees __degrees) 0.0)
    ((:pose __pose) (instance geometry_msgs::Pose2D :init))
    )
   (send-super :init)
   (setq _id (string __id))
   (setq _degrees (float __degrees))
   (setq _pose __pose)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:degrees
   (&optional __degrees)
   (if __degrees (setq _degrees __degrees)) _degrees)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; string _id
    4 (length _id)
    ;; float32 _degrees
    4
    ;; geometry_msgs/Pose2D _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; float32 _degrees
       (sys::poke _degrees (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; geometry_msgs/Pose2D _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _degrees
     (setq _degrees (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; geometry_msgs/Pose2D _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(setf (get stdr_msgs::ThermalSource :md5sum-) "b732f325d4ba0a2977192d50dca59310")
(setf (get stdr_msgs::ThermalSource :datatype-) "stdr_msgs/ThermalSource")
(setf (get stdr_msgs::ThermalSource :definition-)
      "# Source description

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



(provide :stdr_msgs/ThermalSource "b732f325d4ba0a2977192d50dca59310")


