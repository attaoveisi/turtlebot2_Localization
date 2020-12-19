// Auto-generated. Do not edit!

// (in-package stdr_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Noise {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.noise = null;
      this.noiseMean = null;
      this.noiseStd = null;
    }
    else {
      if (initObj.hasOwnProperty('noise')) {
        this.noise = initObj.noise
      }
      else {
        this.noise = false;
      }
      if (initObj.hasOwnProperty('noiseMean')) {
        this.noiseMean = initObj.noiseMean
      }
      else {
        this.noiseMean = 0.0;
      }
      if (initObj.hasOwnProperty('noiseStd')) {
        this.noiseStd = initObj.noiseStd
      }
      else {
        this.noiseStd = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Noise
    // Serialize message field [noise]
    bufferOffset = _serializer.bool(obj.noise, buffer, bufferOffset);
    // Serialize message field [noiseMean]
    bufferOffset = _serializer.float32(obj.noiseMean, buffer, bufferOffset);
    // Serialize message field [noiseStd]
    bufferOffset = _serializer.float32(obj.noiseStd, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Noise
    let len;
    let data = new Noise(null);
    // Deserialize message field [noise]
    data.noise = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [noiseMean]
    data.noiseMean = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [noiseStd]
    data.noiseStd = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'stdr_msgs/Noise';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a882ac96256e87f019f2655e9d7f0f81';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool noise
    float32 noiseMean
    float32 noiseStd
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Noise(null);
    if (msg.noise !== undefined) {
      resolved.noise = msg.noise;
    }
    else {
      resolved.noise = false
    }

    if (msg.noiseMean !== undefined) {
      resolved.noiseMean = msg.noiseMean;
    }
    else {
      resolved.noiseMean = 0.0
    }

    if (msg.noiseStd !== undefined) {
      resolved.noiseStd = msg.noiseStd;
    }
    else {
      resolved.noiseStd = 0.0
    }

    return resolved;
    }
};

module.exports = Noise;
