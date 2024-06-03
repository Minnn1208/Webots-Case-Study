; Auto-generated. Do not edit!


(cl:in-package webots_ros-msg)


;//! \htmlinclude RecognitionObjects.msg.html

(cl:defclass <RecognitionObjects> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (objects
    :reader objects
    :initarg :objects
    :type (cl:vector webots_ros-msg:RecognitionObject)
   :initform (cl:make-array 0 :element-type 'webots_ros-msg:RecognitionObject :initial-element (cl:make-instance 'webots_ros-msg:RecognitionObject))))
)

(cl:defclass RecognitionObjects (<RecognitionObjects>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RecognitionObjects>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RecognitionObjects)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-msg:<RecognitionObjects> is deprecated: use webots_ros-msg:RecognitionObjects instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RecognitionObjects>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-msg:header-val is deprecated.  Use webots_ros-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'objects-val :lambda-list '(m))
(cl:defmethod objects-val ((m <RecognitionObjects>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-msg:objects-val is deprecated.  Use webots_ros-msg:objects instead.")
  (objects m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RecognitionObjects>) ostream)
  "Serializes a message object of type '<RecognitionObjects>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'objects))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'objects))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RecognitionObjects>) istream)
  "Deserializes a message object of type '<RecognitionObjects>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'objects) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'objects)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'webots_ros-msg:RecognitionObject))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RecognitionObjects>)))
  "Returns string type for a message object of type '<RecognitionObjects>"
  "webots_ros/RecognitionObjects")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RecognitionObjects)))
  "Returns string type for a message object of type 'RecognitionObjects"
  "webots_ros/RecognitionObjects")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RecognitionObjects>)))
  "Returns md5sum for a message object of type '<RecognitionObjects>"
  "ac0ec54e563936d28b7dec5cf26184c3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RecognitionObjects)))
  "Returns md5sum for a message object of type 'RecognitionObjects"
  "ac0ec54e563936d28b7dec5cf26184c3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RecognitionObjects>)))
  "Returns full string definition for message of type '<RecognitionObjects>"
  (cl:format cl:nil "Header header~%webots_ros/RecognitionObject[] objects~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: webots_ros/RecognitionObject~%geometry_msgs/Vector3 position~%geometry_msgs/Quaternion orientation~%geometry_msgs/Vector3 position_on_image~%geometry_msgs/Vector3 size_on_image~%int32 number_of_colors~%geometry_msgs/Vector3[] colors~%string model~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RecognitionObjects)))
  "Returns full string definition for message of type 'RecognitionObjects"
  (cl:format cl:nil "Header header~%webots_ros/RecognitionObject[] objects~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: webots_ros/RecognitionObject~%geometry_msgs/Vector3 position~%geometry_msgs/Quaternion orientation~%geometry_msgs/Vector3 position_on_image~%geometry_msgs/Vector3 size_on_image~%int32 number_of_colors~%geometry_msgs/Vector3[] colors~%string model~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RecognitionObjects>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'objects) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RecognitionObjects>))
  "Converts a ROS message object to a list"
  (cl:list 'RecognitionObjects
    (cl:cons ':header (header msg))
    (cl:cons ':objects (objects msg))
))
