;; Auto-generated. Do not edit!


(when (boundp 'stdr_msgs::DeleteRfidTag)
  (if (not (find-package "STDR_MSGS"))
    (make-package "STDR_MSGS"))
  (shadow 'DeleteRfidTag (find-package "STDR_MSGS")))
(unless (find-package "STDR_MSGS::DELETERFIDTAG")
  (make-package "STDR_MSGS::DELETERFIDTAG"))
(unless (find-package "STDR_MSGS::DELETERFIDTAGREQUEST")
  (make-package "STDR_MSGS::DELETERFIDTAGREQUEST"))
(unless (find-package "STDR_MSGS::DELETERFIDTAGRESPONSE")
  (make-package "STDR_MSGS::DELETERFIDTAGRESPONSE"))

(in-package "ROS")





(defclass stdr_msgs::DeleteRfidTagRequest
  :super ros::object
  :slots (_name ))

(defmethod stdr_msgs::DeleteRfidTagRequest
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

(defclass stdr_msgs::DeleteRfidTagResponse
  :super ros::object
  :slots ())

(defmethod stdr_msgs::DeleteRfidTagResponse
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

(defclass stdr_msgs::DeleteRfidTag
  :super ros::object
  :slots ())

(setf (get stdr_msgs::DeleteRfidTag :md5sum-) "c1f3d28f1b044c871e6eff2e9fc3c667")
(setf (get stdr_msgs::DeleteRfidTag :datatype-) "stdr_msgs/DeleteRfidTag")
(setf (get stdr_msgs::DeleteRfidTag :request) stdr_msgs::DeleteRfidTagRequest)
(setf (get stdr_msgs::DeleteRfidTag :response) stdr_msgs::DeleteRfidTagResponse)

(defmethod stdr_msgs::DeleteRfidTagRequest
  (:response () (instance stdr_msgs::DeleteRfidTagResponse :init)))

(setf (get stdr_msgs::DeleteRfidTagRequest :md5sum-) "c1f3d28f1b044c871e6eff2e9fc3c667")
(setf (get stdr_msgs::DeleteRfidTagRequest :datatype-) "stdr_msgs/DeleteRfidTagRequest")
(setf (get stdr_msgs::DeleteRfidTagRequest :definition-)
      "string name
---


")

(setf (get stdr_msgs::DeleteRfidTagResponse :md5sum-) "c1f3d28f1b044c871e6eff2e9fc3c667")
(setf (get stdr_msgs::DeleteRfidTagResponse :datatype-) "stdr_msgs/DeleteRfidTagResponse")
(setf (get stdr_msgs::DeleteRfidTagResponse :definition-)
      "string name
---


")



(provide :stdr_msgs/DeleteRfidTag "c1f3d28f1b044c871e6eff2e9fc3c667")


