;; Auto-generated. Do not edit!


(when (boundp 'stdr_msgs::RfidTag)
  (if (not (find-package "STDR_MSGS"))
    (make-package "STDR_MSGS"))
  (shadow 'RfidTag (find-package "STDR_MSGS")))
(unless (find-package "STDR_MSGS::RFIDTAG")
  (make-package "STDR_MSGS::RFIDTAG"))

(in-package "ROS")
;;//! \htmlinclude RfidTag.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass stdr_msgs::RfidTag
  :super ros::object
  :slots (_tag_id _message _pose ))

(defmethod stdr_msgs::RfidTag
  (:init
   (&key
    ((:tag_id __tag_id) "")
    ((:message __message) "")
    ((:pose __pose) (instance geometry_msgs::Pose2D :init))
    )
   (send-super :init)
   (setq _tag_id (string __tag_id))
   (setq _message (string __message))
   (setq _pose __pose)
   self)
  (:tag_id
   (&optional __tag_id)
   (if __tag_id (setq _tag_id __tag_id)) _tag_id)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
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
    ;; string _tag_id
    4 (length _tag_id)
    ;; string _message
    4 (length _message)
    ;; geometry_msgs/Pose2D _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _tag_id
       (write-long (length _tag_id) s) (princ _tag_id s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; geometry_msgs/Pose2D _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _tag_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _tag_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose2D _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(setf (get stdr_msgs::RfidTag :md5sum-) "e37433c890cfe140ccbef22419fae16c")
(setf (get stdr_msgs::RfidTag :datatype-) "stdr_msgs/RfidTag")
(setf (get stdr_msgs::RfidTag :definition-)
      "# Rfid tag description

string tag_id
string message
geometry_msgs/Pose2D pose # sensor pose, relative to the map origin

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



(provide :stdr_msgs/RfidTag "e37433c890cfe140ccbef22419fae16c")


