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

class camera_get_zoom_infoRequest {
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
    // Serializes a message object of type camera_get_zoom_infoRequest
    // Serialize message field [ask]
    bufferOffset = _serializer.uint8(obj.ask, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type camera_get_zoom_infoRequest
    let len;
    let data = new camera_get_zoom_infoRequest(null);
    // Deserialize message field [ask]
    data.ask = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'webots_ros/camera_get_zoom_infoRequest';
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
    const resolved = new camera_get_zoom_infoRequest(null);
    if (msg.ask !== undefined) {
      resolved.ask = msg.ask;
    }
    else {
      resolved.ask = 0
    }

    return resolved;
    }
};

class camera_get_zoom_infoResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.minFov = null;
      this.maxFov = null;
    }
    else {
      if (initObj.hasOwnProperty('minFov')) {
        this.minFov = initObj.minFov
      }
      else {
        this.minFov = 0.0;
      }
      if (initObj.hasOwnProperty('maxFov')) {
        this.maxFov = initObj.maxFov
      }
      else {
        this.maxFov = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type camera_get_zoom_infoResponse
    // Serialize message field [minFov]
    bufferOffset = _serializer.float64(obj.minFov, buffer, bufferOffset);
    // Serialize message field [maxFov]
    bufferOffset = _serializer.float64(obj.maxFov, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type camera_get_zoom_infoResponse
    let len;
    let data = new camera_get_zoom_infoResponse(null);
    // Deserialize message field [minFov]
    data.minFov = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [maxFov]
    data.maxFov = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'webots_ros/camera_get_zoom_infoResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '09ec32bcace1e2e7e22f392cd9bb4659';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 minFov
    float64 maxFov
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new camera_get_zoom_infoResponse(null);
    if (msg.minFov !== undefined) {
      resolved.minFov = msg.minFov;
    }
    else {
      resolved.minFov = 0.0
    }

    if (msg.maxFov !== undefined) {
      resolved.maxFov = msg.maxFov;
    }
    else {
      resolved.maxFov = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: camera_get_zoom_infoRequest,
  Response: camera_get_zoom_infoResponse,
  md5sum() { return '5cc977379b136acabbe49ef90364861a'; },
  datatype() { return 'webots_ros/camera_get_zoom_info'; }
};
