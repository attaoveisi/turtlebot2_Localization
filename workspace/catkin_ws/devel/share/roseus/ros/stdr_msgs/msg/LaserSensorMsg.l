;; Auto-generated. Do not edit!


(when (boundp 'stdr_msgs::LaserSensorMsg)
  (if (not (find-package "STDR_MSGS"))
    (make-package "STDR_MSGS"))
  (shadow 'LaserSensorMsg (find-package "STDR_MSGS")))
(unless (find-package "STDR_MSGS::LASERSENSORMSG")
  (make-package "STDR_MSGS::LASERSENSORMSG"))

(in-package "ROS")
;;//! \htmlinclude LaserSensorMsg.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass stdr_msgs::LaserSensorMsg
  :super ros::object
  :slots (_maxAngle _minAngle _maxRange _minRange _numRays _noise _frequency _frame_id _pose ))

(defmethod stdr_msgs::LaserSensorMsg
  (:init
   (&key
    ((:maxAngle __maxAngle) 0.0)
    ((:minAngle __minAngle) 0.0)
    ((:maxRange __maxRange) 0.0)
    ((:minRange __minRange) 0.0)
    ((:numRays __numRays) 0)
    ((:noise __noise) (instance stdr_msgs::Noise :init))
    ((:frequency __frequency) 0.0)
    ((:frame_id __frame_id) "")
    ((:pose __pose) (instance geometry_msgs::Pose2D :init))
    )
   (send-super :init)
   (setq _maxAngle (float __maxAngle))
   (setq _minAngle (float __minAngle))
   (setq _maxRange (float __maxRange))
   (setq _minRange (float __minRange))
   (setq _numRays (round __numRays))
   (setq _noise __noise)
   (setq _frequency (float __frequency))
   (setq _frame_id (string __frame_id))
   (setq _pose __pose)
   self)
  (:maxAngle
   (&optional __maxAngle)
   (if __maxAngle (setq _maxAngle __maxAngle)) _maxAngle)
  (:minAngle
   (&optional __minAngle)
   (if __minAngle (setq _minAngle __minAngle)) _minAngle)
  (:maxRange
   (&optional __maxRange)
   (if __maxRange (setq _maxRange __maxRange)) _maxRange)
  (:minRange
   (&optional __minRange)
   (if __minRange (setq _minRange __minRange)) _minRange)
  (:numRays
   (&optional __numRays)
   (if __numRays (setq _numRays __numRays)) _numRays)
  (:noise
   (&rest __noise)
   (if (keywordp (car __noise))
       (send* _noise __noise)
     (progn
       (if __noise (setq _noise (car __noise)))
       _noise)))
  (:frequency
   (&optional __frequency)
   (if __frequency (setq _frequency __frequency)) _frequency)
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
    ;; float32 _maxAngle
    4
    ;; float32 _minAngle
    4
    ;; float32 _maxRange
    4
    ;; float32 _minRange
    4
    ;; int32 _numRays
    4
    ;; stdr_msgs/Noise _noise
    (send _noise :serialization-length)
    ;; float32 _frequency
    4
    ;; string _frame_id
    4 (length _frame_id)
    ;; geometry_msgs/Pose2D _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _maxAngle
       (sys::poke _maxAngle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _minAngle
       (sys::poke _minAngle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _maxRange
       (sys::poke _maxRange (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _minRange
       (sys::poke _minRange (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _numRays
       (write-long _numRays s)
     ;; stdr_msgs/Noise _noise
       (send _noise :serialize s)
     ;; float32 _frequency
       (sys::poke _frequency (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _frame_id
       (write-long (length _frame_id) s) (princ _frame_id s)
     ;; geometry_msgs/Pose2D _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _maxAngle
     (setq _maxAngle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _minAngle
     (setq _minAngle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _maxRange
     (setq _maxRange (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _minRange
     (setq _minRange (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _numRays
     (setq _numRays (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; stdr_msgs/Noise _noise
     (send _noise :deserialize buf ptr-) (incf ptr- (send _noise :serialization-length))
   ;; float32 _frequency
     (setq _frequency (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose2D _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(setf (get stdr_msgs::LaserSensorMsg :md5sum-) "32812e51fee48d19daf80d745cf2ad57")
(setf (get stdr_msgs::LaserSensorMsg :datatype-) "stdr_msgs/LaserSensorMsg")
(setf (get stdr_msgs::LaserSensorMsg :definition-)
      "# Laser Sensor description
float32 maxAngle
float32 minAngle
float32 maxRange
float32 minRange
int32 numRays

stdr_msgs/Noise noise

float32 frequency

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



(provide :stdr_msgs/LaserSensorMsg "32812e51fee48d19daf80d745cf2ad57")


