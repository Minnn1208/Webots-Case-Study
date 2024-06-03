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

class node_get_field_by_indexRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.node = null;
      this.index = null;
      this.proto = null;
    }
    else {
      if (initObj.hasOwnProperty('node')) {
        this.node = initObj.node
      }
      else {
        this.node = 0;
      }
      if (initObj.hasOwnProperty('index')) {
        this.index = initObj.index
      }
      else {
        this.index = 0;
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
    // Serializes a message object of type node_get_field_by_indexRequest
    // Serialize message field [node]
    bufferOffset = _serializer.uint64(obj.node, buffer, bufferOffset);
    // Serialize message field [index]
    bufferOffset = _serializer.uint32(obj.index, buffer, bufferOffset);
    // Serialize message field [proto]
    bufferOffset = _serializer.bool(obj.proto, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type node_get_field_by_indexRequest
    let len;
    let data = new node_get_field_by_indexRequest(null);
    // Deserialize message field [node]
    data.node = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [index]
    data.index = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [proto]
    data.proto = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 13;
  }

  static datatype() {
    // Returns string type for a service object
    return 'webots_ros/node_get_field_by_indexRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9b49b500661f860e9fb67bf931d052d8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 node
    uint32 index
    bool proto
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new node_get_field_by_indexRequest(null);
    if (msg.node !== undefined) {
      resolved.node = msg.node;
    }
    else {
      resolved.node = 0
    }

    if (msg.index !== undefined) {
      resolved.index = msg.index;
    }
    else {
      resolved.index = 0
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

class node_get_field_by_indexResponse {
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
    // Serializes a message object of type node_get_field_by_indexResponse
    // Serialize message field [field]
    bufferOffset = _serializer.uint64(obj.field, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type node_get_field_by_indexResponse
    let len;
    let data = new node_get_field_by_indexResponse(null);
    // Deserialize message field [field]
    data.field = _deserializer.uint64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'webots_ros/node_get_field_by_indexResponse';
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
    const resolved = new node_get_field_by_indexResponse(null);
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
  Request: node_get_field_by_indexRequest,
  Response: node_get_field_by_indexResponse,
  md5sum() { return '24bbfc7fa321c886f58114d630e6f1fb'; },
  datatype() { return 'webots_ros/node_get_field_by_index'; }
};
