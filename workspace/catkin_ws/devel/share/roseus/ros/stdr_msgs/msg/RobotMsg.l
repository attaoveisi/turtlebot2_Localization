;; Auto-generated. Do not edit!


(when (boundp 'stdr_msgs::RobotMsg)
  (if (not (find-package "STDR_MSGS"))
    (make-package "STDR_MSGS"))
  (shadow 'RobotMsg (find-package "STDR_MSGS")))
(unless (find-package "STDR_MSGS::ROBOTMSG")
  (make-package "STDR_MSGS::ROBOTMSG"))

(in-package "ROS")
;;//! \htmlinclude RobotMsg.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass stdr_msgs::RobotMsg
  :super ros::object
  :slots (_initialPose _footprint _laserSensors _sonarSensors _rfidSensors _co2Sensors _soundSensors _thermalSensors _kinematicModel ))

(defmethod stdr_msgs::RobotMsg
  (:init
   (&key
    ((:initialPose __initialPose) (instance geometry_msgs::Pose2D :init))
    ((:footprint __footprint) (instance stdr_msgs::FootprintMsg :init))
    ((:laserSensors __laserSensors) (let (r) (dotimes (i 0) (push (instance stdr_msgs::LaserSensorMsg :init) r)) r))
    ((:sonarSensors __sonarSensors) (let (r) (dotimes (i 0) (push (instance stdr_msgs::SonarSensorMsg :init) r)) r))
    ((:rfidSensors __rfidSensors) (let (r) (dotimes (i 0) (push (instance stdr_msgs::RfidSensorMsg :init) r)) r))
    ((:co2Sensors __co2Sensors) (let (r) (dotimes (i 0) (push (instance stdr_msgs::CO2SensorMsg :init) r)) r))
    ((:soundSensors __soundSensors) (let (r) (dotimes (i 0) (push (instance stdr_msgs::SoundSensorMsg :init) r)) r))
    ((:thermalSensors __thermalSensors) (let (r) (dotimes (i 0) (push (instance stdr_msgs::ThermalSensorMsg :init) r)) r))
    ((:kinematicModel __kinematicModel) (instance stdr_msgs::KinematicMsg :init))
    )
   (send-super :init)
   (setq _initialPose __initialPose)
   (setq _footprint __footprint)
   (setq _laserSensors __laserSensors)
   (setq _sonarSensors __sonarSensors)
   (setq _rfidSensors __rfidSensors)
   (setq _co2Sensors __co2Sensors)
   (setq _soundSensors __soundSensors)
   (setq _thermalSensors __thermalSensors)
   (setq _kinematicModel __kinematicModel)
   self)
  (:initialPose
   (&rest __initialPose)
   (if (keywordp (car __initialPose))
       (send* _initialPose __initialPose)
     (progn
       (if __initialPose (setq _initialPose (car __initialPose)))
       _initialPose)))
  (:footprint
   (&rest __footprint)
   (if (keywordp (car __footprint))
       (send* _footprint __footprint)
     (progn
       (if __footprint (setq _footprint (car __footprint)))
       _footprint)))
  (:laserSensors
   (&rest __laserSensors)
   (if (keywordp (car __laserSensors))
       (send* _laserSensors __laserSensors)
     (progn
       (if __laserSensors (setq _laserSensors (car __laserSensors)))
       _laserSensors)))
  (:sonarSensors
   (&rest __sonarSensors)
   (if (keywordp (car __sonarSensors))
       (send* _sonarSensors __sonarSensors)
     (progn
       (if __sonarSensors (setq _sonarSensors (car __sonarSensors)))
       _sonarSensors)))
  (:rfidSensors
   (&rest __rfidSensors)
   (if (keywordp (car __rfidSensors))
       (send* _rfidSensors __rfidSensors)
     (progn
       (if __rfidSensors (setq _rfidSensors (car __rfidSensors)))
       _rfidSensors)))
  (:co2Sensors
   (&rest __co2Sensors)
   (if (keywordp (car __co2Sensors))
       (send* _co2Sensors __co2Sensors)
     (progn
       (if __co2Sensors (setq _co2Sensors (car __co2Sensors)))
       _co2Sensors)))
  (:soundSensors
   (&rest __soundSensors)
   (if (keywordp (car __soundSensors))
       (send* _soundSensors __soundSensors)
     (progn
       (if __soundSensors (setq _soundSensors (car __soundSensors)))
       _soundSensors)))
  (:thermalSensors
   (&rest __thermalSensors)
   (if (keywordp (car __thermalSensors))
       (send* _thermalSensors __thermalSensors)
     (progn
       (if __thermalSensors (setq _thermalSensors (car __thermalSensors)))
       _thermalSensors)))
  (:kinematicModel
   (&rest __kinematicModel)
   (if (keywordp (car __kinematicModel))
       (send* _kinematicModel __kinematicModel)
     (progn
       (if __kinematicModel (setq _kinematicModel (car __kinematicModel)))
       _kinematicModel)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose2D _initialPose
    (send _initialPose :serialization-length)
    ;; stdr_msgs/FootprintMsg _footprint
    (send _footprint :serialization-length)
    ;; stdr_msgs/LaserSensorMsg[] _laserSensors
    (apply #'+ (send-all _laserSensors :serialization-length)) 4
    ;; stdr_msgs/SonarSensorMsg[] _sonarSensors
    (apply #'+ (send-all _sonarSensors :serialization-length)) 4
    ;; stdr_msgs/RfidSensorMsg[] _rfidSensors
    (apply #'+ (send-all _rfidSensors :serialization-length)) 4
    ;; stdr_msgs/CO2SensorMsg[] _co2Sensors
    (apply #'+ (send-all _co2Sensors :serialization-length)) 4
    ;; stdr_msgs/SoundSensorMsg[] _soundSensors
    (apply #'+ (send-all _soundSensors :serialization-length)) 4
    ;; stdr_msgs/ThermalSensorMsg[] _thermalSensors
    (apply #'+ (send-all _thermalSensors :serialization-length)) 4
    ;; stdr_msgs/KinematicMsg _kinematicModel
    (send _kinematicModel :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose2D _initialPose
       (send _initialPose :serialize s)
     ;; stdr_msgs/FootprintMsg _footprint
       (send _footprint :serialize s)
     ;; stdr_msgs/LaserSensorMsg[] _laserSensors
     (write-long (length _laserSensors) s)
     (dolist (elem _laserSensors)
       (send elem :serialize s)
       )
     ;; stdr_msgs/SonarSensorMsg[] _sonarSensors
     (write-long (length _sonarSensors) s)
     (dolist (elem _sonarSensors)
       (send elem :serialize s)
       )
     ;; stdr_msgs/RfidSensorMsg[] _rfidSensors
     (write-long (length _rfidSensors) s)
     (dolist (elem _rfidSensors)
       (send elem :serialize s)
       )
     ;; stdr_msgs/CO2SensorMsg[] _co2Sensors
     (write-long (length _co2Sensors) s)
     (dolist (elem _co2Sensors)
       (send elem :serialize s)
       )
     ;; stdr_msgs/SoundSensorMsg[] _soundSensors
     (write-long (length _soundSensors) s)
     (dolist (elem _soundSensors)
       (send elem :serialize s)
       )
     ;; stdr_msgs/ThermalSensorMsg[] _thermalSensors
     (write-long (length _thermalSensors) s)
     (dolist (elem _thermalSensors)
       (send elem :serialize s)
       )
     ;; stdr_msgs/KinematicMsg _kinematicModel
       (send _kinematicModel :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose2D _initialPose
     (send _initialPose :deserialize buf ptr-) (incf ptr- (send _initialPose :serialization-length))
   ;; stdr_msgs/FootprintMsg _footprint
     (send _footprint :deserialize buf ptr-) (incf ptr- (send _footprint :serialization-length))
   ;; stdr_msgs/LaserSensorMsg[] _laserSensors
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _laserSensors (let (r) (dotimes (i n) (push (instance stdr_msgs::LaserSensorMsg :init) r)) r))
     (dolist (elem- _laserSensors)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; stdr_msgs/SonarSensorMsg[] _sonarSensors
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sonarSensors (let (r) (dotimes (i n) (push (instance stdr_msgs::SonarSensorMsg :init) r)) r))
     (dolist (elem- _sonarSensors)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; stdr_msgs/RfidSensorMsg[] _rfidSensors
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _rfidSensors (let (r) (dotimes (i n) (push (instance stdr_msgs::RfidSensorMsg :init) r)) r))
     (dolist (elem- _rfidSensors)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; stdr_msgs/CO2SensorMsg[] _co2Sensors
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _co2Sensors (let (r) (dotimes (i n) (push (instance stdr_msgs::CO2SensorMsg :init) r)) r))
     (dolist (elem- _co2Sensors)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; stdr_msgs/SoundSensorMsg[] _soundSensors
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _soundSensors (let (r) (dotimes (i n) (push (instance stdr_msgs::SoundSensorMsg :init) r)) r))
     (dolist (elem- _soundSensors)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; stdr_msgs/ThermalSensorMsg[] _thermalSensors
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _thermalSensors (let (r) (dotimes (i n) (push (instance stdr_msgs::ThermalSensorMsg :init) r)) r))
     (dolist (elem- _thermalSensors)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; stdr_msgs/KinematicMsg _kinematicModel
     (send _kinematicModel :deserialize buf ptr-) (incf ptr- (send _kinematicModel :serialization-length))
   ;;
   self)
  )

(setf (get stdr_msgs::RobotMsg :md5sum-) "ffa138f7f6a9c979acfb84d2c8e73a39")
(setf (get stdr_msgs::RobotMsg :datatype-) "stdr_msgs/RobotMsg")
(setf (get stdr_msgs::RobotMsg :definition-)
      "geometry_msgs/Pose2D initialPose

stdr_msgs/FootprintMsg footprint

stdr_msgs/LaserSensorMsg[] laserSensors
stdr_msgs/SonarSensorMsg[] sonarSensors
stdr_msgs/RfidSensorMsg[] rfidSensors
stdr_msgs/CO2SensorMsg[] co2Sensors
stdr_msgs/SoundSensorMsg[] soundSensors
stdr_msgs/ThermalSensorMsg[] thermalSensors

stdr_msgs/KinematicMsg kinematicModel

================================================================================
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta

================================================================================
MSG: stdr_msgs/FootprintMsg
geometry_msgs/Point[] points
float32 radius # for circular footprints

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: stdr_msgs/LaserSensorMsg
# Laser Sensor description
float32 maxAngle
float32 minAngle
float32 maxRange
float32 minRange
int32 numRays

stdr_msgs/Noise noise

float32 frequency

string frame_id
geometry_msgs/Pose2D pose # sensor pose, relative to robot center

================================================================================
MSG: stdr_msgs/Noise
bool noise
float32 noiseMean
float32 noiseStd

================================================================================
MSG: stdr_msgs/SonarSensorMsg
# Rfid sensor description
float32 maxRange
float32 minRange
float32 coneAngle

float32 frequency
stdr_msgs/Noise noise

string frame_id
geometry_msgs/Pose2D pose # sensor pose, relative to robot center

================================================================================
MSG: stdr_msgs/RfidSensorMsg
# Rfid sensor description
float32 maxRange
float32 angleSpan
float32 signalCutoff

float32 frequency

string frame_id
geometry_msgs/Pose2D pose # sensor pose, relative to robot center

================================================================================
MSG: stdr_msgs/CO2SensorMsg
# Sensor description

float32 maxRange
float32 frequency
string frame_id

# sensor pose, relative to robot center
geometry_msgs/Pose2D pose 

================================================================================
MSG: stdr_msgs/SoundSensorMsg
# Sensor description

float32 maxRange
float32 frequency
float32 angleSpan
string frame_id

# sensor pose, relative to robot center
geometry_msgs/Pose2D pose 

================================================================================
MSG: stdr_msgs/ThermalSensorMsg
# Sensor description

float32 maxRange
float32 frequency
float32 angleSpan
string frame_id

# sensor pose, relative to robot center
geometry_msgs/Pose2D pose 

================================================================================
MSG: stdr_msgs/KinematicMsg
# Container for the kinematic model parameters. The parameters selected/
# are quite general. For a more accurate motion model a per-kinematic model
# approach should be followed.
# Parameters are in the form a_C_D, where C is affected by D.
# ux is the linear speed
# uy is the lateral speed (for omni vehicles)
# w is the angular speed
# g is a cofficient that directly affects the angular speed
# For more information check the MotionController::sampleVelocities function.

string type
float32 a_ux_ux
float32 a_ux_uy
float32 a_ux_w
float32 a_uy_ux
float32 a_uy_uy
float32 a_uy_w
float32 a_w_ux
float32 a_w_uy
float32 a_w_w
float32 a_g_ux
float32 a_g_uy
float32 a_g_w

")



(provide :stdr_msgs/RobotMsg "ffa138f7f6a9c979acfb84d2c8e73a39")


