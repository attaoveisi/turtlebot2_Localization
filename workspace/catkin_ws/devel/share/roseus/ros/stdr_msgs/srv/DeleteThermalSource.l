;; Auto-generated. Do not edit!


(when (boundp 'stdr_msgs::DeleteThermalSource)
  (if (not (find-package "STDR_MSGS"))
    (make-package "STDR_MSGS"))
  (shadow 'DeleteThermalSource (find-package "STDR_MSGS")))
(unless (find-package "STDR_MSGS::DELETETHERMALSOURCE")
  (make-package "STDR_MSGS::DELETETHERMALSOURCE"))
(unless (find-package "STDR_MSGS::DELETETHERMALSOURCEREQUEST")
  (make-package "STDR_MSGS::DELETETHERMALSOURCEREQUEST"))
(unless (find-package "STDR_MSGS::DELETETHERMALSOURCERESPONSE")
  (make-package "STDR_MSGS::DELETETHERMALSOURCERESPONSE"))

(in-package "ROS")





(defclass stdr_msgs::DeleteThermalSourceRequest
  :super ros::object
  :slots (_name ))

(defmethod stdr_msgs::DeleteThermalSourceRequest
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

(defclass stdr_msgs::DeleteThermalSourceResponse
  :super ros::object
  :slots ())

(defmethod stdr_msgs::DeleteThermalSourceResponse
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

(defclass stdr_msgs::DeleteThermalSource
  :super ros::object
  :slots ())

(setf (get stdr_msgs::DeleteThermalSource :md5sum-) "c1f3d28f1b044c871e6eff2e9fc3c667")
(setf (get stdr_msgs::DeleteThermalSource :datatype-) "stdr_msgs/DeleteThermalSource")
(setf (get stdr_msgs::DeleteThermalSource :request) stdr_msgs::DeleteThermalSourceRequest)
(setf (get stdr_msgs::DeleteThermalSource :response) stdr_msgs::DeleteThermalSourceResponse)

(defmethod stdr_msgs::DeleteThermalSourceRequest
  (:response () (instance stdr_msgs::DeleteThermalSourceResponse :init)))

(setf (get stdr_msgs::DeleteThermalSourceRequest :md5sum-) "c1f3d28f1b044c871e6eff2e9fc3c667")
(setf (get stdr_msgs::DeleteThermalSourceRequest :datatype-) "stdr_msgs/DeleteThermalSourceRequest")
(setf (get stdr_msgs::DeleteThermalSourceRequest :definition-)
      "string name
---


")

(setf (get stdr_msgs::DeleteThermalSourceResponse :md5sum-) "c1f3d28f1b044c871e6eff2e9fc3c667")
(setf (get stdr_msgs::DeleteThermalSourceResponse :datatype-) "stdr_msgs/DeleteThermalSourceResponse")
(setf (get stdr_msgs::DeleteThermalSourceResponse :definition-)
      "string name
---


")



(provide :stdr_msgs/DeleteThermalSource "c1f3d28f1b044c871e6eff2e9fc3c667")


