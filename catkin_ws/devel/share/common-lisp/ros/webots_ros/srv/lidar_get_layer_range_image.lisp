; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude lidar_get_layer_range_image-request.msg.html

(cl:defclass <lidar_get_layer_range_image-request> (roslisp-msg-protocol:ros-message)
  ((layer
    :reader layer
    :initarg :layer
    :type cl:integer
    :initform 0))
)

(cl:defclass lidar_get_layer_range_image-request (<lidar_get_layer_range_image-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <lidar_get_layer_range_image-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'lidar_get_layer_range_image-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<lidar_get_layer_range_image-request> is deprecated: use webots_ros-srv:lidar_get_layer_range_image-request instead.")))

(cl:ensure-generic-function 'layer-val :lambda-list '(m))
(cl:defmethod layer-val ((m <lidar_get_layer_range_image-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:layer-val is deprecated.  Use webots_ros-srv:layer instead.")
  (layer m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <lidar_get_layer_range_image-request>) ostream)
  "Serializes a message object of type '<lidar_get_layer_range_image-request>"
  (cl:let* ((signed (cl:slot-value msg 'layer)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <lidar_get_layer_range_image-request>) istream)
  "Deserializes a message object of type '<lidar_get_layer_range_image-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'layer) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<lidar_get_layer_range_image-request>)))
  "Returns string type for a service object of type '<lidar_get_layer_range_image-request>"
  "webots_ros/lidar_get_layer_range_imageRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'lidar_get_layer_range_image-request)))
  "Returns string type for a service object of type 'lidar_get_layer_range_image-request"
  "webots_ros/lidar_get_layer_range_imageRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<lidar_get_layer_range_image-request>)))
  "Returns md5sum for a message object of type '<lidar_get_layer_range_image-request>"
  "4d25c95147eb8b7728942d09e84dc175")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'lidar_get_layer_range_image-request)))
  "Returns md5sum for a message object of type 'lidar_get_layer_range_image-request"
  "4d25c95147eb8b7728942d09e84dc175")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<lidar_get_layer_range_image-request>)))
  "Returns full string definition for message of type '<lidar_get_layer_range_image-request>"
  (cl:format cl:nil "int32 layer~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'lidar_get_layer_range_image-request)))
  "Returns full string definition for message of type 'lidar_get_layer_range_image-request"
  (cl:format cl:nil "int32 layer~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <lidar_get_layer_range_image-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <lidar_get_layer_range_image-request>))
  "Converts a ROS message object to a list"
  (cl:list 'lidar_get_layer_range_image-request
    (cl:cons ':layer (layer msg))
))
;//! \htmlinclude lidar_get_layer_range_image-response.msg.html

(cl:defclass <lidar_get_layer_range_image-response> (roslisp-msg-protocol:ros-message)
  ((image
    :reader image
    :initarg :image
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image)))
)

(cl:defclass lidar_get_layer_range_image-response (<lidar_get_layer_range_image-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <lidar_get_layer_range_image-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'lidar_get_layer_range_image-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<lidar_get_layer_range_image-response> is deprecated: use webots_ros-srv:lidar_get_layer_range_image-response instead.")))

(cl:ensure-generic-function 'image-val :lambda-list '(m))
(cl:defmethod image-val ((m <lidar_get_layer_range_image-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:image-val is deprecated.  Use webots_ros-srv:image instead.")
  (image m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <lidar_get_layer_range_image-response>) ostream)
  "Serializes a message object of type '<lidar_get_layer_range_image-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'image) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <lidar_get_layer_range_image-response>) istream)
  "Deserializes a message object of type '<lidar_get_layer_range_image-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'image) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<lidar_get_layer_range_image-response>)))
  "Returns string type for a service object of type '<lidar_get_layer_range_image-response>"
  "webots_ros/lidar_get_layer_range_imageResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'lidar_get_layer_range_image-response)))
  "Returns string type for a service object of type 'lidar_get_layer_range_image-response"
  "webots_ros/lidar_get_layer_range_imageResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<lidar_get_layer_range_image-response>)))
  "Returns md5sum for a message object of type '<lidar_get_layer_range_image-response>"
  "4d25c95147eb8b7728942d09e84dc175")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'lidar_get_layer_range_image-response)))
  "Returns md5sum for a message object of type 'lidar_get_layer_range_image-response"
  "4d25c95147eb8b7728942d09e84dc175")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<lidar_get_layer_range_image-response>)))
  "Returns full string definition for message of type '<lidar_get_layer_range_image-response>"
  (cl:format cl:nil "sensor_msgs/Image image~%~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'lidar_get_layer_range_image-response)))
  "Returns full string definition for message of type 'lidar_get_layer_range_image-response"
  (cl:format cl:nil "sensor_msgs/Image image~%~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <lidar_get_layer_range_image-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'image))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <lidar_get_layer_range_image-response>))
  "Converts a ROS message object to a list"
  (cl:list 'lidar_get_layer_range_image-response
    (cl:cons ':image (image msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'lidar_get_layer_range_image)))
  'lidar_get_layer_range_image-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'lidar_get_layer_range_image)))
  'lidar_get_layer_range_image-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'lidar_get_layer_range_image)))
  "Returns string type for a service object of type '<lidar_get_layer_range_image>"
  "webots_ros/lidar_get_layer_range_image")