;; Auto-generated. Do not edit!


(when (boundp 'stdr_msgs::RfidSensorMeasurementMsg)
  (if (not (find-package "STDR_MSGS"))
    (make-package "STDR_MSGS"))
  (shadow 'RfidSensorMeasurementMsg (find-package "STDR_MSGS")))
(unless (find-package "STDR_MSGS::RFIDSENSORMEASUREMENTMSG")
  (make-package "STDR_MSGS::RFIDSENSORMEASUREMENTMSG"))

(in-package "ROS")
;;//! \htmlinclude RfidSensorMeasurementMsg.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass stdr_msgs::RfidSensorMeasurementMsg
  :super ros::object
  :slots (_header _rfid_tags_ids _rfid_tags_msgs _rfid_tags_dbs ))

(defmethod stdr_msgs::RfidSensorMeasurementMsg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:rfid_tags_ids __rfid_tags_ids) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:rfid_tags_msgs __rfid_tags_msgs) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:rfid_tags_dbs __rfid_tags_dbs) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _rfid_tags_ids __rfid_tags_ids)
   (setq _rfid_tags_msgs __rfid_tags_msgs)
   (setq _rfid_tags_dbs __rfid_tags_dbs)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:rfid_tags_ids
   (&optional __rfid_tags_ids)
   (if __rfid_tags_ids (setq _rfid_tags_ids __rfid_tags_ids)) _rfid_tags_ids)
  (:rfid_tags_msgs
   (&optional __rfid_tags_msgs)
   (if __rfid_tags_msgs (setq _rfid_tags_msgs __rfid_tags_msgs)) _rfid_tags_msgs)
  (:rfid_tags_dbs
   (&optional __rfid_tags_dbs)
   (if __rfid_tags_dbs (setq _rfid_tags_dbs __rfid_tags_dbs)) _rfid_tags_dbs)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string[] _rfid_tags_ids
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _rfid_tags_ids)) 4
    ;; string[] _rfid_tags_msgs
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _rfid_tags_msgs)) 4
    ;; float32[] _rfid_tags_dbs
    (* 4    (length _rfid_tags_dbs)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string[] _rfid_tags_ids
     (write-long (length _rfid_tags_ids) s)
     (dolist (elem _rfid_tags_ids)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _rfid_tags_msgs
     (write-long (length _rfid_tags_msgs) s)
     (dolist (elem _rfid_tags_msgs)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float32[] _rfid_tags_dbs
     (write-long (length _rfid_tags_dbs) s)
     (dotimes (i (length _rfid_tags_dbs))
       (sys::poke (elt _rfid_tags_dbs i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string[] _rfid_tags_ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _rfid_tags_ids (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _rfid_tags_ids i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _rfid_tags_msgs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _rfid_tags_msgs (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _rfid_tags_msgs i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float32[] _rfid_tags_dbs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _rfid_tags_dbs (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _rfid_tags_dbs i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get stdr_msgs::RfidSensorMeasurementMsg :md5sum-) "274b41808759cfa6e05b69149e9ea1ed")
(setf (get stdr_msgs::RfidSensorMeasurementMsg :datatype-) "stdr_msgs/RfidSensorMeasurementMsg")
(setf (get stdr_msgs::RfidSensorMeasurementMsg :definition-)
      "# Rfid sensor measurement description - all vectors must have the same size
Header header

string[] rfid_tags_ids
string[] rfid_tags_msgs
float32[] rfid_tags_dbs

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



(provide :stdr_msgs/RfidSensorMeasurementMsg "274b41808759cfa6e05b69149e9ea1ed")


