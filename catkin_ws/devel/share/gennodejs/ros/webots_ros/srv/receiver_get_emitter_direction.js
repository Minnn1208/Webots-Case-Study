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

class receiver_get_emitter_directionRequest {
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
    // Serializes a message object of type receiver_get_emitter_directionRequest
    // Serialize message field [ask]
    bufferOffset = _serializer.uint8(obj.ask, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type receiver_get_emitter_directionRequest
    let len;
    let data = new receiver_get_emitter_directionRequest(null);
    // Deserialize message field [ask]
    data.ask = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'webots_ros/receiver_get_emitter_directionRequest';
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
    const resolved = new receiver_get_emitter_directionRequest(null);
    if (msg.ask !== undefined) {
      resolved.ask = msg.ask;
    }
    else {
      resolved.ask = 0
    }

    return resolved;
    }
};

class receiver_get_emitter_directionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.direction = null;
    }
    else {
      if (initObj.hasOwnProperty('direction')) {
        this.direction = initObj.direction
      }
      else {
        this.direction = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type receiver_get_emitter_directionResponse
    // Serialize message field [direction]
    bufferOffset = _arraySerializer.float64(obj.direction, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type receiver_get_emitter_directionResponse
    let len;
    let data = new receiver_get_emitter_directionResponse(null);
    // Deserialize message field [direction]
    data.direction = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.direction.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'webots_ros/receiver_get_emitter_directionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3f61a8da1ee4e83406fd5157b36d50cb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] direction
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new receiver_get_emitter_directionResponse(null);
    if (msg.direction !== undefined) {
      resolved.direction = msg.direction;
    }
    else {
      resolved.direction = []
    }

    return resolved;
    }
};

module.exports = {
  Request: receiver_get_emitter_directionRequest,
  Response: receiver_get_emitter_directionResponse,
  md5sum() { return 'cad5a90bedce22b568c949b40e9cc6e0'; },
  datatype() { return 'webots_ros/receiver_get_emitter_direction'; }
};
