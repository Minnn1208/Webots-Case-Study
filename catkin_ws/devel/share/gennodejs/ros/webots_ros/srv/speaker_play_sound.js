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

class speaker_play_soundRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sound = null;
      this.volume = null;
      this.pitch = null;
      this.balance = null;
      this.loop = null;
    }
    else {
      if (initObj.hasOwnProperty('sound')) {
        this.sound = initObj.sound
      }
      else {
        this.sound = '';
      }
      if (initObj.hasOwnProperty('volume')) {
        this.volume = initObj.volume
      }
      else {
        this.volume = 0.0;
      }
      if (initObj.hasOwnProperty('pitch')) {
        this.pitch = initObj.pitch
      }
      else {
        this.pitch = 0.0;
      }
      if (initObj.hasOwnProperty('balance')) {
        this.balance = initObj.balance
      }
      else {
        this.balance = 0.0;
      }
      if (initObj.hasOwnProperty('loop')) {
        this.loop = initObj.loop
      }
      else {
        this.loop = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type speaker_play_soundRequest
    // Serialize message field [sound]
    bufferOffset = _serializer.string(obj.sound, buffer, bufferOffset);
    // Serialize message field [volume]
    bufferOffset = _serializer.float64(obj.volume, buffer, bufferOffset);
    // Serialize message field [pitch]
    bufferOffset = _serializer.float64(obj.pitch, buffer, bufferOffset);
    // Serialize message field [balance]
    bufferOffset = _serializer.float64(obj.balance, buffer, bufferOffset);
    // Serialize message field [loop]
    bufferOffset = _serializer.int8(obj.loop, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type speaker_play_soundRequest
    let len;
    let data = new speaker_play_soundRequest(null);
    // Deserialize message field [sound]
    data.sound = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [volume]
    data.volume = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pitch]
    data.pitch = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [balance]
    data.balance = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [loop]
    data.loop = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.sound);
    return length + 29;
  }

  static datatype() {
    // Returns string type for a service object
    return 'webots_ros/speaker_play_soundRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6dbd4a93693dce0672c3d423cfbc9b11';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string sound
    float64 volume
    float64 pitch
    float64 balance
    int8 loop
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new speaker_play_soundRequest(null);
    if (msg.sound !== undefined) {
      resolved.sound = msg.sound;
    }
    else {
      resolved.sound = ''
    }

    if (msg.volume !== undefined) {
      resolved.volume = msg.volume;
    }
    else {
      resolved.volume = 0.0
    }

    if (msg.pitch !== undefined) {
      resolved.pitch = msg.pitch;
    }
    else {
      resolved.pitch = 0.0
    }

    if (msg.balance !== undefined) {
      resolved.balance = msg.balance;
    }
    else {
      resolved.balance = 0.0
    }

    if (msg.loop !== undefined) {
      resolved.loop = msg.loop;
    }
    else {
      resolved.loop = 0
    }

    return resolved;
    }
};

class speaker_play_soundResponse {
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
    // Serializes a message object of type speaker_play_soundResponse
    // Serialize message field [success]
    bufferOffset = _serializer.int8(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type speaker_play_soundResponse
    let len;
    let data = new speaker_play_soundResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'webots_ros/speaker_play_soundResponse';
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
    const resolved = new speaker_play_soundResponse(null);
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
  Request: speaker_play_soundRequest,
  Response: speaker_play_soundResponse,
  md5sum() { return '9c17e6742fccca17f3542e68a9800dd3'; },
  datatype() { return 'webots_ros/speaker_play_sound'; }
};
