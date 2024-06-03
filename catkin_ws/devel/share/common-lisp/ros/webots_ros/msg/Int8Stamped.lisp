; Auto-generated. Do not edit!


(cl:in-package webots_ros-msg)


;//! \htmlinclude Int8Stamped.msg.html

(cl:defclass <Int8Stamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (data
    :reader data
    :initarg :data
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Int8Stamped (<Int8Stamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Int8Stamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Int8Stamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-msg:<Int8Stamped> is deprecated: use webots_ros-msg:Int8Stamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Int8Stamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-msg:header-val is deprecated.  Use webots_ros-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <Int8Stamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-msg:data-val is deprecated.  Use webots_ros-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Int8Stamped>) ostream)
  "Serializes a message object of type '<Int8Stamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'data)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Int8Stamped>) istream)
  "Deserializes a message object of type '<Int8Stamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Int8Stamped>)))
  "Returns string type for a message object of type '<Int8Stamped>"
  "webots_ros/Int8Stamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Int8Stamped)))
  "Returns string type for a message object of type 'Int8Stamped"
  "webots_ros/Int8Stamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Int8Stamped>)))
  "Returns md5sum for a message object of type '<Int8Stamped>"
  "09ed9a93cacbec0f13a0fad6e1719649")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Int8Stamped)))
  "Returns md5sum for a message object of type 'Int8Stamped"
  "09ed9a93cacbec0f13a0fad6e1719649")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Int8Stamped>)))
  "Returns full string definition for message of type '<Int8Stamped>"
  (cl:format cl:nil "Header header~%int8 data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Int8Stamped)))
  "Returns full string definition for message of type 'Int8Stamped"
  (cl:format cl:nil "Header header~%int8 data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Int8Stamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Int8Stamped>))
  "Converts a ROS message object to a list"
  (cl:list 'Int8Stamped
    (cl:cons ':header (header msg))
    (cl:cons ':data (data msg))
))
