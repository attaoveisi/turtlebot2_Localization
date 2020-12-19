// Auto-generated. Do not edit!

// (in-package stdr_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let FootprintMsg = require('./FootprintMsg.js');
let LaserSensorMsg = require('./LaserSensorMsg.js');
let SonarSensorMsg = require('./SonarSensorMsg.js');
let RfidSensorMsg = require('./RfidSensorMsg.js');
let CO2SensorMsg = require('./CO2SensorMsg.js');
let SoundSensorMsg = require('./SoundSensorMsg.js');
let ThermalSensorMsg = require('./ThermalSensorMsg.js');
let KinematicMsg = require('./KinematicMsg.js');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class RobotMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.initialPose = null;
      this.footprint = null;
      this.laserSensors = null;
      this.sonarSensors = null;
      this.rfidSensors = null;
      this.co2Sensors = null;
      this.soundSensors = null;
      this.thermalSensors = null;
      this.kinematicModel = null;
    }
    else {
      if (initObj.hasOwnProperty('initialPose')) {
        this.initialPose = initObj.initialPose
      }
      else {
        this.initialPose = new geometry_msgs.msg.Pose2D();
      }
      if (initObj.hasOwnProperty('footprint')) {
        this.footprint = initObj.footprint
      }
      else {
        this.footprint = new FootprintMsg();
      }
      if (initObj.hasOwnProperty('laserSensors')) {
        this.laserSensors = initObj.laserSensors
      }
      else {
        this.laserSensors = [];
      }
      if (initObj.hasOwnProperty('sonarSensors')) {
        this.sonarSensors = initObj.sonarSensors
      }
      else {
        this.sonarSensors = [];
      }
      if (initObj.hasOwnProperty('rfidSensors')) {
        this.rfidSensors = initObj.rfidSensors
      }
      else {
        this.rfidSensors = [];
      }
      if (initObj.hasOwnProperty('co2Sensors')) {
        this.co2Sensors = initObj.co2Sensors
      }
      else {
        this.co2Sensors = [];
      }
      if (initObj.hasOwnProperty('soundSensors')) {
        this.soundSensors = initObj.soundSensors
      }
      else {
        this.soundSensors = [];
      }
      if (initObj.hasOwnProperty('thermalSensors')) {
        this.thermalSensors = initObj.thermalSensors
      }
      else {
        this.thermalSensors = [];
      }
      if (initObj.hasOwnProperty('kinematicModel')) {
        this.kinematicModel = initObj.kinematicModel
      }
      else {
        this.kinematicModel = new KinematicMsg();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotMsg
    // Serialize message field [initialPose]
    bufferOffset = geometry_msgs.msg.Pose2D.serialize(obj.initialPose, buffer, bufferOffset);
    // Serialize message field [footprint]
    bufferOffset = FootprintMsg.serialize(obj.footprint, buffer, bufferOffset);
    // Serialize message field [laserSensors]
    // Serialize the length for message field [laserSensors]
    bufferOffset = _serializer.uint32(obj.laserSensors.length, buffer, bufferOffset);
    obj.laserSensors.forEach((val) => {
      bufferOffset = LaserSensorMsg.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [sonarSensors]
    // Serialize the length for message field [sonarSensors]
    bufferOffset = _serializer.uint32(obj.sonarSensors.length, buffer, bufferOffset);
    obj.sonarSensors.forEach((val) => {
      bufferOffset = SonarSensorMsg.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [rfidSensors]
    // Serialize the length for message field [rfidSensors]
    bufferOffset = _serializer.uint32(obj.rfidSensors.length, buffer, bufferOffset);
    obj.rfidSensors.forEach((val) => {
      bufferOffset = RfidSensorMsg.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [co2Sensors]
    // Serialize the length for message field [co2Sensors]
    bufferOffset = _serializer.uint32(obj.co2Sensors.length, buffer, bufferOffset);
    obj.co2Sensors.forEach((val) => {
      bufferOffset = CO2SensorMsg.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [soundSensors]
    // Serialize the length for message field [soundSensors]
    bufferOffset = _serializer.uint32(obj.soundSensors.length, buffer, bufferOffset);
    obj.soundSensors.forEach((val) => {
      bufferOffset = SoundSensorMsg.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [thermalSensors]
    // Serialize the length for message field [thermalSensors]
    bufferOffset = _serializer.uint32(obj.thermalSensors.length, buffer, bufferOffset);
    obj.thermalSensors.forEach((val) => {
      bufferOffset = ThermalSensorMsg.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [kinematicModel]
    bufferOffset = KinematicMsg.serialize(obj.kinematicModel, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotMsg
    let len;
    let data = new RobotMsg(null);
    // Deserialize message field [initialPose]
    data.initialPose = geometry_msgs.msg.Pose2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [footprint]
    data.footprint = FootprintMsg.deserialize(buffer, bufferOffset);
    // Deserialize message field [laserSensors]
    // Deserialize array length for message field [laserSensors]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.laserSensors = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.laserSensors[i] = LaserSensorMsg.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [sonarSensors]
    // Deserialize array length for message field [sonarSensors]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.sonarSensors = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.sonarSensors[i] = SonarSensorMsg.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [rfidSensors]
    // Deserialize array length for message field [rfidSensors]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.rfidSensors = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.rfidSensors[i] = RfidSensorMsg.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [co2Sensors]
    // Deserialize array length for message field [co2Sensors]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.co2Sensors = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.co2Sensors[i] = CO2SensorMsg.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [soundSensors]
    // Deserialize array length for message field [soundSensors]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.soundSensors = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.soundSensors[i] = SoundSensorMsg.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [thermalSensors]
    // Deserialize array length for message field [thermalSensors]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.thermalSensors = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.thermalSensors[i] = ThermalSensorMsg.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [kinematicModel]
    data.kinematicModel = KinematicMsg.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += FootprintMsg.getMessageSize(object.footprint);
    object.laserSensors.forEach((val) => {
      length += LaserSensorMsg.getMessageSize(val);
    });
    object.sonarSensors.forEach((val) => {
      length += SonarSensorMsg.getMessageSize(val);
    });
    object.rfidSensors.forEach((val) => {
      length += RfidSensorMsg.getMessageSize(val);
    });
    object.co2Sensors.forEach((val) => {
      length += CO2SensorMsg.getMessageSize(val);
    });
    object.soundSensors.forEach((val) => {
      length += SoundSensorMsg.getMessageSize(val);
    });
    object.thermalSensors.forEach((val) => {
      length += ThermalSensorMsg.getMessageSize(val);
    });
    length += KinematicMsg.getMessageSize(object.kinematicModel);
    return length + 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'stdr_msgs/RobotMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ffa138f7f6a9c979acfb84d2c8e73a39';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Pose2D initialPose
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotMsg(null);
    if (msg.initialPose !== undefined) {
      resolved.initialPose = geometry_msgs.msg.Pose2D.Resolve(msg.initialPose)
    }
    else {
      resolved.initialPose = new geometry_msgs.msg.Pose2D()
    }

    if (msg.footprint !== undefined) {
      resolved.footprint = FootprintMsg.Resolve(msg.footprint)
    }
    else {
      resolved.footprint = new FootprintMsg()
    }

    if (msg.laserSensors !== undefined) {
      resolved.laserSensors = new Array(msg.laserSensors.length);
      for (let i = 0; i < resolved.laserSensors.length; ++i) {
        resolved.laserSensors[i] = LaserSensorMsg.Resolve(msg.laserSensors[i]);
      }
    }
    else {
      resolved.laserSensors = []
    }

    if (msg.sonarSensors !== undefined) {
      resolved.sonarSensors = new Array(msg.sonarSensors.length);
      for (let i = 0; i < resolved.sonarSensors.length; ++i) {
        resolved.sonarSensors[i] = SonarSensorMsg.Resolve(msg.sonarSensors[i]);
      }
    }
    else {
      resolved.sonarSensors = []
    }

    if (msg.rfidSensors !== undefined) {
      resolved.rfidSensors = new Array(msg.rfidSensors.length);
      for (let i = 0; i < resolved.rfidSensors.length; ++i) {
        resolved.rfidSensors[i] = RfidSensorMsg.Resolve(msg.rfidSensors[i]);
      }
    }
    else {
      resolved.rfidSensors = []
    }

    if (msg.co2Sensors !== undefined) {
      resolved.co2Sensors = new Array(msg.co2Sensors.length);
      for (let i = 0; i < resolved.co2Sensors.length; ++i) {
        resolved.co2Sensors[i] = CO2SensorMsg.Resolve(msg.co2Sensors[i]);
      }
    }
    else {
      resolved.co2Sensors = []
    }

    if (msg.soundSensors !== undefined) {
      resolved.soundSensors = new Array(msg.soundSensors.length);
      for (let i = 0; i < resolved.soundSensors.length; ++i) {
        resolved.soundSensors[i] = SoundSensorMsg.Resolve(msg.soundSensors[i]);
      }
    }
    else {
      resolved.soundSensors = []
    }

    if (msg.thermalSensors !== undefined) {
      resolved.thermalSensors = new Array(msg.thermalSensors.length);
      for (let i = 0; i < resolved.thermalSensors.length; ++i) {
        resolved.thermalSensors[i] = ThermalSensorMsg.Resolve(msg.thermalSensors[i]);
      }
    }
    else {
      resolved.thermalSensors = []
    }

    if (msg.kinematicModel !== undefined) {
      resolved.kinematicModel = KinematicMsg.Resolve(msg.kinematicModel)
    }
    else {
      resolved.kinematicModel = new KinematicMsg()
    }

    return resolved;
    }
};

module.exports = RobotMsg;
