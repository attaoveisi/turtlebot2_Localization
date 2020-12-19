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

class KinematicMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
      this.a_ux_ux = null;
      this.a_ux_uy = null;
      this.a_ux_w = null;
      this.a_uy_ux = null;
      this.a_uy_uy = null;
      this.a_uy_w = null;
      this.a_w_ux = null;
      this.a_w_uy = null;
      this.a_w_w = null;
      this.a_g_ux = null;
      this.a_g_uy = null;
      this.a_g_w = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = '';
      }
      if (initObj.hasOwnProperty('a_ux_ux')) {
        this.a_ux_ux = initObj.a_ux_ux
      }
      else {
        this.a_ux_ux = 0.0;
      }
      if (initObj.hasOwnProperty('a_ux_uy')) {
        this.a_ux_uy = initObj.a_ux_uy
      }
      else {
        this.a_ux_uy = 0.0;
      }
      if (initObj.hasOwnProperty('a_ux_w')) {
        this.a_ux_w = initObj.a_ux_w
      }
      else {
        this.a_ux_w = 0.0;
      }
      if (initObj.hasOwnProperty('a_uy_ux')) {
        this.a_uy_ux = initObj.a_uy_ux
      }
      else {
        this.a_uy_ux = 0.0;
      }
      if (initObj.hasOwnProperty('a_uy_uy')) {
        this.a_uy_uy = initObj.a_uy_uy
      }
      else {
        this.a_uy_uy = 0.0;
      }
      if (initObj.hasOwnProperty('a_uy_w')) {
        this.a_uy_w = initObj.a_uy_w
      }
      else {
        this.a_uy_w = 0.0;
      }
      if (initObj.hasOwnProperty('a_w_ux')) {
        this.a_w_ux = initObj.a_w_ux
      }
      else {
        this.a_w_ux = 0.0;
      }
      if (initObj.hasOwnProperty('a_w_uy')) {
        this.a_w_uy = initObj.a_w_uy
      }
      else {
        this.a_w_uy = 0.0;
      }
      if (initObj.hasOwnProperty('a_w_w')) {
        this.a_w_w = initObj.a_w_w
      }
      else {
        this.a_w_w = 0.0;
      }
      if (initObj.hasOwnProperty('a_g_ux')) {
        this.a_g_ux = initObj.a_g_ux
      }
      else {
        this.a_g_ux = 0.0;
      }
      if (initObj.hasOwnProperty('a_g_uy')) {
        this.a_g_uy = initObj.a_g_uy
      }
      else {
        this.a_g_uy = 0.0;
      }
      if (initObj.hasOwnProperty('a_g_w')) {
        this.a_g_w = initObj.a_g_w
      }
      else {
        this.a_g_w = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type KinematicMsg
    // Serialize message field [type]
    bufferOffset = _serializer.string(obj.type, buffer, bufferOffset);
    // Serialize message field [a_ux_ux]
    bufferOffset = _serializer.float32(obj.a_ux_ux, buffer, bufferOffset);
    // Serialize message field [a_ux_uy]
    bufferOffset = _serializer.float32(obj.a_ux_uy, buffer, bufferOffset);
    // Serialize message field [a_ux_w]
    bufferOffset = _serializer.float32(obj.a_ux_w, buffer, bufferOffset);
    // Serialize message field [a_uy_ux]
    bufferOffset = _serializer.float32(obj.a_uy_ux, buffer, bufferOffset);
    // Serialize message field [a_uy_uy]
    bufferOffset = _serializer.float32(obj.a_uy_uy, buffer, bufferOffset);
    // Serialize message field [a_uy_w]
    bufferOffset = _serializer.float32(obj.a_uy_w, buffer, bufferOffset);
    // Serialize message field [a_w_ux]
    bufferOffset = _serializer.float32(obj.a_w_ux, buffer, bufferOffset);
    // Serialize message field [a_w_uy]
    bufferOffset = _serializer.float32(obj.a_w_uy, buffer, bufferOffset);
    // Serialize message field [a_w_w]
    bufferOffset = _serializer.float32(obj.a_w_w, buffer, bufferOffset);
    // Serialize message field [a_g_ux]
    bufferOffset = _serializer.float32(obj.a_g_ux, buffer, bufferOffset);
    // Serialize message field [a_g_uy]
    bufferOffset = _serializer.float32(obj.a_g_uy, buffer, bufferOffset);
    // Serialize message field [a_g_w]
    bufferOffset = _serializer.float32(obj.a_g_w, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type KinematicMsg
    let len;
    let data = new KinematicMsg(null);
    // Deserialize message field [type]
    data.type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [a_ux_ux]
    data.a_ux_ux = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [a_ux_uy]
    data.a_ux_uy = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [a_ux_w]
    data.a_ux_w = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [a_uy_ux]
    data.a_uy_ux = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [a_uy_uy]
    data.a_uy_uy = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [a_uy_w]
    data.a_uy_w = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [a_w_ux]
    data.a_w_ux = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [a_w_uy]
    data.a_w_uy = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [a_w_w]
    data.a_w_w = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [a_g_ux]
    data.a_g_ux = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [a_g_uy]
    data.a_g_uy = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [a_g_w]
    data.a_g_w = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.type.length;
    return length + 52;
  }

  static datatype() {
    // Returns string type for a message object
    return 'stdr_msgs/KinematicMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '75d30a9f55f18dd9353f0abaabfaf261';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new KinematicMsg(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = ''
    }

    if (msg.a_ux_ux !== undefined) {
      resolved.a_ux_ux = msg.a_ux_ux;
    }
    else {
      resolved.a_ux_ux = 0.0
    }

    if (msg.a_ux_uy !== undefined) {
      resolved.a_ux_uy = msg.a_ux_uy;
    }
    else {
      resolved.a_ux_uy = 0.0
    }

    if (msg.a_ux_w !== undefined) {
      resolved.a_ux_w = msg.a_ux_w;
    }
    else {
      resolved.a_ux_w = 0.0
    }

    if (msg.a_uy_ux !== undefined) {
      resolved.a_uy_ux = msg.a_uy_ux;
    }
    else {
      resolved.a_uy_ux = 0.0
    }

    if (msg.a_uy_uy !== undefined) {
      resolved.a_uy_uy = msg.a_uy_uy;
    }
    else {
      resolved.a_uy_uy = 0.0
    }

    if (msg.a_uy_w !== undefined) {
      resolved.a_uy_w = msg.a_uy_w;
    }
    else {
      resolved.a_uy_w = 0.0
    }

    if (msg.a_w_ux !== undefined) {
      resolved.a_w_ux = msg.a_w_ux;
    }
    else {
      resolved.a_w_ux = 0.0
    }

    if (msg.a_w_uy !== undefined) {
      resolved.a_w_uy = msg.a_w_uy;
    }
    else {
      resolved.a_w_uy = 0.0
    }

    if (msg.a_w_w !== undefined) {
      resolved.a_w_w = msg.a_w_w;
    }
    else {
      resolved.a_w_w = 0.0
    }

    if (msg.a_g_ux !== undefined) {
      resolved.a_g_ux = msg.a_g_ux;
    }
    else {
      resolved.a_g_ux = 0.0
    }

    if (msg.a_g_uy !== undefined) {
      resolved.a_g_uy = msg.a_g_uy;
    }
    else {
      resolved.a_g_uy = 0.0
    }

    if (msg.a_g_w !== undefined) {
      resolved.a_g_w = msg.a_g_w;
    }
    else {
      resolved.a_g_w = 0.0
    }

    return resolved;
    }
};

module.exports = KinematicMsg;
