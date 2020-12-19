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

class RfidSensorMeasurementMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.rfid_tags_ids = null;
      this.rfid_tags_msgs = null;
      this.rfid_tags_dbs = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('rfid_tags_ids')) {
        this.rfid_tags_ids = initObj.rfid_tags_ids
      }
      else {
        this.rfid_tags_ids = [];
      }
      if (initObj.hasOwnProperty('rfid_tags_msgs')) {
        this.rfid_tags_msgs = initObj.rfid_tags_msgs
      }
      else {
        this.rfid_tags_msgs = [];
      }
      if (initObj.hasOwnProperty('rfid_tags_dbs')) {
        this.rfid_tags_dbs = initObj.rfid_tags_dbs
      }
      else {
        this.rfid_tags_dbs = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RfidSensorMeasurementMsg
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [rfid_tags_ids]
    bufferOffset = _arraySerializer.string(obj.rfid_tags_ids, buffer, bufferOffset, null);
    // Serialize message field [rfid_tags_msgs]
    bufferOffset = _arraySerializer.string(obj.rfid_tags_msgs, buffer, bufferOffset, null);
    // Serialize message field [rfid_tags_dbs]
    bufferOffset = _arraySerializer.float32(obj.rfid_tags_dbs, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RfidSensorMeasurementMsg
    let len;
    let data = new RfidSensorMeasurementMsg(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [rfid_tags_ids]
    data.rfid_tags_ids = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [rfid_tags_msgs]
    data.rfid_tags_msgs = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [rfid_tags_dbs]
    data.rfid_tags_dbs = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.rfid_tags_ids.forEach((val) => {
      length += 4 + val.length;
    });
    object.rfid_tags_msgs.forEach((val) => {
      length += 4 + val.length;
    });
    length += 4 * object.rfid_tags_dbs.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'stdr_msgs/RfidSensorMeasurementMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '274b41808759cfa6e05b69149e9ea1ed';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Rfid sensor measurement description - all vectors must have the same size
    Header header
    
    string[] rfid_tags_ids
    string[] rfid_tags_msgs
    float32[] rfid_tags_dbs
    
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
    const resolved = new RfidSensorMeasurementMsg(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.rfid_tags_ids !== undefined) {
      resolved.rfid_tags_ids = msg.rfid_tags_ids;
    }
    else {
      resolved.rfid_tags_ids = []
    }

    if (msg.rfid_tags_msgs !== undefined) {
      resolved.rfid_tags_msgs = msg.rfid_tags_msgs;
    }
    else {
      resolved.rfid_tags_msgs = []
    }

    if (msg.rfid_tags_dbs !== undefined) {
      resolved.rfid_tags_dbs = msg.rfid_tags_dbs;
    }
    else {
      resolved.rfid_tags_dbs = []
    }

    return resolved;
    }
};

module.exports = RfidSensorMeasurementMsg;
