// Auto-generated. Do not edit!

// (in-package webots_demo.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Goalname {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.goal_name = null;
    }
    else {
      if (initObj.hasOwnProperty('goal_name')) {
        this.goal_name = initObj.goal_name
      }
      else {
        this.goal_name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Goalname
    // Serialize message field [goal_name]
    bufferOffset = _serializer.string(obj.goal_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Goalname
    let len;
    let data = new Goalname(null);
    // Deserialize message field [goal_name]
    data.goal_name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.goal_name);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'webots_demo/Goalname';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '254bb0d4018de3d871badc783fa8b12a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string goal_name
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Goalname(null);
    if (msg.goal_name !== undefined) {
      resolved.goal_name = msg.goal_name;
    }
    else {
      resolved.goal_name = ''
    }

    return resolved;
    }
};

module.exports = Goalname;
