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

class camera_get_focus_infoRequest {
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
    // Serializes a message object of type camera_get_focus_infoRequest
    // Serialize message field [ask]
    bufferOffset = _serializer.uint8(obj.ask, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type camera_get_focus_infoRequest
    let len;
    let data = new camera_get_focus_infoRequest(null);
    // Deserialize message field [ask]
    data.ask = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'webots_ros/camera_get_focus_infoRequest';
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
    const resolved = new camera_get_focus_infoRequest(null);
    if (msg.ask !== undefined) {
      resolved.ask = msg.ask;
    }
    else {
      resolved.ask = 0
    }

    return resolved;
    }
};

class camera_get_focus_infoResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.focalLength = null;
      this.focalDistance = null;
      this.maxFocalDistance = null;
      this.minFocalDistance = null;
    }
    else {
      if (initObj.hasOwnProperty('focalLength')) {
        this.focalLength = initObj.focalLength
      }
      else {
        this.focalLength = 0.0;
      }
      if (initObj.hasOwnProperty('focalDistance')) {
        this.focalDistance = initObj.focalDistance
      }
      else {
        this.focalDistance = 0.0;
      }
      if (initObj.hasOwnProperty('maxFocalDistance')) {
        this.maxFocalDistance = initObj.maxFocalDistance
      }
      else {
        this.maxFocalDistance = 0.0;
      }
      if (initObj.hasOwnProperty('minFocalDistance')) {
        this.minFocalDistance = initObj.minFocalDistance
      }
      else {
        this.minFocalDistance = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type camera_get_focus_infoResponse
    // Serialize message field [focalLength]
    bufferOffset = _serializer.float64(obj.focalLength, buffer, bufferOffset);
    // Serialize message field [focalDistance]
    bufferOffset = _serializer.float64(obj.focalDistance, buffer, bufferOffset);
    // Serialize message field [maxFocalDistance]
    bufferOffset = _serializer.float64(obj.maxFocalDistance, buffer, bufferOffset);
    // Serialize message field [minFocalDistance]
    bufferOffset = _serializer.float64(obj.minFocalDistance, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type camera_get_focus_infoResponse
    let len;
    let data = new camera_get_focus_infoResponse(null);
    // Deserialize message field [focalLength]
    data.focalLength = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [focalDistance]
    data.focalDistance = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [maxFocalDistance]
    data.maxFocalDistance = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [minFocalDistance]
    data.minFocalDistance = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a service object
    return 'webots_ros/camera_get_focus_infoResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8cabd8a61992c5b3e4e9d182bb2380ac';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 focalLength
    float64 focalDistance
    float64 maxFocalDistance
    float64 minFocalDistance
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new camera_get_focus_infoResponse(null);
    if (msg.focalLength !== undefined) {
      resolved.focalLength = msg.focalLength;
    }
    else {
      resolved.focalLength = 0.0
    }

    if (msg.focalDistance !== undefined) {
      resolved.focalDistance = msg.focalDistance;
    }
    else {
      resolved.focalDistance = 0.0
    }

    if (msg.maxFocalDistance !== undefined) {
      resolved.maxFocalDistance = msg.maxFocalDistance;
    }
    else {
      resolved.maxFocalDistance = 0.0
    }

    if (msg.minFocalDistance !== undefined) {
      resolved.minFocalDistance = msg.minFocalDistance;
    }
    else {
      resolved.minFocalDistance = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: camera_get_focus_infoRequest,
  Response: camera_get_focus_infoResponse,
  md5sum() { return 'b515f92c1f91e19619caa437c4da4d85'; },
  datatype() { return 'webots_ros/camera_get_focus_info'; }
};
