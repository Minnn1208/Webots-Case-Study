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

class supervisor_movie_start_recordingRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.filename = null;
      this.width = null;
      this.height = null;
      this.codec = null;
      this.quality = null;
      this.acceleration = null;
      this.caption = null;
    }
    else {
      if (initObj.hasOwnProperty('filename')) {
        this.filename = initObj.filename
      }
      else {
        this.filename = '';
      }
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
      if (initObj.hasOwnProperty('codec')) {
        this.codec = initObj.codec
      }
      else {
        this.codec = 0;
      }
      if (initObj.hasOwnProperty('quality')) {
        this.quality = initObj.quality
      }
      else {
        this.quality = 0;
      }
      if (initObj.hasOwnProperty('acceleration')) {
        this.acceleration = initObj.acceleration
      }
      else {
        this.acceleration = 0;
      }
      if (initObj.hasOwnProperty('caption')) {
        this.caption = initObj.caption
      }
      else {
        this.caption = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type supervisor_movie_start_recordingRequest
    // Serialize message field [filename]
    bufferOffset = _serializer.string(obj.filename, buffer, bufferOffset);
    // Serialize message field [width]
    bufferOffset = _serializer.int32(obj.width, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = _serializer.int32(obj.height, buffer, bufferOffset);
    // Serialize message field [codec]
    bufferOffset = _serializer.int32(obj.codec, buffer, bufferOffset);
    // Serialize message field [quality]
    bufferOffset = _serializer.int32(obj.quality, buffer, bufferOffset);
    // Serialize message field [acceleration]
    bufferOffset = _serializer.int32(obj.acceleration, buffer, bufferOffset);
    // Serialize message field [caption]
    bufferOffset = _serializer.uint8(obj.caption, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type supervisor_movie_start_recordingRequest
    let len;
    let data = new supervisor_movie_start_recordingRequest(null);
    // Deserialize message field [filename]
    data.filename = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [width]
    data.width = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [codec]
    data.codec = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [quality]
    data.quality = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [acceleration]
    data.acceleration = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [caption]
    data.caption = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.filename);
    return length + 25;
  }

  static datatype() {
    // Returns string type for a service object
    return 'webots_ros/supervisor_movie_start_recordingRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6002a2a6b3b34251dd3d092b3750f050';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string filename
    int32 width
    int32 height
    int32 codec
    int32 quality
    int32 acceleration
    uint8 caption
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new supervisor_movie_start_recordingRequest(null);
    if (msg.filename !== undefined) {
      resolved.filename = msg.filename;
    }
    else {
      resolved.filename = ''
    }

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

    if (msg.codec !== undefined) {
      resolved.codec = msg.codec;
    }
    else {
      resolved.codec = 0
    }

    if (msg.quality !== undefined) {
      resolved.quality = msg.quality;
    }
    else {
      resolved.quality = 0
    }

    if (msg.acceleration !== undefined) {
      resolved.acceleration = msg.acceleration;
    }
    else {
      resolved.acceleration = 0
    }

    if (msg.caption !== undefined) {
      resolved.caption = msg.caption;
    }
    else {
      resolved.caption = 0
    }

    return resolved;
    }
};

class supervisor_movie_start_recordingResponse {
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
    // Serializes a message object of type supervisor_movie_start_recordingResponse
    // Serialize message field [success]
    bufferOffset = _serializer.int8(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type supervisor_movie_start_recordingResponse
    let len;
    let data = new supervisor_movie_start_recordingResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'webots_ros/supervisor_movie_start_recordingResponse';
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
    const resolved = new supervisor_movie_start_recordingResponse(null);
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
  Request: supervisor_movie_start_recordingRequest,
  Response: supervisor_movie_start_recordingResponse,
  md5sum() { return '96ca298eece1e7a6fe756c404839bdcc'; },
  datatype() { return 'webots_ros/supervisor_movie_start_recording'; }
};
