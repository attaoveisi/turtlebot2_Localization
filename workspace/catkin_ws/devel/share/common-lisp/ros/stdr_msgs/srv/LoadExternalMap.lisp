; Auto-generated. Do not edit!


(cl:in-package stdr_msgs-srv)


;//! \htmlinclude LoadExternalMap-request.msg.html

(cl:defclass <LoadExternalMap-request> (roslisp-msg-protocol:ros-message)
  ((map
    :reader map
    :initarg :map
    :type nav_msgs-msg:OccupancyGrid
    :initform (cl:make-instance 'nav_msgs-msg:OccupancyGrid)))
)

(cl:defclass LoadExternalMap-request (<LoadExternalMap-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LoadExternalMap-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LoadExternalMap-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name stdr_msgs-srv:<LoadExternalMap-request> is deprecated: use stdr_msgs-srv:LoadExternalMap-request instead.")))

(cl:ensure-generic-function 'map-val :lambda-list '(m))
(cl:defmethod map-val ((m <LoadExternalMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stdr_msgs-srv:map-val is deprecated.  Use stdr_msgs-srv:map instead.")
  (map m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LoadExternalMap-request>) ostream)
  "Serializes a message object of type '<LoadExternalMap-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'map) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LoadExternalMap-request>) istream)
  "Deserializes a message object of type '<LoadExternalMap-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'map) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LoadExternalMap-request>)))
  "Returns string type for a service object of type '<LoadExternalMap-request>"
  "stdr_msgs/LoadExternalMapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoadExternalMap-request)))
  "Returns string type for a service object of type 'LoadExternalMap-request"
  "stdr_msgs/LoadExternalMapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LoadExternalMap-request>)))
  "Returns md5sum for a message object of type '<LoadExternalMap-request>"
  "6cdd0a18e0aff5b0a3ca2326a89b54ff")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LoadExternalMap-request)))
  "Returns md5sum for a message object of type 'LoadExternalMap-request"
  "6cdd0a18e0aff5b0a3ca2326a89b54ff")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LoadExternalMap-request>)))
  "Returns full string definition for message of type '<LoadExternalMap-request>"
  (cl:format cl:nil "nav_msgs/OccupancyGrid  map~%~%================================================================================~%MSG: nav_msgs/OccupancyGrid~%# This represents a 2-D grid map, in which each cell represents the probability of~%# occupancy.~%~%Header header ~%~%#MetaData for the map~%MapMetaData info~%~%# The map data, in row-major order, starting with (0,0).  Occupancy~%# probabilities are in the range [0,100].  Unknown is -1.~%int8[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: nav_msgs/MapMetaData~%# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LoadExternalMap-request)))
  "Returns full string definition for message of type 'LoadExternalMap-request"
  (cl:format cl:nil "nav_msgs/OccupancyGrid  map~%~%================================================================================~%MSG: nav_msgs/OccupancyGrid~%# This represents a 2-D grid map, in which each cell represents the probability of~%# occupancy.~%~%Header header ~%~%#MetaData for the map~%MapMetaData info~%~%# The map data, in row-major order, starting with (0,0).  Occupancy~%# probabilities are in the range [0,100].  Unknown is -1.~%int8[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: nav_msgs/MapMetaData~%# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LoadExternalMap-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'map))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LoadExternalMap-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LoadExternalMap-request
    (cl:cons ':map (map msg))
))
;//! \htmlinclude LoadExternalMap-response.msg.html

(cl:defclass <LoadExternalMap-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass LoadExternalMap-response (<LoadExternalMap-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LoadExternalMap-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LoadExternalMap-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name stdr_msgs-srv:<LoadExternalMap-response> is deprecated: use stdr_msgs-srv:LoadExternalMap-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LoadExternalMap-response>) ostream)
  "Serializes a message object of type '<LoadExternalMap-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LoadExternalMap-response>) istream)
  "Deserializes a message object of type '<LoadExternalMap-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LoadExternalMap-response>)))
  "Returns string type for a service object of type '<LoadExternalMap-response>"
  "stdr_msgs/LoadExternalMapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoadExternalMap-response)))
  "Returns string type for a service object of type 'LoadExternalMap-response"
  "stdr_msgs/LoadExternalMapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LoadExternalMap-response>)))
  "Returns md5sum for a message object of type '<LoadExternalMap-response>"
  "6cdd0a18e0aff5b0a3ca2326a89b54ff")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LoadExternalMap-response)))
  "Returns md5sum for a message object of type 'LoadExternalMap-response"
  "6cdd0a18e0aff5b0a3ca2326a89b54ff")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LoadExternalMap-response>)))
  "Returns full string definition for message of type '<LoadExternalMap-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LoadExternalMap-response)))
  "Returns full string definition for message of type 'LoadExternalMap-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LoadExternalMap-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LoadExternalMap-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LoadExternalMap-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LoadExternalMap)))
  'LoadExternalMap-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LoadExternalMap)))
  'LoadExternalMap-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoadExternalMap)))
  "Returns string type for a service object of type '<LoadExternalMap>"
  "stdr_msgs/LoadExternalMap")