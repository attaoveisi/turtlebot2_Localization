;; Auto-generated. Do not edit!


(when (boundp 'stdr_msgs::CO2SensorMeasurementMsg)
  (if (not (find-package "STDR_MSGS"))
    (make-package "STDR_MSGS"))
  (shadow 'CO2SensorMeasurementMsg (find-package "STDR_MSGS")))
(unless (find-package "STDR_MSGS::CO2SENSORMEASUREMENTMSG")
  (make-package "STDR_MSGS::CO2SENSORMEASUREMENTMSG"))

(in-package "ROS")
;;//! \htmlinclude CO2SensorMeasurementMsg.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass stdr_msgs::CO2SensorMeasurementMsg
  :super ros::object
  :slots (_header _co2_ppm ))

(defmethod stdr_msgs::CO2SensorMeasurementMsg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:co2_ppm __co2_ppm) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _co2_ppm (float __co2_ppm))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:co2_ppm
   (&optional __co2_ppm)
   (if __co2_ppm (setq _co2_ppm __co2_ppm)) _co2_ppm)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _co2_ppm
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _co2_ppm
       (sys::poke _co2_ppm (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _co2_ppm
     (setq _co2_ppm (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get stdr_msgs::CO2SensorMeasurementMsg :md5sum-) "ea3141a4e89d798f2735cb324ffcd870")
(setf (get stdr_msgs::CO2SensorMeasurementMsg :datatype-) "stdr_msgs/CO2SensorMeasurementMsg")
(setf (get stdr_msgs::CO2SensorMeasurementMsg :definition-)
      "# Sensor measurement description
# All vectors must have the same size

Header header

float32 co2_ppm

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



(provide :stdr_msgs/CO2SensorMeasurementMsg "ea3141a4e89d798f2735cb324ffcd870")


