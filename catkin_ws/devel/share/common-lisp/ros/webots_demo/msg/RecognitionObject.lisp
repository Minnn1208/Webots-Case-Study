; Auto-generated. Do not edit!


(cl:in-package webots_demo-msg)


;//! \htmlinclude RecognitionObject.msg.html

(cl:defclass <RecognitionObject> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (orientation
    :reader orientation
    :initarg :orientation
    :type geometry_msgs-msg:Quaternion
    :initform (cl:make-instance 'geometry_msgs-msg:Quaternion))
   (position_on_image
    :reader position_on_image
    :initarg :position_on_image
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (size_on_image
    :reader size_on_image
    :initarg :size_on_image
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (number_of_colors
    :reader number_of_colors
    :initarg :number_of_colors
    :type cl:integer
    :initform 0)
   (colors
    :reader colors
    :initarg :colors
    :type (cl:vector geometry_msgs-msg:Vector3)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Vector3 :initial-element (cl:make-instance 'geometry_msgs-msg:Vector3)))
   (model
    :reader model
    :initarg :model
    :type cl:string
    :initform ""))
)

(cl:defclass RecognitionObject (<RecognitionObject>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RecognitionObject>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RecognitionObject)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_demo-msg:<RecognitionObject> is deprecated: use webots_demo-msg:RecognitionObject instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RecognitionObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_demo-msg:header-val is deprecated.  Use webots_demo-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <RecognitionObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_demo-msg:position-val is deprecated.  Use webots_demo-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'orientation-val :lambda-list '(m))
(cl:defmethod orientation-val ((m <RecognitionObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_demo-msg:orientation-val is deprecated.  Use webots_demo-msg:orientation instead.")
  (orientation m))

(cl:ensure-generic-function 'position_on_image-val :lambda-list '(m))
(cl:defmethod position_on_image-val ((m <RecognitionObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_demo-msg:position_on_image-val is deprecated.  Use webots_demo-msg:position_on_image instead.")
  (position_on_image m))

(cl:ensure-generic-function 'size_on_image-val :lambda-list '(m))
(cl:defmethod size_on_image-val ((m <RecognitionObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_demo-msg:size_on_image-val is deprecated.  Use webots_demo-msg:size_on_image instead.")
  (size_on_image m))

(cl:ensure-generic-function 'number_of_colors-val :lambda-list '(m))
(cl:defmethod number_of_colors-val ((m <RecognitionObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_demo-msg:number_of_colors-val is deprecated.  Use webots_demo-msg:number_of_colors instead.")
  (number_of_colors m))

(cl:ensure-generic-function 'colors-val :lambda-list '(m))
(cl:defmethod colors-val ((m <RecognitionObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_demo-msg:colors-val is deprecated.  Use webots_demo-msg:colors instead.")
  (colors m))

(cl:ensure-generic-function 'model-val :lambda-list '(m))
(cl:defmethod model-val ((m <RecognitionObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_demo-msg:model-val is deprecated.  Use webots_demo-msg:model instead.")
  (model m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RecognitionObject>) ostream)
  "Serializes a message object of type '<RecognitionObject>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'orientation) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position_on_image) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'size_on_image) ostream)
  (cl:let* ((signed (cl:slot-value msg 'number_of_colors)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'colors))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'colors))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'model))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'model))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RecognitionObject>) istream)
  "Deserializes a message object of type '<RecognitionObject>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'orientation) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position_on_image) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'size_on_image) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'number_of_colors) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'colors) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'colors)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Vector3))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'model) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'model) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RecognitionObject>)))
  "Returns string type for a message object of type '<RecognitionObject>"
  "webots_demo/RecognitionObject")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RecognitionObject)))
  "Returns string type for a message object of type 'RecognitionObject"
  "webots_demo/RecognitionObject")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RecognitionObject>)))
  "Returns md5sum for a message object of type '<RecognitionObject>"
  "642183f1eab2edbfa9c2ae808be707c2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RecognitionObject)))
  "Returns md5sum for a message object of type 'RecognitionObject"
  "642183f1eab2edbfa9c2ae808be707c2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RecognitionObject>)))
  "Returns full string definition for message of type '<RecognitionObject>"
  (cl:format cl:nil "Header header~%geometry_msgs/Vector3 position~%geometry_msgs/Quaternion orientation~%geometry_msgs/Vector3 position_on_image~%geometry_msgs/Vector3 size_on_image~%int32 number_of_colors~%geometry_msgs/Vector3[] colors~%string model~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RecognitionObject)))
  "Returns full string definition for message of type 'RecognitionObject"
  (cl:format cl:nil "Header header~%geometry_msgs/Vector3 position~%geometry_msgs/Quaternion orientation~%geometry_msgs/Vector3 position_on_image~%geometry_msgs/Vector3 size_on_image~%int32 number_of_colors~%geometry_msgs/Vector3[] colors~%string model~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RecognitionObject>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'orientation))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position_on_image))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'size_on_image))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'colors) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:length (cl:slot-value msg 'model))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RecognitionObject>))
  "Converts a ROS message object to a list"
  (cl:list 'RecognitionObject
    (cl:cons ':header (header msg))
    (cl:cons ':position (position msg))
    (cl:cons ':orientation (orientation msg))
    (cl:cons ':position_on_image (position_on_image msg))
    (cl:cons ':size_on_image (size_on_image msg))
    (cl:cons ':number_of_colors (number_of_colors msg))
    (cl:cons ':colors (colors msg))
    (cl:cons ':model (model msg))
))
