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

class motor_set_control_pidRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.controlp = null;
      this.controli = null;
      this.controld = null;
    }
    else {
      if (initObj.hasOwnProperty('controlp')) {
        this.controlp = initObj.controlp
      }
      else {
        this.controlp = 0.0;
      }
      if (initObj.hasOwnProperty('controli')) {
        this.controli = initObj.controli
      }
      else {
        this.controli = 0.0;
      }
      if (initObj.hasOwnProperty('controld')) {
        this.controld = initObj.controld
      }
      else {
        this.controld = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type motor_set_control_pidRequest
    // Serialize message field [controlp]
    bufferOffset = _serializer.float64(obj.controlp, buffer, bufferOffset);
    // Serialize message field [controli]
    bufferOffset = _serializer.float64(obj.controli, buffer, bufferOffset);
    // Serialize message field [controld]
    bufferOffset = _serializer.float64(obj.controld, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type motor_set_control_pidRequest
    let len;
    let data = new motor_set_control_pidRequest(null);
    // Deserialize message field [controlp]
    data.controlp = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [controli]
    data.controli = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [controld]
    data.controld = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'webots_ros/motor_set_control_pidRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1ebf8f7154a3c8eec118cec294f2c32c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 controlp
    float64 controli
    float64 controld
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new motor_set_control_pidRequest(null);
    if (msg.controlp !== undefined) {
      resolved.controlp = msg.controlp;
    }
    else {
      resolved.controlp = 0.0
    }

    if (msg.controli !== undefined) {
      resolved.controli = msg.controli;
    }
    else {
      resolved.controli = 0.0
    }

    if (msg.controld !== undefined) {
      resolved.controld = msg.controld;
    }
    else {
      resolved.controld = 0.0
    }

    return resolved;
    }
};

class motor_set_control_pidResponse {
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
    // Serializes a message object of type motor_set_control_pidResponse
    // Serialize message field [success]
    bufferOffset = _serializer.int8(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type motor_set_control_pidResponse
    let len;
    let data = new motor_set_control_pidResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'webots_ros/motor_set_control_pidResponse';
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
    const resolved = new motor_set_control_pidResponse(null);
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
  Request: motor_set_control_pidRequest,
  Response: motor_set_control_pidResponse,
  md5sum() { return '712b4e401e3c9cbb098cd0435a9a13d3'; },
  datatype() { return 'webots_ros/motor_set_control_pid'; }
};
