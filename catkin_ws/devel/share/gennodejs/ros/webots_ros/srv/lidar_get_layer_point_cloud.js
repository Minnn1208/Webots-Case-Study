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

let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

class lidar_get_layer_point_cloudRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.layer = null;
    }
    else {
      if (initObj.hasOwnProperty('layer')) {
        this.layer = initObj.layer
      }
      else {
        this.layer = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type lidar_get_layer_point_cloudRequest
    // Serialize message field [layer]
    bufferOffset = _serializer.int32(obj.layer, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type lidar_get_layer_point_cloudRequest
    let len;
    let data = new lidar_get_layer_point_cloudRequest(null);
    // Deserialize message field [layer]
    data.layer = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'webots_ros/lidar_get_layer_point_cloudRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0d6c1c0236296850b6361a672e8a61c4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 layer
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new lidar_get_layer_point_cloudRequest(null);
    if (msg.layer !== undefined) {
      resolved.layer = msg.layer;
    }
    else {
      resolved.layer = 0
    }

    return resolved;
    }
};

class lidar_get_layer_point_cloudResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pointCloud = null;
    }
    else {
      if (initObj.hasOwnProperty('pointCloud')) {
        this.pointCloud = initObj.pointCloud
      }
      else {
        this.pointCloud = new sensor_msgs.msg.PointCloud();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type lidar_get_layer_point_cloudResponse
    // Serialize message field [pointCloud]
    bufferOffset = sensor_msgs.msg.PointCloud.serialize(obj.pointCloud, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type lidar_get_layer_point_cloudResponse
    let len;
    let data = new lidar_get_layer_point_cloudResponse(null);
    // Deserialize message field [pointCloud]
    data.pointCloud = sensor_msgs.msg.PointCloud.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.PointCloud.getMessageSize(object.pointCloud);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'webots_ros/lidar_get_layer_point_cloudResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e08e3c13c98d23184c44ac2bd82ce8b4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    sensor_msgs/PointCloud pointCloud
    
    
    ================================================================================
    MSG: sensor_msgs/PointCloud
    # This message holds a collection of 3d points, plus optional additional
    # information about each point.
    
    # Time of sensor data acquisition, coordinate frame ID.
    Header header
    
    # Array of 3d points. Each Point32 should be interpreted as a 3d point
    # in the frame given in the header.
    geometry_msgs/Point32[] points
    
    # Each channel should have the same number of elements as points array,
    # and the data in each channel should correspond 1:1 with each point.
    # Channel names in common practice are listed in ChannelFloat32.msg.
    ChannelFloat32[] channels
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: geometry_msgs/Point32
    # This contains the position of a point in free space(with 32 bits of precision).
    # It is recommeded to use Point wherever possible instead of Point32.  
    # 
    # This recommendation is to promote interoperability.  
    #
    # This message is designed to take up less space when sending
    # lots of points at once, as in the case of a PointCloud.  
    
    float32 x
    float32 y
    float32 z
    ================================================================================
    MSG: sensor_msgs/ChannelFloat32
    # This message is used by the PointCloud message to hold optional data
    # associated with each point in the cloud. The length of the values
    # array should be the same as the length of the points array in the
    # PointCloud, and each value should be associated with the corresponding
    # point.
    
    # Channel names in existing practice include:
    #   "u", "v" - row and column (respectively) in the left stereo image.
    #              This is opposite to usual conventions but remains for
    #              historical reasons. The newer PointCloud2 message has no
    #              such problem.
    #   "rgb" - For point clouds produced by color stereo cameras. uint8
    #           (R,G,B) values packed into the least significant 24 bits,
    #           in order.
    #   "intensity" - laser or pixel intensity.
    #   "distance"
    
    # The channel name should give semantics of the channel (e.g.
    # "intensity" instead of "value").
    string name
    
    # The values array should be 1-1 with the elements of the associated
    # PointCloud.
    float32[] values
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new lidar_get_layer_point_cloudResponse(null);
    if (msg.pointCloud !== undefined) {
      resolved.pointCloud = sensor_msgs.msg.PointCloud.Resolve(msg.pointCloud)
    }
    else {
      resolved.pointCloud = new sensor_msgs.msg.PointCloud()
    }

    return resolved;
    }
};

module.exports = {
  Request: lidar_get_layer_point_cloudRequest,
  Response: lidar_get_layer_point_cloudResponse,
  md5sum() { return '9620f6bf808309a1da1889afe972eac6'; },
  datatype() { return 'webots_ros/lidar_get_layer_point_cloud'; }
};
