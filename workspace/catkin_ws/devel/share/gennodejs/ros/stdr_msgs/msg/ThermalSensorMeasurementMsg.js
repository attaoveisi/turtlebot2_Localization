// Auto-generated. Do not edit!

// (in-package stdr_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ThermalSensorMeasurementMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.thermal_source_degrees = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('thermal_source_degrees')) {
        this.thermal_source_degrees = initObj.thermal_source_degrees
      }
      else {
        this.thermal_source_degrees = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ThermalSensorMeasurementMsg
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [thermal_source_degrees]
    bufferOffset = _arraySerializer.float32(obj.thermal_source_degrees, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ThermalSensorMeasurementMsg
    let len;
    let data = new ThermalSensorMeasurementMsg(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [thermal_source_degrees]
    data.thermal_source_degrees = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 4 * object.thermal_source_degrees.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'stdr_msgs/ThermalSensorMeasurementMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e4b704fefcd6eb849f164e31d5084251';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Sensor measurement description
    
    Header header
    
    float32[] thermal_source_degrees
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ThermalSensorMeasurementMsg(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.thermal_source_degrees !== undefined) {
      resolved.thermal_source_degrees = msg.thermal_source_degrees;
    }
    else {
      resolved.thermal_source_degrees = []
    }

    return resolved;
    }
};

module.exports = ThermalSensorMeasurementMsg;
