; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude lidar_get_layer_point_cloud-request.msg.html

(cl:defclass <lidar_get_layer_point_cloud-request> (roslisp-msg-protocol:ros-message)
  ((layer
    :reader layer
    :initarg :layer
    :type cl:integer
    :initform 0))
)

(cl:defclass lidar_get_layer_point_cloud-request (<lidar_get_layer_point_cloud-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <lidar_get_layer_point_cloud-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'lidar_get_layer_point_cloud-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<lidar_get_layer_point_cloud-request> is deprecated: use webots_ros-srv:lidar_get_layer_point_cloud-request instead.")))

(cl:ensure-generic-function 'layer-val :lambda-list '(m))
(cl:defmethod layer-val ((m <lidar_get_layer_point_cloud-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:layer-val is deprecated.  Use webots_ros-srv:layer instead.")
  (layer m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <lidar_get_layer_point_cloud-request>) ostream)
  "Serializes a message object of type '<lidar_get_layer_point_cloud-request>"
  (cl:let* ((signed (cl:slot-value msg 'layer)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <lidar_get_layer_point_cloud-request>) istream)
  "Deserializes a message object of type '<lidar_get_layer_point_cloud-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'layer) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<lidar_get_layer_point_cloud-request>)))
  "Returns string type for a service object of type '<lidar_get_layer_point_cloud-request>"
  "webots_ros/lidar_get_layer_point_cloudRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'lidar_get_layer_point_cloud-request)))
  "Returns string type for a service object of type 'lidar_get_layer_point_cloud-request"
  "webots_ros/lidar_get_layer_point_cloudRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<lidar_get_layer_point_cloud-request>)))
  "Returns md5sum for a message object of type '<lidar_get_layer_point_cloud-request>"
  "9620f6bf808309a1da1889afe972eac6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'lidar_get_layer_point_cloud-request)))
  "Returns md5sum for a message object of type 'lidar_get_layer_point_cloud-request"
  "9620f6bf808309a1da1889afe972eac6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<lidar_get_layer_point_cloud-request>)))
  "Returns full string definition for message of type '<lidar_get_layer_point_cloud-request>"
  (cl:format cl:nil "int32 layer~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'lidar_get_layer_point_cloud-request)))
  "Returns full string definition for message of type 'lidar_get_layer_point_cloud-request"
  (cl:format cl:nil "int32 layer~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <lidar_get_layer_point_cloud-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <lidar_get_layer_point_cloud-request>))
  "Converts a ROS message object to a list"
  (cl:list 'lidar_get_layer_point_cloud-request
    (cl:cons ':layer (layer msg))
))
;//! \htmlinclude lidar_get_layer_point_cloud-response.msg.html

(cl:defclass <lidar_get_layer_point_cloud-response> (roslisp-msg-protocol:ros-message)
  ((pointCloud
    :reader pointCloud
    :initarg :pointCloud
    :type sensor_msgs-msg:PointCloud
    :initform (cl:make-instance 'sensor_msgs-msg:PointCloud)))
)

(cl:defclass lidar_get_layer_point_cloud-response (<lidar_get_layer_point_cloud-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <lidar_get_layer_point_cloud-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'lidar_get_layer_point_cloud-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<lidar_get_layer_point_cloud-response> is deprecated: use webots_ros-srv:lidar_get_layer_point_cloud-response instead.")))

(cl:ensure-generic-function 'pointCloud-val :lambda-list '(m))
(cl:defmethod pointCloud-val ((m <lidar_get_layer_point_cloud-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:pointCloud-val is deprecated.  Use webots_ros-srv:pointCloud instead.")
  (pointCloud m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <lidar_get_layer_point_cloud-response>) ostream)
  "Serializes a message object of type '<lidar_get_layer_point_cloud-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pointCloud) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <lidar_get_layer_point_cloud-response>) istream)
  "Deserializes a message object of type '<lidar_get_layer_point_cloud-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pointCloud) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<lidar_get_layer_point_cloud-response>)))
  "Returns string type for a service object of type '<lidar_get_layer_point_cloud-response>"
  "webots_ros/lidar_get_layer_point_cloudResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'lidar_get_layer_point_cloud-response)))
  "Returns string type for a service object of type 'lidar_get_layer_point_cloud-response"
  "webots_ros/lidar_get_layer_point_cloudResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<lidar_get_layer_point_cloud-response>)))
  "Returns md5sum for a message object of type '<lidar_get_layer_point_cloud-response>"
  "9620f6bf808309a1da1889afe972eac6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'lidar_get_layer_point_cloud-response)))
  "Returns md5sum for a message object of type 'lidar_get_layer_point_cloud-response"
  "9620f6bf808309a1da1889afe972eac6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<lidar_get_layer_point_cloud-response>)))
  "Returns full string definition for message of type '<lidar_get_layer_point_cloud-response>"
  (cl:format cl:nil "sensor_msgs/PointCloud pointCloud~%~%~%================================================================================~%MSG: sensor_msgs/PointCloud~%# This message holds a collection of 3d points, plus optional additional~%# information about each point.~%~%# Time of sensor data acquisition, coordinate frame ID.~%Header header~%~%# Array of 3d points. Each Point32 should be interpreted as a 3d point~%# in the frame given in the header.~%geometry_msgs/Point32[] points~%~%# Each channel should have the same number of elements as points array,~%# and the data in each channel should correspond 1:1 with each point.~%# Channel names in common practice are listed in ChannelFloat32.msg.~%ChannelFloat32[] channels~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: sensor_msgs/ChannelFloat32~%# This message is used by the PointCloud message to hold optional data~%# associated with each point in the cloud. The length of the values~%# array should be the same as the length of the points array in the~%# PointCloud, and each value should be associated with the corresponding~%# point.~%~%# Channel names in existing practice include:~%#   \"u\", \"v\" - row and column (respectively) in the left stereo image.~%#              This is opposite to usual conventions but remains for~%#              historical reasons. The newer PointCloud2 message has no~%#              such problem.~%#   \"rgb\" - For point clouds produced by color stereo cameras. uint8~%#           (R,G,B) values packed into the least significant 24 bits,~%#           in order.~%#   \"intensity\" - laser or pixel intensity.~%#   \"distance\"~%~%# The channel name should give semantics of the channel (e.g.~%# \"intensity\" instead of \"value\").~%string name~%~%# The values array should be 1-1 with the elements of the associated~%# PointCloud.~%float32[] values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'lidar_get_layer_point_cloud-response)))
  "Returns full string definition for message of type 'lidar_get_layer_point_cloud-response"
  (cl:format cl:nil "sensor_msgs/PointCloud pointCloud~%~%~%================================================================================~%MSG: sensor_msgs/PointCloud~%# This message holds a collection of 3d points, plus optional additional~%# information about each point.~%~%# Time of sensor data acquisition, coordinate frame ID.~%Header header~%~%# Array of 3d points. Each Point32 should be interpreted as a 3d point~%# in the frame given in the header.~%geometry_msgs/Point32[] points~%~%# Each channel should have the same number of elements as points array,~%# and the data in each channel should correspond 1:1 with each point.~%# Channel names in common practice are listed in ChannelFloat32.msg.~%ChannelFloat32[] channels~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: sensor_msgs/ChannelFloat32~%# This message is used by the PointCloud message to hold optional data~%# associated with each point in the cloud. The length of the values~%# array should be the same as the length of the points array in the~%# PointCloud, and each value should be associated with the corresponding~%# point.~%~%# Channel names in existing practice include:~%#   \"u\", \"v\" - row and column (respectively) in the left stereo image.~%#              This is opposite to usual conventions but remains for~%#              historical reasons. The newer PointCloud2 message has no~%#              such problem.~%#   \"rgb\" - For point clouds produced by color stereo cameras. uint8~%#           (R,G,B) values packed into the least significant 24 bits,~%#           in order.~%#   \"intensity\" - laser or pixel intensity.~%#   \"distance\"~%~%# The channel name should give semantics of the channel (e.g.~%# \"intensity\" instead of \"value\").~%string name~%~%# The values array should be 1-1 with the elements of the associated~%# PointCloud.~%float32[] values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <lidar_get_layer_point_cloud-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pointCloud))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <lidar_get_layer_point_cloud-response>))
  "Converts a ROS message object to a list"
  (cl:list 'lidar_get_layer_point_cloud-response
    (cl:cons ':pointCloud (pointCloud msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'lidar_get_layer_point_cloud)))
  'lidar_get_layer_point_cloud-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'lidar_get_layer_point_cloud)))
  'lidar_get_layer_point_cloud-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'lidar_get_layer_point_cloud)))
  "Returns string type for a service object of type '<lidar_get_layer_point_cloud>"
  "webots_ros/lidar_get_layer_point_cloud")