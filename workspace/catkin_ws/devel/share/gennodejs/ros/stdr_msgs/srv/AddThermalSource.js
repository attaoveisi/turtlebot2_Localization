// Auto-generated. Do not edit!

// (in-package stdr_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ThermalSource = require('../msg/ThermalSource.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class AddThermalSourceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.newSource = null;
    }
    else {
      if (initObj.hasOwnProperty('newSource')) {
        this.newSource = initObj.newSource
      }
      else {
        this.newSource = new ThermalSource();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AddThermalSourceRequest
    // Serialize message field [newSource]
    bufferOffset = ThermalSource.serialize(obj.newSource, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AddThermalSourceRequest
    let len;
    let data = new AddThermalSourceRequest(null);
    // Deserialize message field [newSource]
    data.newSource = ThermalSource.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += ThermalSource.getMessageSize(object.newSource);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'stdr_msgs/AddThermalSourceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4c174e42cb7f2369736da76a09bfbaae';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    stdr_msgs/ThermalSource newSource
    
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
    const resolved = new AddThermalSourceRequest(null);
    if (msg.newSource !== undefined) {
      resolved.newSource = ThermalSource.Resolve(msg.newSource)
    }
    else {
      resolved.newSource = new ThermalSource()
    }

    return resolved;
    }
};

class AddThermalSourceResponse {
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
    // Serializes a message object of type AddThermalSourceResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AddThermalSourceResponse
    let len;
    let data = new AddThermalSourceResponse(null);
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
    return 'stdr_msgs/AddThermalSourceResponse';
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
    const resolved = new AddThermalSourceResponse(null);
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
  Request: AddThermalSourceRequest,
  Response: AddThermalSourceResponse,
  md5sum() { return '9fd17d9c0c1371182c625b3bfbbcf75f'; },
  datatype() { return 'stdr_msgs/AddThermalSource'; }
};
