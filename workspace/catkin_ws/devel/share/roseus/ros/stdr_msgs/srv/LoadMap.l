;; Auto-generated. Do not edit!


(when (boundp 'stdr_msgs::LoadMap)
  (if (not (find-package "STDR_MSGS"))
    (make-package "STDR_MSGS"))
  (shadow 'LoadMap (find-package "STDR_MSGS")))
(unless (find-package "STDR_MSGS::LOADMAP")
  (make-package "STDR_MSGS::LOADMAP"))
(unless (find-package "STDR_MSGS::LOADMAPREQUEST")
  (make-package "STDR_MSGS::LOADMAPREQUEST"))
(unless (find-package "STDR_MSGS::LOADMAPRESPONSE")
  (make-package "STDR_MSGS::LOADMAPRESPONSE"))

(in-package "ROS")





(defclass stdr_msgs::LoadMapRequest
  :super ros::object
  :slots (_mapFile ))

(defmethod stdr_msgs::LoadMapRequest
  (:init
   (&key
    ((:mapFile __mapFile) "")
    )
   (send-super :init)
   (setq _mapFile (string __mapFile))
   self)
  (:mapFile
   (&optional __mapFile)
   (if __mapFile (setq _mapFile __mapFile)) _mapFile)
  (:serialization-length
   ()
   (+
    ;; string _mapFile
    4 (length _mapFile)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _mapFile
       (write-long (length _mapFile) s) (princ _mapFile s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _mapFile
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mapFile (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass stdr_msgs::LoadMapResponse
  :super ros::object
  :slots ())

(defmethod stdr_msgs::LoadMapResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass stdr_msgs::LoadMap
  :super ros::object
  :slots ())

(setf (get stdr_msgs::LoadMap :md5sum-) "656f50b5e78328d62ac1c4a5c19fefd5")
(setf (get stdr_msgs::LoadMap :datatype-) "stdr_msgs/LoadMap")
(setf (get stdr_msgs::LoadMap :request) stdr_msgs::LoadMapRequest)
(setf (get stdr_msgs::LoadMap :response) stdr_msgs::LoadMapResponse)

(defmethod stdr_msgs::LoadMapRequest
  (:response () (instance stdr_msgs::LoadMapResponse :init)))

(setf (get stdr_msgs::LoadMapRequest :md5sum-) "656f50b5e78328d62ac1c4a5c19fefd5")
(setf (get stdr_msgs::LoadMapRequest :datatype-) "stdr_msgs/LoadMapRequest")
(setf (get stdr_msgs::LoadMapRequest :definition-)
      "string mapFile
---

")

(setf (get stdr_msgs::LoadMapResponse :md5sum-) "656f50b5e78328d62ac1c4a5c19fefd5")
(setf (get stdr_msgs::LoadMapResponse :datatype-) "stdr_msgs/LoadMapResponse")
(setf (get stdr_msgs::LoadMapResponse :definition-)
      "string mapFile
---

")



(provide :stdr_msgs/LoadMap "656f50b5e78328d62ac1c4a5c19fefd5")


