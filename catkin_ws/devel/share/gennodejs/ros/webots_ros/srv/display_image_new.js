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

class display_image_newRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.width = null;
      this.height = null;
      this.data = null;
      this.format = null;
    }
    else {
      if (initObj.hasOwnProperty('width')) {
        this.width = initObj.width
      }
      else {
        this.width = 0;
      }
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = 0;
      }
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = [];
      }
      if (initObj.hasOwnProperty('format')) {
        this.format = initObj.format
      }
      else {
        this.format = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type display_image_newRequest
    // Serialize message field [width]
    bufferOffset = _serializer.int32(obj.width, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = _serializer.int32(obj.height, buffer, bufferOffset);
    // Serialize message field [data]
    bufferOffset = _arraySerializer.char(obj.data, buffer, bufferOffset, null);
    // Serialize message field [format]
    bufferOffset = _serializer.int32(obj.format, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type display_image_newRequest
    let len;
    let data = new display_image_newRequest(null);
    // Deserialize message field [width]
    data.width = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [data]
    data.data = _arrayDeserializer.char(buffer, bufferOffset, null)
    // Deserialize message field [format]
    data.format = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.data.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'webots_ros/display_image_newRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1ca26e28adfc59a4ed4a4edca51b7548';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 width
    int32 height
    char[] data
    int32 format
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new display_image_newRequest(null);
    if (msg.width !== undefined) {
      resolved.width = msg.width;
    }
    else {
      resolved.width = 0
    }

    if (msg.height !== undefined) {
      resolved.height = msg.height;
    }
    else {
      resolved.height = 0
    }

    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = []
    }

    if (msg.format !== undefined) {
      resolved.format = msg.format;
    }
    else {
      resolved.format = 0
    }

    return resolved;
    }
};

class display_image_newResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ir = null;
    }
    else {
      if (initObj.hasOwnProperty('ir')) {
        this.ir = initObj.ir
      }
      else {
        this.ir = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type display_image_newResponse
    // Serialize message field [ir]
    bufferOffset = _serializer.uint64(obj.ir, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type display_image_newResponse
    let len;
    let data = new display_image_newResponse(null);
    // Deserialize message field [ir]
    data.ir = _deserializer.uint64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'webots_ros/display_image_newResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '062bd6ec8c99fd70e30cc24256f9226a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 ir
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new display_image_newResponse(null);
    if (msg.ir !== undefined) {
      resolved.ir = msg.ir;
    }
    else {
      resolved.ir = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: display_image_newRequest,
  Response: display_image_newResponse,
  md5sum() { return '80a036f354960d09033ab0f8d6dffcf7'; },
  datatype() { return 'webots_ros/display_image_new'; }
};
