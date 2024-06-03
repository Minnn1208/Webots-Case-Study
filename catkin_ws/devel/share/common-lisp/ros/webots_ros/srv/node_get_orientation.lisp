; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude node_get_orientation-request.msg.html

(cl:defclass <node_get_orientation-request> (roslisp-msg-protocol:ros-message)
  ((node
    :reader node
    :initarg :node
    :type cl:integer
    :initform 0))
)

(cl:defclass node_get_orientation-request (<node_get_orientation-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <node_get_orientation-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'node_get_orientation-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<node_get_orientation-request> is deprecated: use webots_ros-srv:node_get_orientation-request instead.")))

(cl:ensure-generic-function 'node-val :lambda-list '(m))
(cl:defmethod node-val ((m <node_get_orientation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:node-val is deprecated.  Use webots_ros-srv:node instead.")
  (node m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <node_get_orientation-request>) ostream)
  "Serializes a message object of type '<node_get_orientation-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'node)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <node_get_orientation-request>) istream)
  "Deserializes a message object of type '<node_get_orientation-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<node_get_orientation-request>)))
  "Returns string type for a service object of type '<node_get_orientation-request>"
  "webots_ros/node_get_orientationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node_get_orientation-request)))
  "Returns string type for a service object of type 'node_get_orientation-request"
  "webots_ros/node_get_orientationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<node_get_orientation-request>)))
  "Returns md5sum for a message object of type '<node_get_orientation-request>"
  "0ee7131d7182bae6debc79ddfcc90ddd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'node_get_orientation-request)))
  "Returns md5sum for a message object of type 'node_get_orientation-request"
  "0ee7131d7182bae6debc79ddfcc90ddd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<node_get_orientation-request>)))
  "Returns full string definition for message of type '<node_get_orientation-request>"
  (cl:format cl:nil "uint64 node~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'node_get_orientation-request)))
  "Returns full string definition for message of type 'node_get_orientation-request"
  (cl:format cl:nil "uint64 node~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <node_get_orientation-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <node_get_orientation-request>))
  "Converts a ROS message object to a list"
  (cl:list 'node_get_orientation-request
    (cl:cons ':node (node msg))
))
;//! \htmlinclude node_get_orientation-response.msg.html

(cl:defclass <node_get_orientation-response> (roslisp-msg-protocol:ros-message)
  ((orientation
    :reader orientation
    :initarg :orientation
    :type geometry_msgs-msg:Quaternion
    :initform (cl:make-instance 'geometry_msgs-msg:Quaternion)))
)

(cl:defclass node_get_orientation-response (<node_get_orientation-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <node_get_orientation-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'node_get_orientation-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<node_get_orientation-response> is deprecated: use webots_ros-srv:node_get_orientation-response instead.")))

(cl:ensure-generic-function 'orientation-val :lambda-list '(m))
(cl:defmethod orientation-val ((m <node_get_orientation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:orientation-val is deprecated.  Use webots_ros-srv:orientation instead.")
  (orientation m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <node_get_orientation-response>) ostream)
  "Serializes a message object of type '<node_get_orientation-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'orientation) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <node_get_orientation-response>) istream)
  "Deserializes a message object of type '<node_get_orientation-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'orientation) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<node_get_orientation-response>)))
  "Returns string type for a service object of type '<node_get_orientation-response>"
  "webots_ros/node_get_orientationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node_get_orientation-response)))
  "Returns string type for a service object of type 'node_get_orientation-response"
  "webots_ros/node_get_orientationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<node_get_orientation-response>)))
  "Returns md5sum for a message object of type '<node_get_orientation-response>"
  "0ee7131d7182bae6debc79ddfcc90ddd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'node_get_orientation-response)))
  "Returns md5sum for a message object of type 'node_get_orientation-response"
  "0ee7131d7182bae6debc79ddfcc90ddd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<node_get_orientation-response>)))
  "Returns full string definition for message of type '<node_get_orientation-response>"
  (cl:format cl:nil "geometry_msgs/Quaternion orientation~%~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'node_get_orientation-response)))
  "Returns full string definition for message of type 'node_get_orientation-response"
  (cl:format cl:nil "geometry_msgs/Quaternion orientation~%~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <node_get_orientation-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'orientation))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <node_get_orientation-response>))
  "Converts a ROS message object to a list"
  (cl:list 'node_get_orientation-response
    (cl:cons ':orientation (orientation msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'node_get_orientation)))
  'node_get_orientation-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'node_get_orientation)))
  'node_get_orientation-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node_get_orientation)))
  "Returns string type for a service object of type '<node_get_orientation>"
  "webots_ros/node_get_orientation")