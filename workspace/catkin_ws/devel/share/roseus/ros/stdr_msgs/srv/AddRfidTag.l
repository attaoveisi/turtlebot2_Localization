;; Auto-generated. Do not edit!


(when (boundp 'stdr_msgs::AddRfidTag)
  (if (not (find-package "STDR_MSGS"))
    (make-package "STDR_MSGS"))
  (shadow 'AddRfidTag (find-package "STDR_MSGS")))
(unless (find-package "STDR_MSGS::ADDRFIDTAG")
  (make-package "STDR_MSGS::ADDRFIDTAG"))
(unless (find-package "STDR_MSGS::ADDRFIDTAGREQUEST")
  (make-package "STDR_MSGS::ADDRFIDTAGREQUEST"))
(unless (find-package "STDR_MSGS::ADDRFIDTAGRESPONSE")
  (make-package "STDR_MSGS::ADDRFIDTAGRESPONSE"))

(in-package "ROS")





(defclass stdr_msgs::AddRfidTagRequest
  :super ros::object
  :slots (_newTag ))

(defmethod stdr_msgs::AddRfidTagRequest
  (:init
   (&key
    ((:newTag __newTag) (instance stdr_msgs::RfidTag :init))
    )
   (send-super :init)
   (setq _newTag __newTag)
   self)
  (:newTag
   (&rest __newTag)
   (if (keywordp (car __newTag))
       (send* _newTag __newTag)
     (progn
       (if __newTag (setq _newTag (car __newTag)))
       _newTag)))
  (:serialization-length
   ()
   (+
    ;; stdr_msgs/RfidTag _newTag
    (send _newTag :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; stdr_msgs/RfidTag _newTag
       (send _newTag :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; stdr_msgs/RfidTag _newTag
     (send _newTag :deserialize buf ptr-) (incf ptr- (send _newTag :serialization-length))
   ;;
   self)
  )

(defclass stdr_msgs::AddRfidTagResponse
  :super ros::object
  :slots (_success _message ))

(defmethod stdr_msgs::AddRfidTagResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass stdr_msgs::AddRfidTag
  :super ros::object
  :slots ())

(setf (get stdr_msgs::AddRfidTag :md5sum-) "257a3ebd6cd76d8346fa749295629845")
(setf (get stdr_msgs::AddRfidTag :datatype-) "stdr_msgs/AddRfidTag")
(setf (get stdr_msgs::AddRfidTag :request) stdr_msgs::AddRfidTagRequest)
(setf (get stdr_msgs::AddRfidTag :response) stdr_msgs::AddRfidTagResponse)

(defmethod stdr_msgs::AddRfidTagRequest
  (:response () (instance stdr_msgs::AddRfidTagResponse :init)))

(setf (get stdr_msgs::AddRfidTagRequest :md5sum-) "257a3ebd6cd76d8346fa749295629845")
(setf (get stdr_msgs::AddRfidTagRequest :datatype-) "stdr_msgs/AddRfidTagRequest")
(setf (get stdr_msgs::AddRfidTagRequest :definition-)
      "stdr_msgs/RfidTag newTag

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
---
bool success
string message

")

(setf (get stdr_msgs::AddRfidTagResponse :md5sum-) "257a3ebd6cd76d8346fa749295629845")
(setf (get stdr_msgs::AddRfidTagResponse :datatype-) "stdr_msgs/AddRfidTagResponse")
(setf (get stdr_msgs::AddRfidTagResponse :definition-)
      "stdr_msgs/RfidTag newTag

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
---
bool success
string message

")



(provide :stdr_msgs/AddRfidTag "257a3ebd6cd76d8346fa749295629845")


