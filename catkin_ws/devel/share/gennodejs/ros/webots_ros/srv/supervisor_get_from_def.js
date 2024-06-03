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

class supervisor_get_from_defRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.proto = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('proto')) {
        this.proto = initObj.proto
      }
      else {
        this.proto = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type supervisor_get_from_defRequest
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [proto]
    bufferOffset = _serializer.uint64(obj.proto, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type supervisor_get_from_defRequest
    let len;
    let data = new supervisor_get_from_defRequest(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [proto]
    data.proto = _deserializer.uint64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'webots_ros/supervisor_get_from_defRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '178cf7495b55fb0d5a2e01c746ab4754';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string name
    uint64 proto
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new supervisor_get_from_defRequest(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.proto !== undefined) {
      resolved.proto = msg.proto;
    }
    else {
      resolved.proto = 0
    }

    return resolved;
    }
};

class supervisor_get_from_defResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.node = null;
    }
    else {
      if (initObj.hasOwnProperty('node')) {
        this.node = initObj.node
      }
      else {
        this.node = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type supervisor_get_from_defResponse
    // Serialize message field [node]
    bufferOffset = _serializer.uint64(obj.node, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type supervisor_get_from_defResponse
    let len;
    let data = new supervisor_get_from_defResponse(null);
    // Deserialize message field [node]
    data.node = _deserializer.uint64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'webots_ros/supervisor_get_from_defResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '364f76d0680a5475664d98abd705f036';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 node
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new supervisor_get_from_defResponse(null);
    if (msg.node !== undefined) {
      resolved.node = msg.node;
    }
    else {
      resolved.node = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: supervisor_get_from_defRequest,
  Response: supervisor_get_from_defResponse,
  md5sum() { return '6f2b7f6ebcd546dbcec5be5ad142c165'; },
  datatype() { return 'webots_ros/supervisor_get_from_def'; }
};
