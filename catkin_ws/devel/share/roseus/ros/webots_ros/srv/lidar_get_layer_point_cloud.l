;; Auto-generated. Do not edit!


(when (boundp 'webots_ros::lidar_get_layer_point_cloud)
  (if (not (find-package "WEBOTS_ROS"))
    (make-package "WEBOTS_ROS"))
  (shadow 'lidar_get_layer_point_cloud (find-package "WEBOTS_ROS")))
(unless (find-package "WEBOTS_ROS::LIDAR_GET_LAYER_POINT_CLOUD")
  (make-package "WEBOTS_ROS::LIDAR_GET_LAYER_POINT_CLOUD"))
(unless (find-package "WEBOTS_ROS::LIDAR_GET_LAYER_POINT_CLOUDREQUEST")
  (make-package "WEBOTS_ROS::LIDAR_GET_LAYER_POINT_CLOUDREQUEST"))
(unless (find-package "WEBOTS_ROS::LIDAR_GET_LAYER_POINT_CLOUDRESPONSE")
  (make-package "WEBOTS_ROS::LIDAR_GET_LAYER_POINT_CLOUDRESPONSE"))

(in-package "ROS")



(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass webots_ros::lidar_get_layer_point_cloudRequest
  :super ros::object
  :slots (_layer ))

(defmethod webots_ros::lidar_get_layer_point_cloudRequest
  (:init
   (&key
    ((:layer __layer) 0)
    )
   (send-super :init)
   (setq _layer (round __layer))
   self)
  (:layer
   (&optional __layer)
   (if __layer (setq _layer __layer)) _layer)
  (:serialization-length
   ()
   (+
    ;; int32 _layer
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _layer
       (write-long _layer s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _layer
     (setq _layer (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass webots_ros::lidar_get_layer_point_cloudResponse
  :super ros::object
  :slots (_pointCloud ))

(defmethod webots_ros::lidar_get_layer_point_cloudResponse
  (:init
   (&key
    ((:pointCloud __pointCloud) (instance sensor_msgs::PointCloud :init))
    )
   (send-super :init)
   (setq _pointCloud __pointCloud)
   self)
  (:pointCloud
   (&rest __pointCloud)
   (if (keywordp (car __pointCloud))
       (send* _pointCloud __pointCloud)
     (progn
       (if __pointCloud (setq _pointCloud (car __pointCloud)))
       _pointCloud)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/PointCloud _pointCloud
    (send _pointCloud :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/PointCloud _pointCloud
       (send _pointCloud :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/PointCloud _pointCloud
     (send _pointCloud :deserialize buf ptr-) (incf ptr- (send _pointCloud :serialization-length))
   ;;
   self)
  )

(defclass webots_ros::lidar_get_layer_point_cloud
  :super ros::object
  :slots ())

(setf (get webots_ros::lidar_get_layer_point_cloud :md5sum-) "9620f6bf808309a1da1889afe972eac6")
(setf (get webots_ros::lidar_get_layer_point_cloud :datatype-) "webots_ros/lidar_get_layer_point_cloud")
(setf (get webots_ros::lidar_get_layer_point_cloud :request) webots_ros::lidar_get_layer_point_cloudRequest)
(setf (get webots_ros::lidar_get_layer_point_cloud :response) webots_ros::lidar_get_layer_point_cloudResponse)

(defmethod webots_ros::lidar_get_layer_point_cloudRequest
  (:response () (instance webots_ros::lidar_get_layer_point_cloudResponse :init)))

(setf (get webots_ros::lidar_get_layer_point_cloudRequest :md5sum-) "9620f6bf808309a1da1889afe972eac6")
(setf (get webots_ros::lidar_get_layer_point_cloudRequest :datatype-) "webots_ros/lidar_get_layer_point_cloudRequest")
(setf (get webots_ros::lidar_get_layer_point_cloudRequest :definition-)
      "int32 layer
---
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
#   \"u\", \"v\" - row and column (respectively) in the left stereo image.
#              This is opposite to usual conventions but remains for
#              historical reasons. The newer PointCloud2 message has no
#              such problem.
#   \"rgb\" - For point clouds produced by color stereo cameras. uint8
#           (R,G,B) values packed into the least significant 24 bits,
#           in order.
#   \"intensity\" - laser or pixel intensity.
#   \"distance\"

# The channel name should give semantics of the channel (e.g.
# \"intensity\" instead of \"value\").
string name

# The values array should be 1-1 with the elements of the associated
# PointCloud.
float32[] values
")

(setf (get webots_ros::lidar_get_layer_point_cloudResponse :md5sum-) "9620f6bf808309a1da1889afe972eac6")
(setf (get webots_ros::lidar_get_layer_point_cloudResponse :datatype-) "webots_ros/lidar_get_layer_point_cloudResponse")
(setf (get webots_ros::lidar_get_layer_point_cloudResponse :definition-)
      "int32 layer
---
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
#   \"u\", \"v\" - row and column (respectively) in the left stereo image.
#              This is opposite to usual conventions but remains for
#              historical reasons. The newer PointCloud2 message has no
#              such problem.
#   \"rgb\" - For point clouds produced by color stereo cameras. uint8
#           (R,G,B) values packed into the least significant 24 bits,
#           in order.
#   \"intensity\" - laser or pixel intensity.
#   \"distance\"

# The channel name should give semantics of the channel (e.g.
# \"intensity\" instead of \"value\").
string name

# The values array should be 1-1 with the elements of the associated
# PointCloud.
float32[] values
")



(provide :webots_ros/lidar_get_layer_point_cloud "9620f6bf808309a1da1889afe972eac6")


