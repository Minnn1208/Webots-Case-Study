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

class node_get_fieldRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.node = null;
      this.fieldName = null;
      this.proto = null;
    }
    else {
      if (initObj.hasOwnProperty('node')) {
        this.node = initObj.node
      }
      else {
        this.node = 0;
      }
      if (initObj.hasOwnProperty('fieldName')) {
        this.fieldName = initObj.fieldName
      }
      else {
        this.fieldName = '';
      }
      if (initObj.hasOwnProperty('proto')) {
        this.proto = initObj.proto
      }
      else {
        this.proto = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type node_get_fieldRequest
    // Serialize message field [node]
    bufferOffset = _serializer.uint64(obj.node, buffer, bufferOffset);
    // Serialize message field [fieldName]
    bufferOffset = _serializer.string(obj.fieldName, buffer, bufferOffset);
    // Serialize message field [proto]
    bufferOffset = _serializer.bool(obj.proto, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type node_get_fieldRequest
    let len;
    let data = new node_get_fieldRequest(null);
    // Deserialize message field [node]
    data.node = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [fieldName]
    data.fieldName = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [proto]
    data.proto = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.fieldName);
    return length + 13;
  }

  static datatype() {
    // Returns string type for a service object
    return 'webots_ros/node_get_fieldRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '70442a735f06b354d9436522613f78f5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 node
    string fieldName
    bool proto
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new node_get_fieldRequest(null);
    if (msg.node !== undefined) {
      resolved.node = msg.node;
    }
    else {
      resolved.node = 0
    }

    if (msg.fieldName !== undefined) {
      resolved.fieldName = msg.fieldName;
    }
    else {
      resolved.fieldName = ''
    }

    if (msg.proto !== undefined) {
      resolved.proto = msg.proto;
    }
    else {
      resolved.proto = false
    }

    return resolved;
    }
};

class node_get_fieldResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.field = null;
    }
    else {
      if (initObj.hasOwnProperty('field')) {
        this.field = initObj.field
      }
      else {
        this.field = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type node_get_fieldResponse
    // Serialize message field [field]
    bufferOffset = _serializer.uint64(obj.field, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type node_get_fieldResponse
    let len;
    let data = new node_get_fieldResponse(null);
    // Deserialize message field [field]
    data.field = _deserializer.uint64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'webots_ros/node_get_fieldResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6e05f2ccbc5e22655a0890e2557862bd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 field
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new node_get_fieldResponse(null);
    if (msg.field !== undefined) {
      resolved.field = msg.field;
    }
    else {
      resolved.field = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: node_get_fieldRequest,
  Response: node_get_fieldResponse,
  md5sum() { return '80105ddcb86dd98488ad3cf099686b86'; },
  datatype() { return 'webots_ros/node_get_field'; }
};
