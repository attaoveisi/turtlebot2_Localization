;; Auto-generated. Do not edit!


(when (boundp 'stdr_msgs::SonarSensorMsg)
  (if (not (find-package "STDR_MSGS"))
    (make-package "STDR_MSGS"))
  (shadow 'SonarSensorMsg (find-package "STDR_MSGS")))
(unless (find-package "STDR_MSGS::SONARSENSORMSG")
  (make-package "STDR_MSGS::SONARSENSORMSG"))

(in-package "ROS")
;;//! \htmlinclude SonarSensorMsg.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass stdr_msgs::SonarSensorMsg
  :super ros::object
  :slots (_maxRange _minRange _coneAngle _frequency _noise _frame_id _pose ))

(defmethod stdr_msgs::SonarSensorMsg
  (:init
   (&key
    ((:maxRange __maxRange) 0.0)
    ((:minRange __minRange) 0.0)
    ((:coneAngle __coneAngle) 0.0)
    ((:frequency __frequency) 0.0)
    ((:noise __noise) (instance stdr_msgs::Noise :init))
    ((:frame_id __frame_id) "")
    ((:pose __pose) (instance geometry_msgs::Pose2D :init))
    )
   (send-super :init)
   (setq _maxRange (float __maxRange))
   (setq _minRange (float __minRange))
   (setq _coneAngle (float __coneAngle))
   (setq _frequency (float __frequency))
   (setq _noise __noise)
   (setq _frame_id (string __frame_id))
   (setq _pose __pose)
   self)
  (:maxRange
   (&optional __maxRange)
   (if __maxRange (setq _maxRange __maxRange)) _maxRange)
  (:minRange
   (&optional __minRange)
   (if __minRange (setq _minRange __minRange)) _minRange)
  (:coneAngle
   (&optional __coneAngle)
   (if __coneAngle (setq _coneAngle __coneAngle)) _coneAngle)
  (:frequency
   (&optional __frequency)
   (if __frequency (setq _frequency __frequency)) _frequency)
  (:noise
   (&rest __noise)
   (if (keywordp (car __noise))
       (send* _noise __noise)
     (progn
       (if __noise (setq _noise (car __noise)))
       _noise)))
  (:frame_id
   (&optional __frame_id)
   (if __frame_id (setq _frame_id __frame_id)) _frame_id)
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
    ;; float32 _maxRange
    4
    ;; float32 _minRange
    4
    ;; float32 _coneAngle
    4
    ;; float32 _frequency
    4
    ;; stdr_msgs/Noise _noise
    (send _noise :serialization-length)
    ;; string _frame_id
    4 (length _frame_id)
    ;; geometry_msgs/Pose2D _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _maxRange
       (sys::poke _maxRange (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _minRange
       (sys::poke _minRange (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _coneAngle
       (sys::poke _coneAngle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _frequency
       (sys::poke _frequency (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; stdr_msgs/Noise _noise
       (send _noise :serialize s)
     ;; string _frame_id
       (write-long (length _frame_id) s) (princ _frame_id s)
     ;; geometry_msgs/Pose2D _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _maxRange
     (setq _maxRange (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _minRange
     (setq _minRange (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _coneAngle
     (setq _coneAngle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _frequency
     (setq _frequency (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; stdr_msgs/Noise _noise
     (send _noise :deserialize buf ptr-) (incf ptr- (send _noise :serialization-length))
   ;; string _frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose2D _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(setf (get stdr_msgs::SonarSensorMsg :md5sum-) "e8b8bd75b2e357572ea0c9ee72ed58c1")
(setf (get stdr_msgs::SonarSensorMsg :datatype-) "stdr_msgs/SonarSensorMsg")
(setf (get stdr_msgs::SonarSensorMsg :definition-)
      "# Rfid sensor description
float32 maxRange
float32 minRange
float32 coneAngle

float32 frequency
stdr_msgs/Noise noise

string frame_id
geometry_msgs/Pose2D pose # sensor pose, relative to robot center

================================================================================
MSG: stdr_msgs/Noise
bool noise
float32 noiseMean
float32 noiseStd

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



(provide :stdr_msgs/SonarSensorMsg "e8b8bd75b2e357572ea0c9ee72ed58c1")


