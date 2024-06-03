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

class range_finder_get_infoRequest {
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
    // Serializes a message object of type range_finder_get_infoRequest
    // Serialize message field [ask]
    bufferOffset = _serializer.uint8(obj.ask, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type range_finder_get_infoRequest
    let len;
    let data = new range_finder_get_infoRequest(null);
    // Deserialize message field [ask]
    data.ask = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'webots_ros/range_finder_get_infoRequest';
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
    const resolved = new range_finder_get_infoRequest(null);
    if (msg.ask !== undefined) {
      resolved.ask = msg.ask;
    }
    else {
      resolved.ask = 0
    }

    return resolved;
    }
};

class range_finder_get_infoResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.width = null;
      this.height = null;
      this.Fov = null;
      this.minRange = null;
      this.maxRange = null;
    }
    else {
      if (initObj.hasOwnProperty('width')) {
        this.width = initObj.width
      }
      else {
        this.width = 0;
      }
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = 0;
      }
      if (initObj.hasOwnProperty('Fov')) {
        this.Fov = initObj.Fov
      }
      else {
        this.Fov = 0.0;
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
    // Serializes a message object of type range_finder_get_infoResponse
    // Serialize message field [width]
    bufferOffset = _serializer.uint32(obj.width, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = _serializer.uint32(obj.height, buffer, bufferOffset);
    // Serialize message field [Fov]
    bufferOffset = _serializer.float64(obj.Fov, buffer, bufferOffset);
    // Serialize message field [minRange]
    bufferOffset = _serializer.float64(obj.minRange, buffer, bufferOffset);
    // Serialize message field [maxRange]
    bufferOffset = _serializer.float64(obj.maxRange, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type range_finder_get_infoResponse
    let len;
    let data = new range_finder_get_infoResponse(null);
    // Deserialize message field [width]
    data.width = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [Fov]
    data.Fov = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [minRange]
    data.minRange = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [maxRange]
    data.maxRange = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a service object
    return 'webots_ros/range_finder_get_infoResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ba45c4359ffe949874e90cf1daa6659f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 width
    uint32 height
    float64 Fov
    float64 minRange
    float64 maxRange
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new range_finder_get_infoResponse(null);
    if (msg.width !== undefined) {
      resolved.width = msg.width;
    }
    else {
      resolved.width = 0
    }

    if (msg.height !== undefined) {
      resolved.height = msg.height;
    }
    else {
      resolved.height = 0
    }

    if (msg.Fov !== undefined) {
      resolved.Fov = msg.Fov;
    }
    else {
      resolved.Fov = 0.0
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
  Request: range_finder_get_infoRequest,
  Response: range_finder_get_infoResponse,
  md5sum() { return '7de8466f9b36888a8538ac7cacbb5d90'; },
  datatype() { return 'webots_ros/range_finder_get_info'; }
};
