// Auto-generated. Do not edit!

// (in-package webots_ros.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class robot_set_modeRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.arg = null;
      this.mode = null;
    }
    else {
      if (initObj.hasOwnProperty('arg')) {
        this.arg = initObj.arg
      }
      else {
        this.arg = [];
      }
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type robot_set_modeRequest
    // Serialize message field [arg]
    bufferOffset = _arraySerializer.char(obj.arg, buffer, bufferOffset, null);
    // Serialize message field [mode]
    bufferOffset = _serializer.int32(obj.mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type robot_set_modeRequest
    let len;
    let data = new robot_set_modeRequest(null);
    // Deserialize message field [arg]
    data.arg = _arrayDeserializer.char(buffer, bufferOffset, null)
    // Deserialize message field [mode]
    data.mode = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.arg.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'webots_ros/robot_set_modeRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '352bd896b9891f9831590c1a8d916605';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    char[] arg
    int32 mode
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new robot_set_modeRequest(null);
    if (msg.arg !== undefined) {
      resolved.arg = msg.arg;
    }
    else {
      resolved.arg = []
    }

    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = 0
    }

    return resolved;
    }
};

class robot_set_modeResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type robot_set_modeResponse
    // Serialize message field [success]
    bufferOffset = _serializer.int8(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type robot_set_modeResponse
    let len;
    let data = new robot_set_modeResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'webots_ros/robot_set_modeResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0b13460cb14006d3852674b4c614f25f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 success
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new robot_set_modeResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: robot_set_modeRequest,
  Response: robot_set_modeResponse,
  md5sum() { return 'ef8b4f277f1a6d92a8c4d6a68a3850de'; },
  datatype() { return 'webots_ros/robot_set_mode'; }
};
