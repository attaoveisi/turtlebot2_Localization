;; Auto-generated. Do not edit!


(when (boundp 'stdr_msgs::RfidTagVector)
  (if (not (find-package "STDR_MSGS"))
    (make-package "STDR_MSGS"))
  (shadow 'RfidTagVector (find-package "STDR_MSGS")))
(unless (find-package "STDR_MSGS::RFIDTAGVECTOR")
  (make-package "STDR_MSGS::RFIDTAGVECTOR"))

(in-package "ROS")
;;//! \htmlinclude RfidTagVector.msg.html


(defclass stdr_msgs::RfidTagVector
  :super ros::object
  :slots (_rfid_tags ))

(defmethod stdr_msgs::RfidTagVector
  (:init
   (&key
    ((:rfid_tags __rfid_tags) (let (r) (dotimes (i 0) (push (instance stdr_msgs::RfidTag :init) r)) r))
    )
   (send-super :init)
   (setq _rfid_tags __rfid_tags)
   self)
  (:rfid_tags
   (&rest __rfid_tags)
   (if (keywordp (car __rfid_tags))
       (send* _rfid_tags __rfid_tags)
     (progn
       (if __rfid_tags (setq _rfid_tags (car __rfid_tags)))
       _rfid_tags)))
  (:serialization-length
   ()
   (+
    ;; stdr_msgs/RfidTag[] _rfid_tags
    (apply #'+ (send-all _rfid_tags :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; stdr_msgs/RfidTag[] _rfid_tags
     (write-long (length _rfid_tags) s)
     (dolist (elem _rfid_tags)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; stdr_msgs/RfidTag[] _rfid_tags
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _rfid_tags (let (r) (dotimes (i n) (push (instance stdr_msgs::RfidTag :init) r)) r))
     (dolist (elem- _rfid_tags)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get stdr_msgs::RfidTagVector :md5sum-) "d1ccd79235f17c9d8c9665681cfa66f7")
(setf (get stdr_msgs::RfidTagVector :datatype-) "stdr_msgs/RfidTagVector")
(setf (get stdr_msgs::RfidTagVector :definition-)
      "# Rfid tag list
stdr_msgs/RfidTag[] rfid_tags

================================================================================
MSG: stdr_msgs/RfidTag
# Rfid tag description

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



(provide :stdr_msgs/RfidTagVector "d1ccd79235f17c9d8c9665681cfa66f7")


