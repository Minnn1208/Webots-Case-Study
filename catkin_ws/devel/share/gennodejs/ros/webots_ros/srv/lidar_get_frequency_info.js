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

class lidar_get_frequency_infoRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ask = null;
    }
    else {
      if (initObj.hasOwnProperty('ask')) {
        this.ask = initObj.ask
      }
      else {
        this.ask = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type lidar_get_frequency_infoRequest
    // Serialize message field [ask]
    bufferOffset = _serializer.uint8(obj.ask, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type lidar_get_frequency_infoRequest
    let len;
    let data = new lidar_get_frequency_infoRequest(null);
    // Deserialize message field [ask]
    data.ask = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'webots_ros/lidar_get_frequency_infoRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f9df5232b65af94f73f79fe6d84301bb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 ask
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new lidar_get_frequency_infoRequest(null);
    if (msg.ask !== undefined) {
      resolved.ask = msg.ask;
    }
    else {
      resolved.ask = 0
    }

    return resolved;
    }
};

class lidar_get_frequency_infoResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.frequency = null;
      this.minFrequency = null;
      this.maxFrequency = null;
    }
    else {
      if (initObj.hasOwnProperty('frequency')) {
        this.frequency = initObj.frequency
      }
      else {
        this.frequency = 0.0;
      }
      if (initObj.hasOwnProperty('minFrequency')) {
        this.minFrequency = initObj.minFrequency
      }
      else {
        this.minFrequency = 0.0;
      }
      if (initObj.hasOwnProperty('maxFrequency')) {
        this.maxFrequency = initObj.maxFrequency
      }
      else {
        this.maxFrequency = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type lidar_get_frequency_infoResponse
    // Serialize message field [frequency]
    bufferOffset = _serializer.float64(obj.frequency, buffer, bufferOffset);
    // Serialize message field [minFrequency]
    bufferOffset = _serializer.float64(obj.minFrequency, buffer, bufferOffset);
    // Serialize message field [maxFrequency]
    bufferOffset = _serializer.float64(obj.maxFrequency, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type lidar_get_frequency_infoResponse
    let len;
    let data = new lidar_get_frequency_infoResponse(null);
    // Deserialize message field [frequency]
    data.frequency = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [minFrequency]
    data.minFrequency = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [maxFrequency]
    data.maxFrequency = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'webots_ros/lidar_get_frequency_infoResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9814880637e7548b4e9c8076e7471dc3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 frequency
    float64 minFrequency
    float64 maxFrequency
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new lidar_get_frequency_infoResponse(null);
    if (msg.frequency !== undefined) {
      resolved.frequency = msg.frequency;
    }
    else {
      resolved.frequency = 0.0
    }

    if (msg.minFrequency !== undefined) {
      resolved.minFrequency = msg.minFrequency;
    }
    else {
      resolved.minFrequency = 0.0
    }

    if (msg.maxFrequency !== undefined) {
      resolved.maxFrequency = msg.maxFrequency;
    }
    else {
      resolved.maxFrequency = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: lidar_get_frequency_infoRequest,
  Response: lidar_get_frequency_infoResponse,
  md5sum() { return '205acd1972da2259229a25bf7e756656'; },
  datatype() { return 'webots_ros/lidar_get_frequency_info'; }
};
