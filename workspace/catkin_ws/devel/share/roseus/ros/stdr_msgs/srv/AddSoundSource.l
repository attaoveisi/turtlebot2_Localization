;; Auto-generated. Do not edit!


(when (boundp 'stdr_msgs::AddSoundSource)
  (if (not (find-package "STDR_MSGS"))
    (make-package "STDR_MSGS"))
  (shadow 'AddSoundSource (find-package "STDR_MSGS")))
(unless (find-package "STDR_MSGS::ADDSOUNDSOURCE")
  (make-package "STDR_MSGS::ADDSOUNDSOURCE"))
(unless (find-package "STDR_MSGS::ADDSOUNDSOURCEREQUEST")
  (make-package "STDR_MSGS::ADDSOUNDSOURCEREQUEST"))
(unless (find-package "STDR_MSGS::ADDSOUNDSOURCERESPONSE")
  (make-package "STDR_MSGS::ADDSOUNDSOURCERESPONSE"))

(in-package "ROS")





(defclass stdr_msgs::AddSoundSourceRequest
  :super ros::object
  :slots (_newSource ))

(defmethod stdr_msgs::AddSoundSourceRequest
  (:init
   (&key
    ((:newSource __newSource) (instance stdr_msgs::SoundSource :init))
    )
   (send-super :init)
   (setq _newSource __newSource)
   self)
  (:newSource
   (&rest __newSource)
   (if (keywordp (car __newSource))
       (send* _newSource __newSource)
     (progn
       (if __newSource (setq _newSource (car __newSource)))
       _newSource)))
  (:serialization-length
   ()
   (+
    ;; stdr_msgs/SoundSource _newSource
    (send _newSource :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; stdr_msgs/SoundSource _newSource
       (send _newSource :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; stdr_msgs/SoundSource _newSource
     (send _newSource :deserialize buf ptr-) (incf ptr- (send _newSource :serialization-length))
   ;;
   self)
  )

(defclass stdr_msgs::AddSoundSourceResponse
  :super ros::object
  :slots (_success _message ))

(defmethod stdr_msgs::AddSoundSourceResponse
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

(defclass stdr_msgs::AddSoundSource
  :super ros::object
  :slots ())

(setf (get stdr_msgs::AddSoundSource :md5sum-) "61f4cfe48dcee84e22a272f43225eae1")
(setf (get stdr_msgs::AddSoundSource :datatype-) "stdr_msgs/AddSoundSource")
(setf (get stdr_msgs::AddSoundSource :request) stdr_msgs::AddSoundSourceRequest)
(setf (get stdr_msgs::AddSoundSource :response) stdr_msgs::AddSoundSourceResponse)

(defmethod stdr_msgs::AddSoundSourceRequest
  (:response () (instance stdr_msgs::AddSoundSourceResponse :init)))

(setf (get stdr_msgs::AddSoundSourceRequest :md5sum-) "61f4cfe48dcee84e22a272f43225eae1")
(setf (get stdr_msgs::AddSoundSourceRequest :datatype-) "stdr_msgs/AddSoundSourceRequest")
(setf (get stdr_msgs::AddSoundSourceRequest :definition-)
      "stdr_msgs/SoundSource newSource

================================================================================
MSG: stdr_msgs/SoundSource
# Source description

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
---
bool success
string message

")

(setf (get stdr_msgs::AddSoundSourceResponse :md5sum-) "61f4cfe48dcee84e22a272f43225eae1")
(setf (get stdr_msgs::AddSoundSourceResponse :datatype-) "stdr_msgs/AddSoundSourceResponse")
(setf (get stdr_msgs::AddSoundSourceResponse :definition-)
      "stdr_msgs/SoundSource newSource

================================================================================
MSG: stdr_msgs/SoundSource
# Source description

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
---
bool success
string message

")



(provide :stdr_msgs/AddSoundSource "61f4cfe48dcee84e22a272f43225eae1")


