;; Auto-generated. Do not edit!


(when (boundp 'stdr_msgs::SoundSource)
  (if (not (find-package "STDR_MSGS"))
    (make-package "STDR_MSGS"))
  (shadow 'SoundSource (find-package "STDR_MSGS")))
(unless (find-package "STDR_MSGS::SOUNDSOURCE")
  (make-package "STDR_MSGS::SOUNDSOURCE"))

(in-package "ROS")
;;//! \htmlinclude SoundSource.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass stdr_msgs::SoundSource
  :super ros::object
  :slots (_id _dbs _pose ))

(defmethod stdr_msgs::SoundSource
  (:init
   (&key
    ((:id __id) "")
    ((:dbs __dbs) 0.0)
    ((:pose __pose) (instance geometry_msgs::Pose2D :init))
    )
   (send-super :init)
   (setq _id (string __id))
   (setq _dbs (float __dbs))
   (setq _pose __pose)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:dbs
   (&optional __dbs)
   (if __dbs (setq _dbs __dbs)) _dbs)
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
    ;; float32 _dbs
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
     ;; float32 _dbs
       (sys::poke _dbs (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; geometry_msgs/Pose2D _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _dbs
     (setq _dbs (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; geometry_msgs/Pose2D _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(setf (get stdr_msgs::SoundSource :md5sum-) "c45183ddcf94455b2f7bb47f2f3e9f87")
(setf (get stdr_msgs::SoundSource :datatype-) "stdr_msgs/SoundSource")
(setf (get stdr_msgs::SoundSource :definition-)
      "# Source description

string id
float32 dbs

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



(provide :stdr_msgs/SoundSource "c45183ddcf94455b2f7bb47f2f3e9f87")


