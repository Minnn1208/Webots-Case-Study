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

class lidar_get_infoRequest {
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
    // Serializes a message object of type lidar_get_infoRequest
    // Serialize message field [ask]
    bufferOffset = _serializer.uint8(obj.ask, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type lidar_get_infoRequest
    let len;
    let data = new lidar_get_infoRequest(null);
    // Deserialize message field [ask]
    data.ask = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'webots_ros/lidar_get_infoRequest';
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
    const resolved = new lidar_get_infoRequest(null);
    if (msg.ask !== undefined) {
      resolved.ask = msg.ask;
    }
    else {
      resolved.ask = 0
    }

    return resolved;
    }
};

class lidar_get_infoResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.horizontalResolution = null;
      this.numberOfLayers = null;
      this.fov = null;
      this.verticalFov = null;
      this.minRange = null;
      this.maxRange = null;
    }
    else {
      if (initObj.hasOwnProperty('horizontalResolution')) {
        this.horizontalResolution = initObj.horizontalResolution
      }
      else {
        this.horizontalResolution = 0;
      }
      if (initObj.hasOwnProperty('numberOfLayers')) {
        this.numberOfLayers = initObj.numberOfLayers
      }
      else {
        this.numberOfLayers = 0;
      }
      if (initObj.hasOwnProperty('fov')) {
        this.fov = initObj.fov
      }
      else {
        this.fov = 0.0;
      }
      if (initObj.hasOwnProperty('verticalFov')) {
        this.verticalFov = initObj.verticalFov
      }
      else {
        this.verticalFov = 0.0;
      }
      if (initObj.hasOwnProperty('minRange')) {
        this.minRange = initObj.minRange
      }
      else {
        this.minRange = 0.0;
      }
      if (initObj.hasOwnProperty('maxRange')) {
        this.maxRange = initObj.maxRange
      }
      else {
        this.maxRange = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type lidar_get_infoResponse
    // Serialize message field [horizontalResolution]
    bufferOffset = _serializer.uint32(obj.horizontalResolution, buffer, bufferOffset);
    // Serialize message field [numberOfLayers]
    bufferOffset = _serializer.uint32(obj.numberOfLayers, buffer, bufferOffset);
    // Serialize message field [fov]
    bufferOffset = _serializer.float64(obj.fov, buffer, bufferOffset);
    // Serialize message field [verticalFov]
    bufferOffset = _serializer.float64(obj.verticalFov, buffer, bufferOffset);
    // Serialize message field [minRange]
    bufferOffset = _serializer.float64(obj.minRange, buffer, bufferOffset);
    // Serialize message field [maxRange]
    bufferOffset = _serializer.float64(obj.maxRange, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type lidar_get_infoResponse
    let len;
    let data = new lidar_get_infoResponse(null);
    // Deserialize message field [horizontalResolution]
    data.horizontalResolution = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [numberOfLayers]
    data.numberOfLayers = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [fov]
    data.fov = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [verticalFov]
    data.verticalFov = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [minRange]
    data.minRange = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [maxRange]
    data.maxRange = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 40;
  }

  static datatype() {
    // Returns string type for a service object
    return 'webots_ros/lidar_get_infoResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e3ce26475d0d5fee0e59e3479a798bf0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 horizontalResolution
    uint32 numberOfLayers
    float64 fov
    float64 verticalFov
    float64 minRange
    float64 maxRange
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new lidar_get_infoResponse(null);
    if (msg.horizontalResolution !== undefined) {
      resolved.horizontalResolution = msg.horizontalResolution;
    }
    else {
      resolved.horizontalResolution = 0
    }

    if (msg.numberOfLayers !== undefined) {
      resolved.numberOfLayers = msg.numberOfLayers;
    }
    else {
      resolved.numberOfLayers = 0
    }

    if (msg.fov !== undefined) {
      resolved.fov = msg.fov;
    }
    else {
      resolved.fov = 0.0
    }

    if (msg.verticalFov !== undefined) {
      resolved.verticalFov = msg.verticalFov;
    }
    else {
      resolved.verticalFov = 0.0
    }

    if (msg.minRange !== undefined) {
      resolved.minRange = msg.minRange;
    }
    else {
      resolved.minRange = 0.0
    }

    if (msg.maxRange !== undefined) {
      resolved.maxRange = msg.maxRange;
    }
    else {
      resolved.maxRange = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: lidar_get_infoRequest,
  Response: lidar_get_infoResponse,
  md5sum() { return 'd69a9b3d17121f1bdd796764ea53059a'; },
  datatype() { return 'webots_ros/lidar_get_info'; }
};
