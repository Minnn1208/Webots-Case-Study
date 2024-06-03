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

class node_get_poseRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.node = null;
      this.from_node = null;
    }
    else {
      if (initObj.hasOwnProperty('node')) {
        this.node = initObj.node
      }
      else {
        this.node = 0;
      }
      if (initObj.hasOwnProperty('from_node')) {
        this.from_node = initObj.from_node
      }
      else {
        this.from_node = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type node_get_poseRequest
    // Serialize message field [node]
    bufferOffset = _serializer.uint64(obj.node, buffer, bufferOffset);
    // Serialize message field [from_node]
    bufferOffset = _serializer.uint64(obj.from_node, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type node_get_poseRequest
    let len;
    let data = new node_get_poseRequest(null);
    // Deserialize message field [node]
    data.node = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [from_node]
    data.from_node = _deserializer.uint64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'webots_ros/node_get_poseRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eda5466e6469f685de429bfb11a7d60a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 node
    uint64 from_node
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new node_get_poseRequest(null);
    if (msg.node !== undefined) {
      resolved.node = msg.node;
    }
    else {
      resolved.node = 0
    }

    if (msg.from_node !== undefined) {
      resolved.from_node = msg.from_node;
    }
    else {
      resolved.from_node = 0
    }

    return resolved;
    }
};

class node_get_poseResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pose = null;
    }
    else {
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.Transform();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type node_get_poseResponse
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Transform.serialize(obj.pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type node_get_poseResponse
    let len;
    let data = new node_get_poseResponse(null);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Transform.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 56;
  }

  static datatype() {
    // Returns string type for a service object
    return 'webots_ros/node_get_poseResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '96280f359de4c102d6564b28af811210';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Transform pose
    
    
    ================================================================================
    MSG: geometry_msgs/Transform
    # This represents the transform between two coordinate frames in free space.
    
    Vector3 translation
    Quaternion rotation
    
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
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new node_get_poseResponse(null);
    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.Transform.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.Transform()
    }

    return resolved;
    }
};

module.exports = {
  Request: node_get_poseRequest,
  Response: node_get_poseResponse,
  md5sum() { return 'c971ec247720786da5fd4aa095defd52'; },
  datatype() { return 'webots_ros/node_get_pose'; }
};
