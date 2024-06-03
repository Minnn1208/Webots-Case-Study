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

class display_set_fontRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.font = null;
      this.size = null;
      this.antiAliasing = null;
    }
    else {
      if (initObj.hasOwnProperty('font')) {
        this.font = initObj.font
      }
      else {
        this.font = '';
      }
      if (initObj.hasOwnProperty('size')) {
        this.size = initObj.size
      }
      else {
        this.size = 0;
      }
      if (initObj.hasOwnProperty('antiAliasing')) {
        this.antiAliasing = initObj.antiAliasing
      }
      else {
        this.antiAliasing = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type display_set_fontRequest
    // Serialize message field [font]
    bufferOffset = _serializer.string(obj.font, buffer, bufferOffset);
    // Serialize message field [size]
    bufferOffset = _serializer.int32(obj.size, buffer, bufferOffset);
    // Serialize message field [antiAliasing]
    bufferOffset = _serializer.uint8(obj.antiAliasing, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type display_set_fontRequest
    let len;
    let data = new display_set_fontRequest(null);
    // Deserialize message field [font]
    data.font = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [size]
    data.size = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [antiAliasing]
    data.antiAliasing = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.font);
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'webots_ros/display_set_fontRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '988e22c5bdd5c0730231987f4e04ae3a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string font
    int32 size
    uint8 antiAliasing
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new display_set_fontRequest(null);
    if (msg.font !== undefined) {
      resolved.font = msg.font;
    }
    else {
      resolved.font = ''
    }

    if (msg.size !== undefined) {
      resolved.size = msg.size;
    }
    else {
      resolved.size = 0
    }

    if (msg.antiAliasing !== undefined) {
      resolved.antiAliasing = msg.antiAliasing;
    }
    else {
      resolved.antiAliasing = 0
    }

    return resolved;
    }
};

class display_set_fontResponse {
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
    // Serializes a message object of type display_set_fontResponse
    // Serialize message field [success]
    bufferOffset = _serializer.int8(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type display_set_fontResponse
    let len;
    let data = new display_set_fontResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'webots_ros/display_set_fontResponse';
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
    const resolved = new display_set_fontResponse(null);
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
  Request: display_set_fontRequest,
  Response: display_set_fontResponse,
  md5sum() { return '78ff6c1f16d92deedcc7d16bd2cddfbf'; },
  datatype() { return 'webots_ros/display_set_font'; }
};
