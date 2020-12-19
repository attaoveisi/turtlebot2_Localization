;; Auto-generated. Do not edit!


(when (boundp 'stdr_msgs::SoundSensorMeasurementMsg)
  (if (not (find-package "STDR_MSGS"))
    (make-package "STDR_MSGS"))
  (shadow 'SoundSensorMeasurementMsg (find-package "STDR_MSGS")))
(unless (find-package "STDR_MSGS::SOUNDSENSORMEASUREMENTMSG")
  (make-package "STDR_MSGS::SOUNDSENSORMEASUREMENTMSG"))

(in-package "ROS")
;;//! \htmlinclude SoundSensorMeasurementMsg.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass stdr_msgs::SoundSensorMeasurementMsg
  :super ros::object
  :slots (_header _sound_dbs ))

(defmethod stdr_msgs::SoundSensorMeasurementMsg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:sound_dbs __sound_dbs) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _sound_dbs (float __sound_dbs))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:sound_dbs
   (&optional __sound_dbs)
   (if __sound_dbs (setq _sound_dbs __sound_dbs)) _sound_dbs)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _sound_dbs
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _sound_dbs
       (sys::poke _sound_dbs (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _sound_dbs
     (setq _sound_dbs (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get stdr_msgs::SoundSensorMeasurementMsg :md5sum-) "1f73a234937f6d19824ea2a78f157d78")
(setf (get stdr_msgs::SoundSensorMeasurementMsg :datatype-) "stdr_msgs/SoundSensorMeasurementMsg")
(setf (get stdr_msgs::SoundSensorMeasurementMsg :definition-)
      "# Sensor measurement description
# All vectors must have the same size

Header header

float32 sound_dbs

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :stdr_msgs/SoundSensorMeasurementMsg "1f73a234937f6d19824ea2a78f157d78")


