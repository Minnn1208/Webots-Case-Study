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

class supervisor_set_labelRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.label = null;
      this.xpos = null;
      this.ypos = null;
      this.size = null;
      this.color = null;
      this.transparency = null;
      this.font = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('label')) {
        this.label = initObj.label
      }
      else {
        this.label = '';
      }
      if (initObj.hasOwnProperty('xpos')) {
        this.xpos = initObj.xpos
      }
      else {
        this.xpos = 0.0;
      }
      if (initObj.hasOwnProperty('ypos')) {
        this.ypos = initObj.ypos
      }
      else {
        this.ypos = 0.0;
      }
      if (initObj.hasOwnProperty('size')) {
        this.size = initObj.size
      }
      else {
        this.size = 0.0;
      }
      if (initObj.hasOwnProperty('color')) {
        this.color = initObj.color
      }
      else {
        this.color = 0;
      }
      if (initObj.hasOwnProperty('transparency')) {
        this.transparency = initObj.transparency
      }
      else {
        this.transparency = 0.0;
      }
      if (initObj.hasOwnProperty('font')) {
        this.font = initObj.font
      }
      else {
        this.font = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type supervisor_set_labelRequest
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    // Serialize message field [label]
    bufferOffset = _serializer.string(obj.label, buffer, bufferOffset);
    // Serialize message field [xpos]
    bufferOffset = _serializer.float64(obj.xpos, buffer, bufferOffset);
    // Serialize message field [ypos]
    bufferOffset = _serializer.float64(obj.ypos, buffer, bufferOffset);
    // Serialize message field [size]
    bufferOffset = _serializer.float64(obj.size, buffer, bufferOffset);
    // Serialize message field [color]
    bufferOffset = _serializer.int32(obj.color, buffer, bufferOffset);
    // Serialize message field [transparency]
    bufferOffset = _serializer.float64(obj.transparency, buffer, bufferOffset);
    // Serialize message field [font]
    bufferOffset = _serializer.string(obj.font, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type supervisor_set_labelRequest
    let len;
    let data = new supervisor_set_labelRequest(null);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [label]
    data.label = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [xpos]
    data.xpos = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ypos]
    data.ypos = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [size]
    data.size = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [color]
    data.color = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [transparency]
    data.transparency = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [font]
    data.font = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.label);
    length += _getByteLength(object.font);
    return length + 48;
  }

  static datatype() {
    // Returns string type for a service object
    return 'webots_ros/supervisor_set_labelRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '383d62b53c2b62c441c9996504515955';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 id
    string label
    float64 xpos
    float64 ypos
    float64 size
    int32 color
    float64 transparency
    string font
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new supervisor_set_labelRequest(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.label !== undefined) {
      resolved.label = msg.label;
    }
    else {
      resolved.label = ''
    }

    if (msg.xpos !== undefined) {
      resolved.xpos = msg.xpos;
    }
    else {
      resolved.xpos = 0.0
    }

    if (msg.ypos !== undefined) {
      resolved.ypos = msg.ypos;
    }
    else {
      resolved.ypos = 0.0
    }

    if (msg.size !== undefined) {
      resolved.size = msg.size;
    }
    else {
      resolved.size = 0.0
    }

    if (msg.color !== undefined) {
      resolved.color = msg.color;
    }
    else {
      resolved.color = 0
    }

    if (msg.transparency !== undefined) {
      resolved.transparency = msg.transparency;
    }
    else {
      resolved.transparency = 0.0
    }

    if (msg.font !== undefined) {
      resolved.font = msg.font;
    }
    else {
      resolved.font = ''
    }

    return resolved;
    }
};

class supervisor_set_labelResponse {
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
    // Serializes a message object of type supervisor_set_labelResponse
    // Serialize message field [success]
    bufferOffset = _serializer.int8(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type supervisor_set_labelResponse
    let len;
    let data = new supervisor_set_labelResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'webots_ros/supervisor_set_labelResponse';
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
    const resolved = new supervisor_set_labelResponse(null);
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
  Request: supervisor_set_labelRequest,
  Response: supervisor_set_labelResponse,
  md5sum() { return '5ee78a04723ef11d3847c8d8c557058c'; },
  datatype() { return 'webots_ros/supervisor_set_label'; }
};
