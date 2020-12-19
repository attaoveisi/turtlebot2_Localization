// Auto-generated. Do not edit!

// (in-package stdr_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ThermalSource = require('./ThermalSource.js');

//-----------------------------------------------------------

class ThermalSourceVector {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.thermal_sources = null;
    }
    else {
      if (initObj.hasOwnProperty('thermal_sources')) {
        this.thermal_sources = initObj.thermal_sources
      }
      else {
        this.thermal_sources = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ThermalSourceVector
    // Serialize message field [thermal_sources]
    // Serialize the length for message field [thermal_sources]
    bufferOffset = _serializer.uint32(obj.thermal_sources.length, buffer, bufferOffset);
    obj.thermal_sources.forEach((val) => {
      bufferOffset = ThermalSource.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ThermalSourceVector
    let len;
    let data = new ThermalSourceVector(null);
    // Deserialize message field [thermal_sources]
    // Deserialize array length for message field [thermal_sources]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.thermal_sources = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.thermal_sources[i] = ThermalSource.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.thermal_sources.forEach((val) => {
      length += ThermalSource.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'stdr_msgs/ThermalSourceVector';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dddbbf1cf2eb1ad9e8f6f398fb8b44ac';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Thermal sources list
    stdr_msgs/ThermalSource[] thermal_sources
    
    ================================================================================
    MSG: stdr_msgs/ThermalSource
    # Source description
    
    string id
    float32 degrees
    
    # sensor pose, relative to the map origin
    geometry_msgs/Pose2D pose 
    
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
    const resolved = new ThermalSourceVector(null);
    if (msg.thermal_sources !== undefined) {
      resolved.thermal_sources = new Array(msg.thermal_sources.length);
      for (let i = 0; i < resolved.thermal_sources.length; ++i) {
        resolved.thermal_sources[i] = ThermalSource.Resolve(msg.thermal_sources[i]);
      }
    }
    else {
      resolved.thermal_sources = []
    }

    return resolved;
    }
};

module.exports = ThermalSourceVector;
