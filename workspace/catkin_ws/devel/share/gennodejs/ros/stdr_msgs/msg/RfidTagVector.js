// Auto-generated. Do not edit!

// (in-package stdr_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RfidTag = require('./RfidTag.js');

//-----------------------------------------------------------

class RfidTagVector {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.rfid_tags = null;
    }
    else {
      if (initObj.hasOwnProperty('rfid_tags')) {
        this.rfid_tags = initObj.rfid_tags
      }
      else {
        this.rfid_tags = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RfidTagVector
    // Serialize message field [rfid_tags]
    // Serialize the length for message field [rfid_tags]
    bufferOffset = _serializer.uint32(obj.rfid_tags.length, buffer, bufferOffset);
    obj.rfid_tags.forEach((val) => {
      bufferOffset = RfidTag.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RfidTagVector
    let len;
    let data = new RfidTagVector(null);
    // Deserialize message field [rfid_tags]
    // Deserialize array length for message field [rfid_tags]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.rfid_tags = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.rfid_tags[i] = RfidTag.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.rfid_tags.forEach((val) => {
      length += RfidTag.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'stdr_msgs/RfidTagVector';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd1ccd79235f17c9d8c9665681cfa66f7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Rfid tag list
    stdr_msgs/RfidTag[] rfid_tags
    
    ================================================================================
    MSG: stdr_msgs/RfidTag
    # Rfid tag description
    
    string tag_id
    string message
    geometry_msgs/Pose2D pose # sensor pose, relative to the map origin
    
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
    const resolved = new RfidTagVector(null);
    if (msg.rfid_tags !== undefined) {
      resolved.rfid_tags = new Array(msg.rfid_tags.length);
      for (let i = 0; i < resolved.rfid_tags.length; ++i) {
        resolved.rfid_tags[i] = RfidTag.Resolve(msg.rfid_tags[i]);
      }
    }
    else {
      resolved.rfid_tags = []
    }

    return resolved;
    }
};

module.exports = RfidTagVector;
