// Auto-generated. Do not edit!

// (in-package stdr_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CO2Source = require('./CO2Source.js');

//-----------------------------------------------------------

class CO2SourceVector {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.co2_sources = null;
    }
    else {
      if (initObj.hasOwnProperty('co2_sources')) {
        this.co2_sources = initObj.co2_sources
      }
      else {
        this.co2_sources = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CO2SourceVector
    // Serialize message field [co2_sources]
    // Serialize the length for message field [co2_sources]
    bufferOffset = _serializer.uint32(obj.co2_sources.length, buffer, bufferOffset);
    obj.co2_sources.forEach((val) => {
      bufferOffset = CO2Source.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CO2SourceVector
    let len;
    let data = new CO2SourceVector(null);
    // Deserialize message field [co2_sources]
    // Deserialize array length for message field [co2_sources]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.co2_sources = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.co2_sources[i] = CO2Source.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.co2_sources.forEach((val) => {
      length += CO2Source.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'stdr_msgs/CO2SourceVector';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5ded45505bc7155e81a2d6033817c7f3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # CO2 sources list
    
    stdr_msgs/CO2Source[] co2_sources
    
    ================================================================================
    MSG: stdr_msgs/CO2Source
    # Source description
    
    string id
    float32 ppm
    
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
    const resolved = new CO2SourceVector(null);
    if (msg.co2_sources !== undefined) {
      resolved.co2_sources = new Array(msg.co2_sources.length);
      for (let i = 0; i < resolved.co2_sources.length; ++i) {
        resolved.co2_sources[i] = CO2Source.Resolve(msg.co2_sources[i]);
      }
    }
    else {
      resolved.co2_sources = []
    }

    return resolved;
    }
};

module.exports = CO2SourceVector;
