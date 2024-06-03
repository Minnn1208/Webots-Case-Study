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

class speaker_is_sound_playingRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sound = null;
    }
    else {
      if (initObj.hasOwnProperty('sound')) {
        this.sound = initObj.sound
      }
      else {
        this.sound = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type speaker_is_sound_playingRequest
    // Serialize message field [sound]
    bufferOffset = _serializer.string(obj.sound, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type speaker_is_sound_playingRequest
    let len;
    let data = new speaker_is_sound_playingRequest(null);
    // Deserialize message field [sound]
    data.sound = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.sound);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'webots_ros/speaker_is_sound_playingRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6f8594d24e685f0ca0a97807507c3483';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string sound
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new speaker_is_sound_playingRequest(null);
    if (msg.sound !== undefined) {
      resolved.sound = msg.sound;
    }
    else {
      resolved.sound = ''
    }

    return resolved;
    }
};

class speaker_is_sound_playingResponse {
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
        this.value = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type speaker_is_sound_playingResponse
    // Serialize message field [value]
    bufferOffset = _serializer.bool(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type speaker_is_sound_playingResponse
    let len;
    let data = new speaker_is_sound_playingResponse(null);
    // Deserialize message field [value]
    data.value = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'webots_ros/speaker_is_sound_playingResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e431d687bf4b2c65fbd94b12ae0cb5d9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool value
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new speaker_is_sound_playingResponse(null);
    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = false
    }

    return resolved;
    }
};

module.exports = {
  Request: speaker_is_sound_playingRequest,
  Response: speaker_is_sound_playingResponse,
  md5sum() { return '5e90e3a791904b68b561b7067a8d366b'; },
  datatype() { return 'webots_ros/speaker_is_sound_playing'; }
};
