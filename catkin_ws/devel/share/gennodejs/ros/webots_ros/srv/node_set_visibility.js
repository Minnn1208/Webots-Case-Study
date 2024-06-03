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

class node_set_visibilityRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.node = null;
      this.from = null;
      this.visible = null;
    }
    else {
      if (initObj.hasOwnProperty('node')) {
        this.node = initObj.node
      }
      else {
        this.node = 0;
      }
      if (initObj.hasOwnProperty('from')) {
        this.from = initObj.from
      }
      else {
        this.from = 0;
      }
      if (initObj.hasOwnProperty('visible')) {
        this.visible = initObj.visible
      }
      else {
        this.visible = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type node_set_visibilityRequest
    // Serialize message field [node]
    bufferOffset = _serializer.uint64(obj.node, buffer, bufferOffset);
    // Serialize message field [from]
    bufferOffset = _serializer.uint64(obj.from, buffer, bufferOffset);
    // Serialize message field [visible]
    bufferOffset = _serializer.uint8(obj.visible, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type node_set_visibilityRequest
    let len;
    let data = new node_set_visibilityRequest(null);
    // Deserialize message field [node]
    data.node = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [from]
    data.from = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [visible]
    data.visible = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 17;
  }

  static datatype() {
    // Returns string type for a service object
    return 'webots_ros/node_set_visibilityRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '66754c396b86bd9c8375b973a4e698ec';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 node
    uint64 from
    uint8 visible
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new node_set_visibilityRequest(null);
    if (msg.node !== undefined) {
      resolved.node = msg.node;
    }
    else {
      resolved.node = 0
    }

    if (msg.from !== undefined) {
      resolved.from = msg.from;
    }
    else {
      resolved.from = 0
    }

    if (msg.visible !== undefined) {
      resolved.visible = msg.visible;
    }
    else {
      resolved.visible = 0
    }

    return resolved;
    }
};

class node_set_visibilityResponse {
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
    // Serializes a message object of type node_set_visibilityResponse
    // Serialize message field [success]
    bufferOffset = _serializer.int8(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type node_set_visibilityResponse
    let len;
    let data = new node_set_visibilityResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'webots_ros/node_set_visibilityResponse';
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
    const resolved = new node_set_visibilityResponse(null);
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
  Request: node_set_visibilityRequest,
  Response: node_set_visibilityResponse,
  md5sum() { return 'b6fcfa2c79ae79467e085318b3617289'; },
  datatype() { return 'webots_ros/node_set_visibility'; }
};
