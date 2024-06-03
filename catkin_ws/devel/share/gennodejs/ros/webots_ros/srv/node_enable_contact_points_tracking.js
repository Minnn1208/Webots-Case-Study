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

class node_enable_contact_points_trackingRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.node = null;
      this.sampling_period = null;
      this.include_descendants = null;
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
      if (initObj.hasOwnProperty('include_descendants')) {
        this.include_descendants = initObj.include_descendants
      }
      else {
        this.include_descendants = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type node_enable_contact_points_trackingRequest
    // Serialize message field [node]
    bufferOffset = _serializer.uint64(obj.node, buffer, bufferOffset);
    // Serialize message field [sampling_period]
    bufferOffset = _serializer.int32(obj.sampling_period, buffer, bufferOffset);
    // Serialize message field [include_descendants]
    bufferOffset = _serializer.bool(obj.include_descendants, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type node_enable_contact_points_trackingRequest
    let len;
    let data = new node_enable_contact_points_trackingRequest(null);
    // Deserialize message field [node]
    data.node = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [sampling_period]
    data.sampling_period = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [include_descendants]
    data.include_descendants = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 13;
  }

  static datatype() {
    // Returns string type for a service object
    return 'webots_ros/node_enable_contact_points_trackingRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5b326df591dcf4cc41328b2092541b14';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 node
    int32 sampling_period
    bool include_descendants
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new node_enable_contact_points_trackingRequest(null);
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

    if (msg.include_descendants !== undefined) {
      resolved.include_descendants = msg.include_descendants;
    }
    else {
      resolved.include_descendants = false
    }

    return resolved;
    }
};

class node_enable_contact_points_trackingResponse {
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
    // Serializes a message object of type node_enable_contact_points_trackingResponse
    // Serialize message field [success]
    bufferOffset = _serializer.int8(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type node_enable_contact_points_trackingResponse
    let len;
    let data = new node_enable_contact_points_trackingResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'webots_ros/node_enable_contact_points_trackingResponse';
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
    const resolved = new node_enable_contact_points_trackingResponse(null);
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
  Request: node_enable_contact_points_trackingRequest,
  Response: node_enable_contact_points_trackingResponse,
  md5sum() { return 'dccb3b91ba4f7b41232e5752a12d0fe4'; },
  datatype() { return 'webots_ros/node_enable_contact_points_tracking'; }
};
