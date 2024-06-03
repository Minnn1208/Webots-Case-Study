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

class display_image_loadRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.filename = null;
    }
    else {
      if (initObj.hasOwnProperty('filename')) {
        this.filename = initObj.filename
      }
      else {
        this.filename = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type display_image_loadRequest
    // Serialize message field [filename]
    bufferOffset = _serializer.string(obj.filename, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type display_image_loadRequest
    let len;
    let data = new display_image_loadRequest(null);
    // Deserialize message field [filename]
    data.filename = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.filename);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'webots_ros/display_image_loadRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '030824f52a0628ead956fb9d67e66ae9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string filename
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new display_image_loadRequest(null);
    if (msg.filename !== undefined) {
      resolved.filename = msg.filename;
    }
    else {
      resolved.filename = ''
    }

    return resolved;
    }
};

class display_image_loadResponse {
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
    // Serializes a message object of type display_image_loadResponse
    // Serialize message field [ir]
    bufferOffset = _serializer.uint64(obj.ir, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type display_image_loadResponse
    let len;
    let data = new display_image_loadResponse(null);
    // Deserialize message field [ir]
    data.ir = _deserializer.uint64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'webots_ros/display_image_loadResponse';
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
    const resolved = new display_image_loadResponse(null);
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
  Request: display_image_loadRequest,
  Response: display_image_loadResponse,
  md5sum() { return '5c71ee48be952f1ade34fd3da67710f3'; },
  datatype() { return 'webots_ros/display_image_load'; }
};
