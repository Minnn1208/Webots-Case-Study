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

let ContactPoint = require('../msg/ContactPoint.js');

//-----------------------------------------------------------

class node_get_contact_pointsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.node = null;
      this.include_descendants = null;
    }
    else {
      if (initObj.hasOwnProperty('node')) {
        this.node = initObj.node
      }
      else {
        this.node = 0;
      }
      if (initObj.hasOwnProperty('include_descendants')) {
        this.include_descendants = initObj.include_descendants
      }
      else {
        this.include_descendants = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type node_get_contact_pointsRequest
    // Serialize message field [node]
    bufferOffset = _serializer.uint64(obj.node, buffer, bufferOffset);
    // Serialize message field [include_descendants]
    bufferOffset = _serializer.bool(obj.include_descendants, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type node_get_contact_pointsRequest
    let len;
    let data = new node_get_contact_pointsRequest(null);
    // Deserialize message field [node]
    data.node = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [include_descendants]
    data.include_descendants = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'webots_ros/node_get_contact_pointsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5c4df127c770c26f94b8cdc3c61f1dc0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 node
    bool include_descendants
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new node_get_contact_pointsRequest(null);
    if (msg.node !== undefined) {
      resolved.node = msg.node;
    }
    else {
      resolved.node = 0
    }

    if (msg.include_descendants !== undefined) {
      resolved.include_descendants = msg.include_descendants;
    }
    else {
      resolved.include_descendants = false
    }

    return resolved;
    }
};

class node_get_contact_pointsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.contact_points = null;
    }
    else {
      if (initObj.hasOwnProperty('contact_points')) {
        this.contact_points = initObj.contact_points
      }
      else {
        this.contact_points = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type node_get_contact_pointsResponse
    // Serialize message field [contact_points]
    // Serialize the length for message field [contact_points]
    bufferOffset = _serializer.uint32(obj.contact_points.length, buffer, bufferOffset);
    obj.contact_points.forEach((val) => {
      bufferOffset = ContactPoint.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type node_get_contact_pointsResponse
    let len;
    let data = new node_get_contact_pointsResponse(null);
    // Deserialize message field [contact_points]
    // Deserialize array length for message field [contact_points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.contact_points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.contact_points[i] = ContactPoint.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 28 * object.contact_points.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'webots_ros/node_get_contact_pointsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '484624ae2556355b876c7bc286b22f3b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    webots_ros/ContactPoint[] contact_points
    
    
    ================================================================================
    MSG: webots_ros/ContactPoint
    geometry_msgs/Point point
    int32 node_id
    
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
    const resolved = new node_get_contact_pointsResponse(null);
    if (msg.contact_points !== undefined) {
      resolved.contact_points = new Array(msg.contact_points.length);
      for (let i = 0; i < resolved.contact_points.length; ++i) {
        resolved.contact_points[i] = ContactPoint.Resolve(msg.contact_points[i]);
      }
    }
    else {
      resolved.contact_points = []
    }

    return resolved;
    }
};

module.exports = {
  Request: node_get_contact_pointsRequest,
  Response: node_get_contact_pointsResponse,
  md5sum() { return '2b8ca1a0f35ff5c1915577923081855f'; },
  datatype() { return 'webots_ros/node_get_contact_points'; }
};
