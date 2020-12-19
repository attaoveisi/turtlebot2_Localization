;; Auto-generated. Do not edit!


(when (boundp 'stdr_msgs::AddThermalSource)
  (if (not (find-package "STDR_MSGS"))
    (make-package "STDR_MSGS"))
  (shadow 'AddThermalSource (find-package "STDR_MSGS")))
(unless (find-package "STDR_MSGS::ADDTHERMALSOURCE")
  (make-package "STDR_MSGS::ADDTHERMALSOURCE"))
(unless (find-package "STDR_MSGS::ADDTHERMALSOURCEREQUEST")
  (make-package "STDR_MSGS::ADDTHERMALSOURCEREQUEST"))
(unless (find-package "STDR_MSGS::ADDTHERMALSOURCERESPONSE")
  (make-package "STDR_MSGS::ADDTHERMALSOURCERESPONSE"))

(in-package "ROS")





(defclass stdr_msgs::AddThermalSourceRequest
  :super ros::object
  :slots (_newSource ))

(defmethod stdr_msgs::AddThermalSourceRequest
  (:init
   (&key
    ((:newSource __newSource) (instance stdr_msgs::ThermalSource :init))
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
    ;; stdr_msgs/ThermalSource _newSource
    (send _newSource :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; stdr_msgs/ThermalSource _newSource
       (send _newSource :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; stdr_msgs/ThermalSource _newSource
     (send _newSource :deserialize buf ptr-) (incf ptr- (send _newSource :serialization-length))
   ;;
   self)
  )

(defclass stdr_msgs::AddThermalSourceResponse
  :super ros::object
  :slots (_success _message ))

(defmethod stdr_msgs::AddThermalSourceResponse
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

(defclass stdr_msgs::AddThermalSource
  :super ros::object
  :slots ())

(setf (get stdr_msgs::AddThermalSource :md5sum-) "9fd17d9c0c1371182c625b3bfbbcf75f")
(setf (get stdr_msgs::AddThermalSource :datatype-) "stdr_msgs/AddThermalSource")
(setf (get stdr_msgs::AddThermalSource :request) stdr_msgs::AddThermalSourceRequest)
(setf (get stdr_msgs::AddThermalSource :response) stdr_msgs::AddThermalSourceResponse)

(defmethod stdr_msgs::AddThermalSourceRequest
  (:response () (instance stdr_msgs::AddThermalSourceResponse :init)))

(setf (get stdr_msgs::AddThermalSourceRequest :md5sum-) "9fd17d9c0c1371182c625b3bfbbcf75f")
(setf (get stdr_msgs::AddThermalSourceRequest :datatype-) "stdr_msgs/AddThermalSourceRequest")
(setf (get stdr_msgs::AddThermalSourceRequest :definition-)
      "stdr_msgs/ThermalSource newSource

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
---
bool success
string message

")

(setf (get stdr_msgs::AddThermalSourceResponse :md5sum-) "9fd17d9c0c1371182c625b3bfbbcf75f")
(setf (get stdr_msgs::AddThermalSourceResponse :datatype-) "stdr_msgs/AddThermalSourceResponse")
(setf (get stdr_msgs::AddThermalSourceResponse :definition-)
      "stdr_msgs/ThermalSource newSource

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
---
bool success
string message

")



(provide :stdr_msgs/AddThermalSource "9fd17d9c0c1371182c625b3bfbbcf75f")


