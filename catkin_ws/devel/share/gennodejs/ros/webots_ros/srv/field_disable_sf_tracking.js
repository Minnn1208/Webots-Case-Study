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

class field_disable_sf_trackingRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.field = null;
    }
    else {
      if (initObj.hasOwnProperty('field')) {
        this.field = initObj.field
      }
      else {
        this.field = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type field_disable_sf_trackingRequest
    // Serialize message field [field]
    bufferOffset = _serializer.uint64(obj.field, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type field_disable_sf_trackingRequest
    let len;
    let data = new field_disable_sf_trackingRequest(null);
    // Deserialize message field [field]
    data.field = _deserializer.uint64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'webots_ros/field_disable_sf_trackingRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6e05f2ccbc5e22655a0890e2557862bd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 field
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new field_disable_sf_trackingRequest(null);
    if (msg.field !== undefined) {
      resolved.field = msg.field;
    }
    else {
      resolved.field = 0
    }

    return resolved;
    }
};

class field_disable_sf_trackingResponse {
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
    // Serializes a message object of type field_disable_sf_trackingResponse
    // Serialize message field [success]
    bufferOffset = _serializer.int8(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type field_disable_sf_trackingResponse
    let len;
    let data = new field_disable_sf_trackingResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'webots_ros/field_disable_sf_trackingResponse';
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
    const resolved = new field_disable_sf_trackingResponse(null);
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
  Request: field_disable_sf_trackingRequest,
  Response: field_disable_sf_trackingResponse,
  md5sum() { return 'd466ca5c1e4695154072bfb73f0f9e1f'; },
  datatype() { return 'webots_ros/field_disable_sf_tracking'; }
};
