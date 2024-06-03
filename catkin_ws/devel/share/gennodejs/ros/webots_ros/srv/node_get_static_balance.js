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

class node_get_static_balanceRequest {
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
    // Serializes a message object of type node_get_static_balanceRequest
    // Serialize message field [node]
    bufferOffset = _serializer.uint64(obj.node, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type node_get_static_balanceRequest
    let len;
    let data = new node_get_static_balanceRequest(null);
    // Deserialize message field [node]
    data.node = _deserializer.uint64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'webots_ros/node_get_static_balanceRequest';
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
    const resolved = new node_get_static_balanceRequest(null);
    if (msg.node !== undefined) {
      resolved.node = msg.node;
    }
    else {
      resolved.node = 0
    }

    return resolved;
    }
};

class node_get_static_balanceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.balance = null;
    }
    else {
      if (initObj.hasOwnProperty('balance')) {
        this.balance = initObj.balance
      }
      else {
        this.balance = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type node_get_static_balanceResponse
    // Serialize message field [balance]
    bufferOffset = _serializer.uint8(obj.balance, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type node_get_static_balanceResponse
    let len;
    let data = new node_get_static_balanceResponse(null);
    // Deserialize message field [balance]
    data.balance = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'webots_ros/node_get_static_balanceResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f560e1499c2583506afd83461a0e3fd6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 balance
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new node_get_static_balanceResponse(null);
    if (msg.balance !== undefined) {
      resolved.balance = msg.balance;
    }
    else {
      resolved.balance = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: node_get_static_balanceRequest,
  Response: node_get_static_balanceResponse,
  md5sum() { return '1bb59681994e8cd9a01f91ec4bc81585'; },
  datatype() { return 'webots_ros/node_get_static_balance'; }
};
