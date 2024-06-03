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

let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class field_get_vec3fRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.field = null;
      this.index = null;
    }
    else {
      if (initObj.hasOwnProperty('field')) {
        this.field = initObj.field
      }
      else {
        this.field = 0;
      }
      if (initObj.hasOwnProperty('index')) {
        this.index = initObj.index
      }
      else {
        this.index = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type field_get_vec3fRequest
    // Serialize message field [field]
    bufferOffset = _serializer.uint64(obj.field, buffer, bufferOffset);
    // Serialize message field [index]
    bufferOffset = _serializer.int32(obj.index, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type field_get_vec3fRequest
    let len;
    let data = new field_get_vec3fRequest(null);
    // Deserialize message field [field]
    data.field = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [index]
    data.index = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'webots_ros/field_get_vec3fRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '828947932ebb9e813d3ef918f20f0d81';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 field
    int32 index
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new field_get_vec3fRequest(null);
    if (msg.field !== undefined) {
      resolved.field = msg.field;
    }
    else {
      resolved.field = 0
    }

    if (msg.index !== undefined) {
      resolved.index = msg.index;
    }
    else {
      resolved.index = 0
    }

    return resolved;
    }
};

class field_get_vec3fResponse {
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
        this.value = new geometry_msgs.msg.Vector3();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type field_get_vec3fResponse
    // Serialize message field [value]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type field_get_vec3fResponse
    let len;
    let data = new field_get_vec3fResponse(null);
    // Deserialize message field [value]
    data.value = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'webots_ros/field_get_vec3fResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a2c51c1a0258b375bed188057dceaac2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Vector3 value
    
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new field_get_vec3fResponse(null);
    if (msg.value !== undefined) {
      resolved.value = geometry_msgs.msg.Vector3.Resolve(msg.value)
    }
    else {
      resolved.value = new geometry_msgs.msg.Vector3()
    }

    return resolved;
    }
};

module.exports = {
  Request: field_get_vec3fRequest,
  Response: field_get_vec3fResponse,
  md5sum() { return '5ba75d9d095ca14bcb57c58ac3b63422'; },
  datatype() { return 'webots_ros/field_get_vec3f'; }
};
