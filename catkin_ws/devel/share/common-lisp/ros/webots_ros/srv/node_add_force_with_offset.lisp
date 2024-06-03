; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude node_add_force_with_offset-request.msg.html

(cl:defclass <node_add_force_with_offset-request> (roslisp-msg-protocol:ros-message)
  ((node
    :reader node
    :initarg :node
    :type cl:integer
    :initform 0)
   (force
    :reader force
    :initarg :force
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (offset
    :reader offset
    :initarg :offset
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (relative
    :reader relative
    :initarg :relative
    :type cl:fixnum
    :initform 0))
)

(cl:defclass node_add_force_with_offset-request (<node_add_force_with_offset-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <node_add_force_with_offset-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'node_add_force_with_offset-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<node_add_force_with_offset-request> is deprecated: use webots_ros-srv:node_add_force_with_offset-request instead.")))

(cl:ensure-generic-function 'node-val :lambda-list '(m))
(cl:defmethod node-val ((m <node_add_force_with_offset-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:node-val is deprecated.  Use webots_ros-srv:node instead.")
  (node m))

(cl:ensure-generic-function 'force-val :lambda-list '(m))
(cl:defmethod force-val ((m <node_add_force_with_offset-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:force-val is deprecated.  Use webots_ros-srv:force instead.")
  (force m))

(cl:ensure-generic-function 'offset-val :lambda-list '(m))
(cl:defmethod offset-val ((m <node_add_force_with_offset-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:offset-val is deprecated.  Use webots_ros-srv:offset instead.")
  (offset m))

(cl:ensure-generic-function 'relative-val :lambda-list '(m))
(cl:defmethod relative-val ((m <node_add_force_with_offset-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:relative-val is deprecated.  Use webots_ros-srv:relative instead.")
  (relative m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <node_add_force_with_offset-request>) ostream)
  "Serializes a message object of type '<node_add_force_with_offset-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'node)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'force) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'offset) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'relative)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <node_add_force_with_offset-request>) istream)
  "Deserializes a message object of type '<node_add_force_with_offset-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'node)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'force) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'offset) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'relative)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<node_add_force_with_offset-request>)))
  "Returns string type for a service object of type '<node_add_force_with_offset-request>"
  "webots_ros/node_add_force_with_offsetRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node_add_force_with_offset-request)))
  "Returns string type for a service object of type 'node_add_force_with_offset-request"
  "webots_ros/node_add_force_with_offsetRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<node_add_force_with_offset-request>)))
  "Returns md5sum for a message object of type '<node_add_force_with_offset-request>"
  "7bbdb8bfcc982af458fd685526128ebd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'node_add_force_with_offset-request)))
  "Returns md5sum for a message object of type 'node_add_force_with_offset-request"
  "7bbdb8bfcc982af458fd685526128ebd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<node_add_force_with_offset-request>)))
  "Returns full string definition for message of type '<node_add_force_with_offset-request>"
  (cl:format cl:nil "uint64 node~%geometry_msgs/Vector3 force~%geometry_msgs/Vector3 offset~%uint8 relative~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'node_add_force_with_offset-request)))
  "Returns full string definition for message of type 'node_add_force_with_offset-request"
  (cl:format cl:nil "uint64 node~%geometry_msgs/Vector3 force~%geometry_msgs/Vector3 offset~%uint8 relative~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <node_add_force_with_offset-request>))
  (cl:+ 0
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'force))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'offset))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <node_add_force_with_offset-request>))
  "Converts a ROS message object to a list"
  (cl:list 'node_add_force_with_offset-request
    (cl:cons ':node (node msg))
    (cl:cons ':force (force msg))
    (cl:cons ':offset (offset msg))
    (cl:cons ':relative (relative msg))
))
;//! \htmlinclude node_add_force_with_offset-response.msg.html

(cl:defclass <node_add_force_with_offset-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:integer
    :initform 0))
)

(cl:defclass node_add_force_with_offset-response (<node_add_force_with_offset-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <node_add_force_with_offset-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'node_add_force_with_offset-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<node_add_force_with_offset-response> is deprecated: use webots_ros-srv:node_add_force_with_offset-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <node_add_force_with_offset-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:success-val is deprecated.  Use webots_ros-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <node_add_force_with_offset-response>) ostream)
  "Serializes a message object of type '<node_add_force_with_offset-response>"
  (cl:let* ((signed (cl:slot-value msg 'success)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <node_add_force_with_offset-response>) istream)
  "Deserializes a message object of type '<node_add_force_with_offset-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'success) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<node_add_force_with_offset-response>)))
  "Returns string type for a service object of type '<node_add_force_with_offset-response>"
  "webots_ros/node_add_force_with_offsetResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node_add_force_with_offset-response)))
  "Returns string type for a service object of type 'node_add_force_with_offset-response"
  "webots_ros/node_add_force_with_offsetResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<node_add_force_with_offset-response>)))
  "Returns md5sum for a message object of type '<node_add_force_with_offset-response>"
  "7bbdb8bfcc982af458fd685526128ebd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'node_add_force_with_offset-response)))
  "Returns md5sum for a message object of type 'node_add_force_with_offset-response"
  "7bbdb8bfcc982af458fd685526128ebd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<node_add_force_with_offset-response>)))
  "Returns full string definition for message of type '<node_add_force_with_offset-response>"
  (cl:format cl:nil "int32 success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'node_add_force_with_offset-response)))
  "Returns full string definition for message of type 'node_add_force_with_offset-response"
  (cl:format cl:nil "int32 success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <node_add_force_with_offset-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <node_add_force_with_offset-response>))
  "Converts a ROS message object to a list"
  (cl:list 'node_add_force_with_offset-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'node_add_force_with_offset)))
  'node_add_force_with_offset-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'node_add_force_with_offset)))
  'node_add_force_with_offset-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node_add_force_with_offset)))
  "Returns string type for a service object of type '<node_add_force_with_offset>"
  "webots_ros/node_add_force_with_offset")