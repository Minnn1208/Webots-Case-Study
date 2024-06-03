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

class robot_wait_for_user_input_eventRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.eventType = null;
      this.timeout = null;
    }
    else {
      if (initObj.hasOwnProperty('eventType')) {
        this.eventType = initObj.eventType
      }
      else {
        this.eventType = 0;
      }
      if (initObj.hasOwnProperty('timeout')) {
        this.timeout = initObj.timeout
      }
      else {
        this.timeout = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type robot_wait_for_user_input_eventRequest
    // Serialize message field [eventType]
    bufferOffset = _serializer.int32(obj.eventType, buffer, bufferOffset);
    // Serialize message field [timeout]
    bufferOffset = _serializer.int32(obj.timeout, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type robot_wait_for_user_input_eventRequest
    let len;
    let data = new robot_wait_for_user_input_eventRequest(null);
    // Deserialize message field [eventType]
    data.eventType = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [timeout]
    data.timeout = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'webots_ros/robot_wait_for_user_input_eventRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3e70b4ac6cfb42776e6d4bc21b66e815';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 eventType
    int32 timeout
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new robot_wait_for_user_input_eventRequest(null);
    if (msg.eventType !== undefined) {
      resolved.eventType = msg.eventType;
    }
    else {
      resolved.eventType = 0
    }

    if (msg.timeout !== undefined) {
      resolved.timeout = msg.timeout;
    }
    else {
      resolved.timeout = 0
    }

    return resolved;
    }
};

class robot_wait_for_user_input_eventResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.event = null;
    }
    else {
      if (initObj.hasOwnProperty('event')) {
        this.event = initObj.event
      }
      else {
        this.event = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type robot_wait_for_user_input_eventResponse
    // Serialize message field [event]
    bufferOffset = _serializer.int32(obj.event, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type robot_wait_for_user_input_eventResponse
    let len;
    let data = new robot_wait_for_user_input_eventResponse(null);
    // Deserialize message field [event]
    data.event = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'webots_ros/robot_wait_for_user_input_eventResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b2a9c605bb7a420089b02c6063322298';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 event
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new robot_wait_for_user_input_eventResponse(null);
    if (msg.event !== undefined) {
      resolved.event = msg.event;
    }
    else {
      resolved.event = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: robot_wait_for_user_input_eventRequest,
  Response: robot_wait_for_user_input_eventResponse,
  md5sum() { return '117ed5fb1f5c37c2a398a290a90fc55d'; },
  datatype() { return 'webots_ros/robot_wait_for_user_input_event'; }
};
