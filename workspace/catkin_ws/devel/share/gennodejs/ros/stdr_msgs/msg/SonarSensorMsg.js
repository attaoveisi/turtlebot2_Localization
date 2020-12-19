// Auto-generated. Do not edit!

// (in-package stdr_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Noise = require('./Noise.js');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class SonarSensorMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.maxRange = null;
      this.minRange = null;
      this.coneAngle = null;
      this.frequency = null;
      this.noise = null;
      this.frame_id = null;
      this.pose = null;
    }
    else {
      if (initObj.hasOwnProperty('maxRange')) {
        this.maxRange = initObj.maxRange
      }
      else {
        this.maxRange = 0.0;
      }
      if (initObj.hasOwnProperty('minRange')) {
        this.minRange = initObj.minRange
      }
      else {
        this.minRange = 0.0;
      }
      if (initObj.hasOwnProperty('coneAngle')) {
        this.coneAngle = initObj.coneAngle
      }
      else {
        this.coneAngle = 0.0;
      }
      if (initObj.hasOwnProperty('frequency')) {
        this.frequency = initObj.frequency
      }
      else {
        this.frequency = 0.0;
      }
      if (initObj.hasOwnProperty('noise')) {
        this.noise = initObj.noise
      }
      else {
        this.noise = new Noise();
      }
      if (initObj.hasOwnProperty('frame_id')) {
        this.frame_id = initObj.frame_id
      }
      else {
        this.frame_id = '';
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.Pose2D();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SonarSensorMsg
    // Serialize message field [maxRange]
    bufferOffset = _serializer.float32(obj.maxRange, buffer, bufferOffset);
    // Serialize message field [minRange]
    bufferOffset = _serializer.float32(obj.minRange, buffer, bufferOffset);
    // Serialize message field [coneAngle]
    bufferOffset = _serializer.float32(obj.coneAngle, buffer, bufferOffset);
    // Serialize message field [frequency]
    bufferOffset = _serializer.float32(obj.frequency, buffer, bufferOffset);
    // Serialize message field [noise]
    bufferOffset = Noise.serialize(obj.noise, buffer, bufferOffset);
    // Serialize message field [frame_id]
    bufferOffset = _serializer.string(obj.frame_id, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Pose2D.serialize(obj.pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SonarSensorMsg
    let len;
    let data = new SonarSensorMsg(null);
    // Deserialize message field [maxRange]
    data.maxRange = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [minRange]
    data.minRange = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [coneAngle]
    data.coneAngle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [frequency]
    data.frequency = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [noise]
    data.noise = Noise.deserialize(buffer, bufferOffset);
    // Deserialize message field [frame_id]
    data.frame_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Pose2D.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.frame_id.length;
    return length + 53;
  }

  static datatype() {
    // Returns string type for a message object
    return 'stdr_msgs/SonarSensorMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e8b8bd75b2e357572ea0c9ee72ed58c1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Rfid sensor description
    float32 maxRange
    float32 minRange
    float32 coneAngle
    
    float32 frequency
    stdr_msgs/Noise noise
    
    string frame_id
    geometry_msgs/Pose2D pose # sensor pose, relative to robot center
    
    ================================================================================
    MSG: stdr_msgs/Noise
    bool noise
    float32 noiseMean
    float32 noiseStd
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SonarSensorMsg(null);
    if (msg.maxRange !== undefined) {
      resolved.maxRange = msg.maxRange;
    }
    else {
      resolved.maxRange = 0.0
    }

    if (msg.minRange !== undefined) {
      resolved.minRange = msg.minRange;
    }
    else {
      resolved.minRange = 0.0
    }

    if (msg.coneAngle !== undefined) {
      resolved.coneAngle = msg.coneAngle;
    }
    else {
      resolved.coneAngle = 0.0
    }

    if (msg.frequency !== undefined) {
      resolved.frequency = msg.frequency;
    }
    else {
      resolved.frequency = 0.0
    }

    if (msg.noise !== undefined) {
      resolved.noise = Noise.Resolve(msg.noise)
    }
    else {
      resolved.noise = new Noise()
    }

    if (msg.frame_id !== undefined) {
      resolved.frame_id = msg.frame_id;
    }
    else {
      resolved.frame_id = ''
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.Pose2D.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.Pose2D()
    }

    return resolved;
    }
};

module.exports = SonarSensorMsg;
