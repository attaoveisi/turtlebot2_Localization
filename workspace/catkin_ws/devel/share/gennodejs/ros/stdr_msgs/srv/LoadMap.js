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


//-----------------------------------------------------------

class LoadMapRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mapFile = null;
    }
    else {
      if (initObj.hasOwnProperty('mapFile')) {
        this.mapFile = initObj.mapFile
      }
      else {
        this.mapFile = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LoadMapRequest
    // Serialize message field [mapFile]
    bufferOffset = _serializer.string(obj.mapFile, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LoadMapRequest
    let len;
    let data = new LoadMapRequest(null);
    // Deserialize message field [mapFile]
    data.mapFile = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.mapFile.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'stdr_msgs/LoadMapRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '656f50b5e78328d62ac1c4a5c19fefd5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string mapFile
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LoadMapRequest(null);
    if (msg.mapFile !== undefined) {
      resolved.mapFile = msg.mapFile;
    }
    else {
      resolved.mapFile = ''
    }

    return resolved;
    }
};

class LoadMapResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LoadMapResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LoadMapResponse
    let len;
    let data = new LoadMapResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'stdr_msgs/LoadMapResponse';
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
    const resolved = new LoadMapResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: LoadMapRequest,
  Response: LoadMapResponse,
  md5sum() { return '656f50b5e78328d62ac1c4a5c19fefd5'; },
  datatype() { return 'stdr_msgs/LoadMap'; }
};
