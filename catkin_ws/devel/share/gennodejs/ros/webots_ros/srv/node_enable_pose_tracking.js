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

class node_enable_pose_trackingRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.node = null;
      this.sampling_period = null;
      this.from_node = null;
    }
    else {
      if (initObj.hasOwnProperty('node')) {
        this.node = initObj.node
      }
      else {
        this.node = 0;
      }
      if (initObj.hasOwnProperty('sampling_period')) {
        this.sampling_period = initObj.sampling_period
      }
      else {
        this.sampling_period = 0;
      }
      if (initObj.hasOwnProperty('from_node')) {
        this.from_node = initObj.from_node
      }
      else {
        this.from_node = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type node_enable_pose_trackingRequest
    // Serialize message field [node]
    bufferOffset = _serializer.uint64(obj.node, buffer, bufferOffset);
    // Serialize message field [sampling_period]
    bufferOffset = _serializer.int32(obj.sampling_period, buffer, bufferOffset);
    // Serialize message field [from_node]
    bufferOffset = _serializer.uint64(obj.from_node, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type node_enable_pose_trackingRequest
    let len;
    let data = new node_enable_pose_trackingRequest(null);
    // Deserialize message field [node]
    data.node = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [sampling_period]
    data.sampling_period = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [from_node]
    data.from_node = _deserializer.uint64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 20;
  }

  static datatype() {
    // Returns string type for a service object
    return 'webots_ros/node_enable_pose_trackingRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'acb2c210846725d8c180a233b1c72648';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 node
    int32 sampling_period
    uint64 from_node
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new node_enable_pose_trackingRequest(null);
    if (msg.node !== undefined) {
      resolved.node = msg.node;
    }
    else {
      resolved.node = 0
    }

    if (msg.sampling_period !== undefined) {
      resolved.sampling_period = msg.sampling_period;
    }
    else {
      resolved.sampling_period = 0
    }

    if (msg.from_node !== undefined) {
      resolved.from_node = msg.from_node;
    }
    else {
      resolved.from_node = 0
    }

    return resolved;
    }
};

class node_enable_pose_trackingResponse {
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
    // Serializes a message object of type node_enable_pose_trackingResponse
    // Serialize message field [success]
    bufferOffset = _serializer.int8(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type node_enable_pose_trackingResponse
    let len;
    let data = new node_enable_pose_trackingResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'webots_ros/node_enable_pose_trackingResponse';
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
    const resolved = new node_enable_pose_trackingResponse(null);
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
  Request: node_enable_pose_trackingRequest,
  Response: node_enable_pose_trackingResponse,
  md5sum() { return '8cd216b812da1c93f2089a1c0f3ffed3'; },
  datatype() { return 'webots_ros/node_enable_pose_tracking'; }
};
