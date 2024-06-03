; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude node_get_parent_node-request.msg.html

(cl:defclass <node_get_parent_node-request> (roslisp-msg-protocol:ros-message)
  ((node
    :reader node
    :initarg :node
    :type cl:integer
    :initform 0))
)

(cl:defclass node_get_parent_node-request (<node_get_parent_node-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <node_get_parent_node-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'node_get_parent_node-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<node_get_parent_node-request> is deprecated: use webots_ros-srv:node_get_parent_node-request instead.")))

(cl:ensure-generic-function 'node-val :lambda-list '(m))
(cl:defmethod node-val ((m <node_get_parent_node-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:node-val is deprecated.  Use webots_ros-srv:node instead.")
  (node m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <node_get_parent_node-request>) ostream)
  "Serializes a message object of type '<node_get_parent_node-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'node)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <node_get_parent_node-request>) istream)
  "Deserializes a message object of type '<node_get_parent_node-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<node_get_parent_node-request>)))
  "Returns string type for a service object of type '<node_get_parent_node-request>"
  "webots_ros/node_get_parent_nodeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node_get_parent_node-request)))
  "Returns string type for a service object of type 'node_get_parent_node-request"
  "webots_ros/node_get_parent_nodeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<node_get_parent_node-request>)))
  "Returns md5sum for a message object of type '<node_get_parent_node-request>"
  "818a5363f8ab50910f19b3cf3acc208b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'node_get_parent_node-request)))
  "Returns md5sum for a message object of type 'node_get_parent_node-request"
  "818a5363f8ab50910f19b3cf3acc208b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<node_get_parent_node-request>)))
  "Returns full string definition for message of type '<node_get_parent_node-request>"
  (cl:format cl:nil "uint64 node~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'node_get_parent_node-request)))
  "Returns full string definition for message of type 'node_get_parent_node-request"
  (cl:format cl:nil "uint64 node~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <node_get_parent_node-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <node_get_parent_node-request>))
  "Converts a ROS message object to a list"
  (cl:list 'node_get_parent_node-request
    (cl:cons ':node (node msg))
))
;//! \htmlinclude node_get_parent_node-response.msg.html

(cl:defclass <node_get_parent_node-response> (roslisp-msg-protocol:ros-message)
  ((node
    :reader node
    :initarg :node
    :type cl:integer
    :initform 0))
)

(cl:defclass node_get_parent_node-response (<node_get_parent_node-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <node_get_parent_node-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'node_get_parent_node-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<node_get_parent_node-response> is deprecated: use webots_ros-srv:node_get_parent_node-response instead.")))

(cl:ensure-generic-function 'node-val :lambda-list '(m))
(cl:defmethod node-val ((m <node_get_parent_node-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:node-val is deprecated.  Use webots_ros-srv:node instead.")
  (node m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <node_get_parent_node-response>) ostream)
  "Serializes a message object of type '<node_get_parent_node-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'node)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <node_get_parent_node-response>) istream)
  "Deserializes a message object of type '<node_get_parent_node-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<node_get_parent_node-response>)))
  "Returns string type for a service object of type '<node_get_parent_node-response>"
  "webots_ros/node_get_parent_nodeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node_get_parent_node-response)))
  "Returns string type for a service object of type 'node_get_parent_node-response"
  "webots_ros/node_get_parent_nodeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<node_get_parent_node-response>)))
  "Returns md5sum for a message object of type '<node_get_parent_node-response>"
  "818a5363f8ab50910f19b3cf3acc208b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'node_get_parent_node-response)))
  "Returns md5sum for a message object of type 'node_get_parent_node-response"
  "818a5363f8ab50910f19b3cf3acc208b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<node_get_parent_node-response>)))
  "Returns full string definition for message of type '<node_get_parent_node-response>"
  (cl:format cl:nil "uint64 node~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'node_get_parent_node-response)))
  "Returns full string definition for message of type 'node_get_parent_node-response"
  (cl:format cl:nil "uint64 node~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <node_get_parent_node-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <node_get_parent_node-response>))
  "Converts a ROS message object to a list"
  (cl:list 'node_get_parent_node-response
    (cl:cons ':node (node msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'node_get_parent_node)))
  'node_get_parent_node-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'node_get_parent_node)))
  'node_get_parent_node-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node_get_parent_node)))
  "Returns string type for a service object of type '<node_get_parent_node>"
  "webots_ros/node_get_parent_node")