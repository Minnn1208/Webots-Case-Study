; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude node_get_position-request.msg.html

(cl:defclass <node_get_position-request> (roslisp-msg-protocol:ros-message)
  ((node
    :reader node
    :initarg :node
    :type cl:integer
    :initform 0))
)

(cl:defclass node_get_position-request (<node_get_position-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <node_get_position-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'node_get_position-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<node_get_position-request> is deprecated: use webots_ros-srv:node_get_position-request instead.")))

(cl:ensure-generic-function 'node-val :lambda-list '(m))
(cl:defmethod node-val ((m <node_get_position-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:node-val is deprecated.  Use webots_ros-srv:node instead.")
  (node m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <node_get_position-request>) ostream)
  "Serializes a message object of type '<node_get_position-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'node)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <node_get_position-request>) istream)
  "Deserializes a message object of type '<node_get_position-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'node)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<node_get_position-request>)))
  "Returns string type for a service object of type '<node_get_position-request>"
  "webots_ros/node_get_positionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node_get_position-request)))
  "Returns string type for a service object of type 'node_get_position-request"
  "webots_ros/node_get_positionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<node_get_position-request>)))
  "Returns md5sum for a message object of type '<node_get_position-request>"
  "a7fd7bab623637fe72e0ee179149fc41")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'node_get_position-request)))
  "Returns md5sum for a message object of type 'node_get_position-request"
  "a7fd7bab623637fe72e0ee179149fc41")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<node_get_position-request>)))
  "Returns full string definition for message of type '<node_get_position-request>"
  (cl:format cl:nil "uint64 node~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'node_get_position-request)))
  "Returns full string definition for message of type 'node_get_position-request"
  (cl:format cl:nil "uint64 node~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <node_get_position-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <node_get_position-request>))
  "Converts a ROS message object to a list"
  (cl:list 'node_get_position-request
    (cl:cons ':node (node msg))
))
;//! \htmlinclude node_get_position-response.msg.html

(cl:defclass <node_get_position-response> (roslisp-msg-protocol:ros-message)
  ((position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass node_get_position-response (<node_get_position-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <node_get_position-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'node_get_position-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<node_get_position-response> is deprecated: use webots_ros-srv:node_get_position-response instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <node_get_position-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:position-val is deprecated.  Use webots_ros-srv:position instead.")
  (position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <node_get_position-response>) ostream)
  "Serializes a message object of type '<node_get_position-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <node_get_position-response>) istream)
  "Deserializes a message object of type '<node_get_position-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<node_get_position-response>)))
  "Returns string type for a service object of type '<node_get_position-response>"
  "webots_ros/node_get_positionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node_get_position-response)))
  "Returns string type for a service object of type 'node_get_position-response"
  "webots_ros/node_get_positionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<node_get_position-response>)))
  "Returns md5sum for a message object of type '<node_get_position-response>"
  "a7fd7bab623637fe72e0ee179149fc41")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'node_get_position-response)))
  "Returns md5sum for a message object of type 'node_get_position-response"
  "a7fd7bab623637fe72e0ee179149fc41")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<node_get_position-response>)))
  "Returns full string definition for message of type '<node_get_position-response>"
  (cl:format cl:nil "geometry_msgs/Point position~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'node_get_position-response)))
  "Returns full string definition for message of type 'node_get_position-response"
  (cl:format cl:nil "geometry_msgs/Point position~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <node_get_position-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <node_get_position-response>))
  "Converts a ROS message object to a list"
  (cl:list 'node_get_position-response
    (cl:cons ':position (position msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'node_get_position)))
  'node_get_position-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'node_get_position)))
  'node_get_position-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node_get_position)))
  "Returns string type for a service object of type '<node_get_position>"
  "webots_ros/node_get_position")