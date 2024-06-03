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

class node_get_center_of_massRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.node = null;
    }
    else {
      if (initObj.hasOwnProperty('node')) {
        this.node = initObj.node
      }
      else {
        this.node = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type node_get_center_of_massRequest
    // Serialize message field [node]
    bufferOffset = _serializer.uint64(obj.node, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type node_get_center_of_massRequest
    let len;
    let data = new node_get_center_of_massRequest(null);
    // Deserialize message field [node]
    data.node = _deserializer.uint64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'webots_ros/node_get_center_of_massRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '364f76d0680a5475664d98abd705f036';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 node
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new node_get_center_of_massRequest(null);
    if (msg.node !== undefined) {
      resolved.node = msg.node;
    }
    else {
      resolved.node = 0
    }

    return resolved;
    }
};

class node_get_center_of_massResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.centerOfMass = null;
    }
    else {
      if (initObj.hasOwnProperty('centerOfMass')) {
        this.centerOfMass = initObj.centerOfMass
      }
      else {
        this.centerOfMass = new geometry_msgs.msg.Point();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type node_get_center_of_massResponse
    // Serialize message field [centerOfMass]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.centerOfMass, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type node_get_center_of_massResponse
    let len;
    let data = new node_get_center_of_massResponse(null);
    // Deserialize message field [centerOfMass]
    data.centerOfMass = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'webots_ros/node_get_center_of_massResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e70727e623e5dc1b6f64942e8b4ec566';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Point centerOfMass
    
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
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
    const resolved = new node_get_center_of_massResponse(null);
    if (msg.centerOfMass !== undefined) {
      resolved.centerOfMass = geometry_msgs.msg.Point.Resolve(msg.centerOfMass)
    }
    else {
      resolved.centerOfMass = new geometry_msgs.msg.Point()
    }

    return resolved;
    }
};

module.exports = {
  Request: node_get_center_of_massRequest,
  Response: node_get_center_of_massResponse,
  md5sum() { return '08baa9a118e7086ad4f02f73fae3dd80'; },
  datatype() { return 'webots_ros/node_get_center_of_mass'; }
};
