; Auto-generated. Do not edit!


(cl:in-package stdr_msgs-srv)


;//! \htmlinclude MoveRobot-request.msg.html

(cl:defclass <MoveRobot-request> (roslisp-msg-protocol:ros-message)
  ((newPose
    :reader newPose
    :initarg :newPose
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D)))
)

(cl:defclass MoveRobot-request (<MoveRobot-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveRobot-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveRobot-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name stdr_msgs-srv:<MoveRobot-request> is deprecated: use stdr_msgs-srv:MoveRobot-request instead.")))

(cl:ensure-generic-function 'newPose-val :lambda-list '(m))
(cl:defmethod newPose-val ((m <MoveRobot-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stdr_msgs-srv:newPose-val is deprecated.  Use stdr_msgs-srv:newPose instead.")
  (newPose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveRobot-request>) ostream)
  "Serializes a message object of type '<MoveRobot-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'newPose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveRobot-request>) istream)
  "Deserializes a message object of type '<MoveRobot-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'newPose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveRobot-request>)))
  "Returns string type for a service object of type '<MoveRobot-request>"
  "stdr_msgs/MoveRobotRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveRobot-request)))
  "Returns string type for a service object of type 'MoveRobot-request"
  "stdr_msgs/MoveRobotRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveRobot-request>)))
  "Returns md5sum for a message object of type '<MoveRobot-request>"
  "3f8cb1536a8bfe7e956ece9331b2cd07")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveRobot-request)))
  "Returns md5sum for a message object of type 'MoveRobot-request"
  "3f8cb1536a8bfe7e956ece9331b2cd07")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveRobot-request>)))
  "Returns full string definition for message of type '<MoveRobot-request>"
  (cl:format cl:nil "geometry_msgs/Pose2D newPose~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveRobot-request)))
  "Returns full string definition for message of type 'MoveRobot-request"
  (cl:format cl:nil "geometry_msgs/Pose2D newPose~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveRobot-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'newPose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveRobot-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveRobot-request
    (cl:cons ':newPose (newPose msg))
))
;//! \htmlinclude MoveRobot-response.msg.html

(cl:defclass <MoveRobot-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass MoveRobot-response (<MoveRobot-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveRobot-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveRobot-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name stdr_msgs-srv:<MoveRobot-response> is deprecated: use stdr_msgs-srv:MoveRobot-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveRobot-response>) ostream)
  "Serializes a message object of type '<MoveRobot-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveRobot-response>) istream)
  "Deserializes a message object of type '<MoveRobot-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveRobot-response>)))
  "Returns string type for a service object of type '<MoveRobot-response>"
  "stdr_msgs/MoveRobotResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveRobot-response)))
  "Returns string type for a service object of type 'MoveRobot-response"
  "stdr_msgs/MoveRobotResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveRobot-response>)))
  "Returns md5sum for a message object of type '<MoveRobot-response>"
  "3f8cb1536a8bfe7e956ece9331b2cd07")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveRobot-response)))
  "Returns md5sum for a message object of type 'MoveRobot-response"
  "3f8cb1536a8bfe7e956ece9331b2cd07")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveRobot-response>)))
  "Returns full string definition for message of type '<MoveRobot-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveRobot-response)))
  "Returns full string definition for message of type 'MoveRobot-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveRobot-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveRobot-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveRobot-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MoveRobot)))
  'MoveRobot-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MoveRobot)))
  'MoveRobot-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveRobot)))
  "Returns string type for a service object of type '<MoveRobot>"
  "stdr_msgs/MoveRobot")