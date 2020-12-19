;; Auto-generated. Do not edit!


(when (boundp 'stdr_msgs::DeleteSoundSource)
  (if (not (find-package "STDR_MSGS"))
    (make-package "STDR_MSGS"))
  (shadow 'DeleteSoundSource (find-package "STDR_MSGS")))
(unless (find-package "STDR_MSGS::DELETESOUNDSOURCE")
  (make-package "STDR_MSGS::DELETESOUNDSOURCE"))
(unless (find-package "STDR_MSGS::DELETESOUNDSOURCEREQUEST")
  (make-package "STDR_MSGS::DELETESOUNDSOURCEREQUEST"))
(unless (find-package "STDR_MSGS::DELETESOUNDSOURCERESPONSE")
  (make-package "STDR_MSGS::DELETESOUNDSOURCERESPONSE"))

(in-package "ROS")





(defclass stdr_msgs::DeleteSoundSourceRequest
  :super ros::object
  :slots (_name ))

(defmethod stdr_msgs::DeleteSoundSourceRequest
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

(defclass stdr_msgs::DeleteSoundSourceResponse
  :super ros::object
  :slots ())

(defmethod stdr_msgs::DeleteSoundSourceResponse
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

(defclass stdr_msgs::DeleteSoundSource
  :super ros::object
  :slots ())

(setf (get stdr_msgs::DeleteSoundSource :md5sum-) "c1f3d28f1b044c871e6eff2e9fc3c667")
(setf (get stdr_msgs::DeleteSoundSource :datatype-) "stdr_msgs/DeleteSoundSource")
(setf (get stdr_msgs::DeleteSoundSource :request) stdr_msgs::DeleteSoundSourceRequest)
(setf (get stdr_msgs::DeleteSoundSource :response) stdr_msgs::DeleteSoundSourceResponse)

(defmethod stdr_msgs::DeleteSoundSourceRequest
  (:response () (instance stdr_msgs::DeleteSoundSourceResponse :init)))

(setf (get stdr_msgs::DeleteSoundSourceRequest :md5sum-) "c1f3d28f1b044c871e6eff2e9fc3c667")
(setf (get stdr_msgs::DeleteSoundSourceRequest :datatype-) "stdr_msgs/DeleteSoundSourceRequest")
(setf (get stdr_msgs::DeleteSoundSourceRequest :definition-)
      "string name
---


")

(setf (get stdr_msgs::DeleteSoundSourceResponse :md5sum-) "c1f3d28f1b044c871e6eff2e9fc3c667")
(setf (get stdr_msgs::DeleteSoundSourceResponse :datatype-) "stdr_msgs/DeleteSoundSourceResponse")
(setf (get stdr_msgs::DeleteSoundSourceResponse :definition-)
      "string name
---


")



(provide :stdr_msgs/DeleteSoundSource "c1f3d28f1b044c871e6eff2e9fc3c667")


