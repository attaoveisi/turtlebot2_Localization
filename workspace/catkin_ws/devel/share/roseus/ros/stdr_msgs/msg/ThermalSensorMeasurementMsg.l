;; Auto-generated. Do not edit!


(when (boundp 'stdr_msgs::ThermalSensorMeasurementMsg)
  (if (not (find-package "STDR_MSGS"))
    (make-package "STDR_MSGS"))
  (shadow 'ThermalSensorMeasurementMsg (find-package "STDR_MSGS")))
(unless (find-package "STDR_MSGS::THERMALSENSORMEASUREMENTMSG")
  (make-package "STDR_MSGS::THERMALSENSORMEASUREMENTMSG"))

(in-package "ROS")
;;//! \htmlinclude ThermalSensorMeasurementMsg.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass stdr_msgs::ThermalSensorMeasurementMsg
  :super ros::object
  :slots (_header _thermal_source_degrees ))

(defmethod stdr_msgs::ThermalSensorMeasurementMsg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:thermal_source_degrees __thermal_source_degrees) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _thermal_source_degrees __thermal_source_degrees)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:thermal_source_degrees
   (&optional __thermal_source_degrees)
   (if __thermal_source_degrees (setq _thermal_source_degrees __thermal_source_degrees)) _thermal_source_degrees)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32[] _thermal_source_degrees
    (* 4    (length _thermal_source_degrees)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32[] _thermal_source_degrees
     (write-long (length _thermal_source_degrees) s)
     (dotimes (i (length _thermal_source_degrees))
       (sys::poke (elt _thermal_source_degrees i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32[] _thermal_source_degrees
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _thermal_source_degrees (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _thermal_source_degrees i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get stdr_msgs::ThermalSensorMeasurementMsg :md5sum-) "e4b704fefcd6eb849f164e31d5084251")
(setf (get stdr_msgs::ThermalSensorMeasurementMsg :datatype-) "stdr_msgs/ThermalSensorMeasurementMsg")
(setf (get stdr_msgs::ThermalSensorMeasurementMsg :definition-)
      "# Sensor measurement description

Header header

float32[] thermal_source_degrees

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



(provide :stdr_msgs/ThermalSensorMeasurementMsg "e4b704fefcd6eb849f164e31d5084251")


