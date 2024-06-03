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

class get_urdfRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.prefix = null;
    }
    else {
      if (initObj.hasOwnProperty('prefix')) {
        this.prefix = initObj.prefix
      }
      else {
        this.prefix = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type get_urdfRequest
    // Serialize message field [prefix]
    bufferOffset = _serializer.string(obj.prefix, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type get_urdfRequest
    let len;
    let data = new get_urdfRequest(null);
    // Deserialize message field [prefix]
    data.prefix = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.prefix);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'webots_ros/get_urdfRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8a471f61d96890d8f43bc26d6b147ee7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string prefix
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new get_urdfRequest(null);
    if (msg.prefix !== undefined) {
      resolved.prefix = msg.prefix;
    }
    else {
      resolved.prefix = ''
    }

    return resolved;
    }
};

class get_urdfResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.value = null;
    }
    else {
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type get_urdfResponse
    // Serialize message field [value]
    bufferOffset = _serializer.string(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type get_urdfResponse
    let len;
    let data = new get_urdfResponse(null);
    // Deserialize message field [value]
    data.value = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.value);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'webots_ros/get_urdfResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '64e58419496c7248b4ef25731f88b8c3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string value
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new get_urdfResponse(null);
    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: get_urdfRequest,
  Response: get_urdfResponse,
  md5sum() { return '9ae31c29f15764629e70e60492948eb1'; },
  datatype() { return 'webots_ros/get_urdf'; }
};
