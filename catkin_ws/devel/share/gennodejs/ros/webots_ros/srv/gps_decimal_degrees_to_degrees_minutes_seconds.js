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

class gps_decimal_degrees_to_degrees_minutes_secondsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.decimalDegrees = null;
    }
    else {
      if (initObj.hasOwnProperty('decimalDegrees')) {
        this.decimalDegrees = initObj.decimalDegrees
      }
      else {
        this.decimalDegrees = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type gps_decimal_degrees_to_degrees_minutes_secondsRequest
    // Serialize message field [decimalDegrees]
    bufferOffset = _serializer.float32(obj.decimalDegrees, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type gps_decimal_degrees_to_degrees_minutes_secondsRequest
    let len;
    let data = new gps_decimal_degrees_to_degrees_minutes_secondsRequest(null);
    // Deserialize message field [decimalDegrees]
    data.decimalDegrees = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'webots_ros/gps_decimal_degrees_to_degrees_minutes_secondsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f8f7a12c44f9c148c60202aa01cea424';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 decimalDegrees
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new gps_decimal_degrees_to_degrees_minutes_secondsRequest(null);
    if (msg.decimalDegrees !== undefined) {
      resolved.decimalDegrees = msg.decimalDegrees;
    }
    else {
      resolved.decimalDegrees = 0.0
    }

    return resolved;
    }
};

class gps_decimal_degrees_to_degrees_minutes_secondsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.degreesMinutesSeconds = null;
    }
    else {
      if (initObj.hasOwnProperty('degreesMinutesSeconds')) {
        this.degreesMinutesSeconds = initObj.degreesMinutesSeconds
      }
      else {
        this.degreesMinutesSeconds = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type gps_decimal_degrees_to_degrees_minutes_secondsResponse
    // Serialize message field [degreesMinutesSeconds]
    bufferOffset = _serializer.string(obj.degreesMinutesSeconds, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type gps_decimal_degrees_to_degrees_minutes_secondsResponse
    let len;
    let data = new gps_decimal_degrees_to_degrees_minutes_secondsResponse(null);
    // Deserialize message field [degreesMinutesSeconds]
    data.degreesMinutesSeconds = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.degreesMinutesSeconds);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'webots_ros/gps_decimal_degrees_to_degrees_minutes_secondsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1dd167c46cb823612e4149b12fa41046';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string degreesMinutesSeconds
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new gps_decimal_degrees_to_degrees_minutes_secondsResponse(null);
    if (msg.degreesMinutesSeconds !== undefined) {
      resolved.degreesMinutesSeconds = msg.degreesMinutesSeconds;
    }
    else {
      resolved.degreesMinutesSeconds = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: gps_decimal_degrees_to_degrees_minutes_secondsRequest,
  Response: gps_decimal_degrees_to_degrees_minutes_secondsResponse,
  md5sum() { return '2911ee9051e401397c9b1e29a01f7ead'; },
  datatype() { return 'webots_ros/gps_decimal_degrees_to_degrees_minutes_seconds'; }
};
