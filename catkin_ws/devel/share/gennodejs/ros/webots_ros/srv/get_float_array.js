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

class get_float_arrayRequest {
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
        this.ask = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type get_float_arrayRequest
    // Serialize message field [ask]
    bufferOffset = _serializer.bool(obj.ask, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type get_float_arrayRequest
    let len;
    let data = new get_float_arrayRequest(null);
    // Deserialize message field [ask]
    data.ask = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'webots_ros/get_float_arrayRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fbe9700edfca44c5eefb040d9b60f6d6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool ask
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new get_float_arrayRequest(null);
    if (msg.ask !== undefined) {
      resolved.ask = msg.ask;
    }
    else {
      resolved.ask = false
    }

    return resolved;
    }
};

class get_float_arrayResponse {
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
        this.value = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type get_float_arrayResponse
    // Serialize message field [value]
    bufferOffset = _arraySerializer.float64(obj.value, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type get_float_arrayResponse
    let len;
    let data = new get_float_arrayResponse(null);
    // Deserialize message field [value]
    data.value = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.value.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'webots_ros/get_float_arrayResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0db98d790b5b039efb61505385ae8369';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] value
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new get_float_arrayResponse(null);
    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = []
    }

    return resolved;
    }
};

module.exports = {
  Request: get_float_arrayRequest,
  Response: get_float_arrayResponse,
  md5sum() { return '7aae320d0f914d7069b041ff192847e1'; },
  datatype() { return 'webots_ros/get_float_array'; }
};
