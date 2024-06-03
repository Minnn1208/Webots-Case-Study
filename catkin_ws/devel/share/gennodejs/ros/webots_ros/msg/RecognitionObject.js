// Auto-generated. Do not edit!

// (in-package webots_ros.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class RecognitionObject {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.position = null;
      this.orientation = null;
      this.position_on_image = null;
      this.size_on_image = null;
      this.number_of_colors = null;
      this.colors = null;
      this.model = null;
    }
    else {
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('orientation')) {
        this.orientation = initObj.orientation
      }
      else {
        this.orientation = new geometry_msgs.msg.Quaternion();
      }
      if (initObj.hasOwnProperty('position_on_image')) {
        this.position_on_image = initObj.position_on_image
      }
      else {
        this.position_on_image = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('size_on_image')) {
        this.size_on_image = initObj.size_on_image
      }
      else {
        this.size_on_image = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('number_of_colors')) {
        this.number_of_colors = initObj.number_of_colors
      }
      else {
        this.number_of_colors = 0;
      }
      if (initObj.hasOwnProperty('colors')) {
        this.colors = initObj.colors
      }
      else {
        this.colors = [];
      }
      if (initObj.hasOwnProperty('model')) {
        this.model = initObj.model
      }
      else {
        this.model = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RecognitionObject
    // Serialize message field [position]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [orientation]
    bufferOffset = geometry_msgs.msg.Quaternion.serialize(obj.orientation, buffer, bufferOffset);
    // Serialize message field [position_on_image]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.position_on_image, buffer, bufferOffset);
    // Serialize message field [size_on_image]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.size_on_image, buffer, bufferOffset);
    // Serialize message field [number_of_colors]
    bufferOffset = _serializer.int32(obj.number_of_colors, buffer, bufferOffset);
    // Serialize message field [colors]
    // Serialize the length for message field [colors]
    bufferOffset = _serializer.uint32(obj.colors.length, buffer, bufferOffset);
    obj.colors.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Vector3.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [model]
    bufferOffset = _serializer.string(obj.model, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RecognitionObject
    let len;
    let data = new RecognitionObject(null);
    // Deserialize message field [position]
    data.position = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [orientation]
    data.orientation = geometry_msgs.msg.Quaternion.deserialize(buffer, bufferOffset);
    // Deserialize message field [position_on_image]
    data.position_on_image = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [size_on_image]
    data.size_on_image = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [number_of_colors]
    data.number_of_colors = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [colors]
    // Deserialize array length for message field [colors]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.colors = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.colors[i] = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [model]
    data.model = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.colors.length;
    length += _getByteLength(object.model);
    return length + 116;
  }

  static datatype() {
    // Returns string type for a message object
    return 'webots_ros/RecognitionObject';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd1a091cfdf9ce6628a657e03f119442a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Vector3 position
    geometry_msgs/Quaternion orientation
    geometry_msgs/Vector3 position_on_image
    geometry_msgs/Vector3 size_on_image
    int32 number_of_colors
    geometry_msgs/Vector3[] colors
    string model
    
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
    const resolved = new RecognitionObject(null);
    if (msg.position !== undefined) {
      resolved.position = geometry_msgs.msg.Vector3.Resolve(msg.position)
    }
    else {
      resolved.position = new geometry_msgs.msg.Vector3()
    }

    if (msg.orientation !== undefined) {
      resolved.orientation = geometry_msgs.msg.Quaternion.Resolve(msg.orientation)
    }
    else {
      resolved.orientation = new geometry_msgs.msg.Quaternion()
    }

    if (msg.position_on_image !== undefined) {
      resolved.position_on_image = geometry_msgs.msg.Vector3.Resolve(msg.position_on_image)
    }
    else {
      resolved.position_on_image = new geometry_msgs.msg.Vector3()
    }

    if (msg.size_on_image !== undefined) {
      resolved.size_on_image = geometry_msgs.msg.Vector3.Resolve(msg.size_on_image)
    }
    else {
      resolved.size_on_image = new geometry_msgs.msg.Vector3()
    }

    if (msg.number_of_colors !== undefined) {
      resolved.number_of_colors = msg.number_of_colors;
    }
    else {
      resolved.number_of_colors = 0
    }

    if (msg.colors !== undefined) {
      resolved.colors = new Array(msg.colors.length);
      for (let i = 0; i < resolved.colors.length; ++i) {
        resolved.colors[i] = geometry_msgs.msg.Vector3.Resolve(msg.colors[i]);
      }
    }
    else {
      resolved.colors = []
    }

    if (msg.model !== undefined) {
      resolved.model = msg.model;
    }
    else {
      resolved.model = ''
    }

    return resolved;
    }
};

module.exports = RecognitionObject;
