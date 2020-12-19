// Auto-generated. Do not edit!

// (in-package stdr_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RfidTag = require('../msg/RfidTag.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class AddRfidTagRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.newTag = null;
    }
    else {
      if (initObj.hasOwnProperty('newTag')) {
        this.newTag = initObj.newTag
      }
      else {
        this.newTag = new RfidTag();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AddRfidTagRequest
    // Serialize message field [newTag]
    bufferOffset = RfidTag.serialize(obj.newTag, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AddRfidTagRequest
    let len;
    let data = new AddRfidTagRequest(null);
    // Deserialize message field [newTag]
    data.newTag = RfidTag.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += RfidTag.getMessageSize(object.newTag);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'stdr_msgs/AddRfidTagRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e6bb1380792d35db5a38d02485c68a1d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    stdr_msgs/RfidTag newTag
    
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
    const resolved = new AddRfidTagRequest(null);
    if (msg.newTag !== undefined) {
      resolved.newTag = RfidTag.Resolve(msg.newTag)
    }
    else {
      resolved.newTag = new RfidTag()
    }

    return resolved;
    }
};

class AddRfidTagResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AddRfidTagResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AddRfidTagResponse
    let len;
    let data = new AddRfidTagResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.message.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'stdr_msgs/AddRfidTagResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '937c9679a518e3a18d831e57125ea522';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string message
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AddRfidTagResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: AddRfidTagRequest,
  Response: AddRfidTagResponse,
  md5sum() { return '257a3ebd6cd76d8346fa749295629845'; },
  datatype() { return 'stdr_msgs/AddRfidTag'; }
};
