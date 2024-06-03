;; Auto-generated. Do not edit!


(when (boundp 'webots_ros::lidar_get_layer_range_image)
  (if (not (find-package "WEBOTS_ROS"))
    (make-package "WEBOTS_ROS"))
  (shadow 'lidar_get_layer_range_image (find-package "WEBOTS_ROS")))
(unless (find-package "WEBOTS_ROS::LIDAR_GET_LAYER_RANGE_IMAGE")
  (make-package "WEBOTS_ROS::LIDAR_GET_LAYER_RANGE_IMAGE"))
(unless (find-package "WEBOTS_ROS::LIDAR_GET_LAYER_RANGE_IMAGEREQUEST")
  (make-package "WEBOTS_ROS::LIDAR_GET_LAYER_RANGE_IMAGEREQUEST"))
(unless (find-package "WEBOTS_ROS::LIDAR_GET_LAYER_RANGE_IMAGERESPONSE")
  (make-package "WEBOTS_ROS::LIDAR_GET_LAYER_RANGE_IMAGERESPONSE"))

(in-package "ROS")



(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass webots_ros::lidar_get_layer_range_imageRequest
  :super ros::object
  :slots (_layer ))

(defmethod webots_ros::lidar_get_layer_range_imageRequest
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

(defclass webots_ros::lidar_get_layer_range_imageResponse
  :super ros::object
  :slots (_image ))

(defmethod webots_ros::lidar_get_layer_range_imageResponse
  (:init
   (&key
    ((:image __image) (instance sensor_msgs::Image :init))
    )
   (send-super :init)
   (setq _image __image)
   self)
  (:image
   (&rest __image)
   (if (keywordp (car __image))
       (send* _image __image)
     (progn
       (if __image (setq _image (car __image)))
       _image)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/Image _image
    (send _image :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/Image _image
       (send _image :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/Image _image
     (send _image :deserialize buf ptr-) (incf ptr- (send _image :serialization-length))
   ;;
   self)
  )

(defclass webots_ros::lidar_get_layer_range_image
  :super ros::object
  :slots ())

(setf (get webots_ros::lidar_get_layer_range_image :md5sum-) "4d25c95147eb8b7728942d09e84dc175")
(setf (get webots_ros::lidar_get_layer_range_image :datatype-) "webots_ros/lidar_get_layer_range_image")
(setf (get webots_ros::lidar_get_layer_range_image :request) webots_ros::lidar_get_layer_range_imageRequest)
(setf (get webots_ros::lidar_get_layer_range_image :response) webots_ros::lidar_get_layer_range_imageResponse)

(defmethod webots_ros::lidar_get_layer_range_imageRequest
  (:response () (instance webots_ros::lidar_get_layer_range_imageResponse :init)))

(setf (get webots_ros::lidar_get_layer_range_imageRequest :md5sum-) "4d25c95147eb8b7728942d09e84dc175")
(setf (get webots_ros::lidar_get_layer_range_imageRequest :datatype-) "webots_ros/lidar_get_layer_range_imageRequest")
(setf (get webots_ros::lidar_get_layer_range_imageRequest :definition-)
      "int32 layer
---
sensor_msgs/Image image


================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

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
")

(setf (get webots_ros::lidar_get_layer_range_imageResponse :md5sum-) "4d25c95147eb8b7728942d09e84dc175")
(setf (get webots_ros::lidar_get_layer_range_imageResponse :datatype-) "webots_ros/lidar_get_layer_range_imageResponse")
(setf (get webots_ros::lidar_get_layer_range_imageResponse :definition-)
      "int32 layer
---
sensor_msgs/Image image


================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

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
")



(provide :webots_ros/lidar_get_layer_range_image "4d25c95147eb8b7728942d09e84dc175")


