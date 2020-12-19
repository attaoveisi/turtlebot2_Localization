// Auto-generated. Do not edit!

// (in-package stdr_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let RobotIndexedMsg = require('../msg/RobotIndexedMsg.js');

//-----------------------------------------------------------

class RegisterGuiRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RegisterGuiRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RegisterGuiRequest
    let len;
    let data = new RegisterGuiRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'stdr_msgs/RegisterGuiRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RegisterGuiRequest(null);
    return resolved;
    }
};

class RegisterGuiResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.robots = null;
    }
    else {
      if (initObj.hasOwnProperty('robots')) {
        this.robots = initObj.robots
      }
      else {
        this.robots = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RegisterGuiResponse
    // Serialize message field [robots]
    // Serialize the length for message field [robots]
    bufferOffset = _serializer.uint32(obj.robots.length, buffer, bufferOffset);
    obj.robots.forEach((val) => {
      bufferOffset = RobotIndexedMsg.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RegisterGuiResponse
    let len;
    let data = new RegisterGuiResponse(null);
    // Deserialize message field [robots]
    // Deserialize array length for message field [robots]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.robots = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.robots[i] = RobotIndexedMsg.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.robots.forEach((val) => {
      length += RobotIndexedMsg.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'stdr_msgs/RegisterGuiResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5ba49d43b5f1ad43f9cbea11348366c5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    stdr_msgs/RobotIndexedMsg[] robots
    
    
    ================================================================================
    MSG: stdr_msgs/RobotIndexedMsg
    string name
    stdr_msgs/RobotMsg robot
    
    ================================================================================
    MSG: stdr_msgs/RobotMsg
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
    const resolved = new RegisterGuiResponse(null);
    if (msg.robots !== undefined) {
      resolved.robots = new Array(msg.robots.length);
      for (let i = 0; i < resolved.robots.length; ++i) {
        resolved.robots[i] = RobotIndexedMsg.Resolve(msg.robots[i]);
      }
    }
    else {
      resolved.robots = []
    }

    return resolved;
    }
};

module.exports = {
  Request: RegisterGuiRequest,
  Response: RegisterGuiResponse,
  md5sum() { return '5ba49d43b5f1ad43f9cbea11348366c5'; },
  datatype() { return 'stdr_msgs/RegisterGui'; }
};
