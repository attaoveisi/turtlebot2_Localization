;; Auto-generated. Do not edit!


(when (boundp 'stdr_msgs::DeleteCO2Source)
  (if (not (find-package "STDR_MSGS"))
    (make-package "STDR_MSGS"))
  (shadow 'DeleteCO2Source (find-package "STDR_MSGS")))
(unless (find-package "STDR_MSGS::DELETECO2SOURCE")
  (make-package "STDR_MSGS::DELETECO2SOURCE"))
(unless (find-package "STDR_MSGS::DELETECO2SOURCEREQUEST")
  (make-package "STDR_MSGS::DELETECO2SOURCEREQUEST"))
(unless (find-package "STDR_MSGS::DELETECO2SOURCERESPONSE")
  (make-package "STDR_MSGS::DELETECO2SOURCERESPONSE"))

(in-package "ROS")





(defclass stdr_msgs::DeleteCO2SourceRequest
  :super ros::object
  :slots (_name ))

(defmethod stdr_msgs::DeleteCO2SourceRequest
  (:init
   (&key
    ((:name __name) "")
    )
   (send-super :init)
   (setq _name (string __name))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass stdr_msgs::DeleteCO2SourceResponse
  :super ros::object
  :slots ())

(defmethod stdr_msgs::DeleteCO2SourceResponse
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

(defclass stdr_msgs::DeleteCO2Source
  :super ros::object
  :slots ())

(setf (get stdr_msgs::DeleteCO2Source :md5sum-) "c1f3d28f1b044c871e6eff2e9fc3c667")
(setf (get stdr_msgs::DeleteCO2Source :datatype-) "stdr_msgs/DeleteCO2Source")
(setf (get stdr_msgs::DeleteCO2Source :request) stdr_msgs::DeleteCO2SourceRequest)
(setf (get stdr_msgs::DeleteCO2Source :response) stdr_msgs::DeleteCO2SourceResponse)

(defmethod stdr_msgs::DeleteCO2SourceRequest
  (:response () (instance stdr_msgs::DeleteCO2SourceResponse :init)))

(setf (get stdr_msgs::DeleteCO2SourceRequest :md5sum-) "c1f3d28f1b044c871e6eff2e9fc3c667")
(setf (get stdr_msgs::DeleteCO2SourceRequest :datatype-) "stdr_msgs/DeleteCO2SourceRequest")
(setf (get stdr_msgs::DeleteCO2SourceRequest :definition-)
      "string name
---


")

(setf (get stdr_msgs::DeleteCO2SourceResponse :md5sum-) "c1f3d28f1b044c871e6eff2e9fc3c667")
(setf (get stdr_msgs::DeleteCO2SourceResponse :datatype-) "stdr_msgs/DeleteCO2SourceResponse")
(setf (get stdr_msgs::DeleteCO2SourceResponse :definition-)
      "string name
---


")



(provide :stdr_msgs/DeleteCO2Source "c1f3d28f1b044c871e6eff2e9fc3c667")


