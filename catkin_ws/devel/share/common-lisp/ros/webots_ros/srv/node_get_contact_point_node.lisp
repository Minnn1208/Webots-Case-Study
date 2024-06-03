; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude node_get_contact_point_node-request.msg.html

(cl:defclass <node_get_contact_point_node-request> (roslisp-msg-protocol:ros-message)
  ((node
    :reader node
    :initarg :node
    :type cl:integer
    :initform 0)
   (index
    :reader index
    :initarg :index
    :type cl:integer
    :initform 0))
)

(cl:defclass node_get_contact_point_node-request (<node_get_contact_point_node-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <node_get_contact_point_node-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'node_get_contact_point_node-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<node_get_contact_point_node-request> is deprecated: use webots_ros-srv:node_get_contact_point_node-request instead.")))

(cl:ensure-generic-function 'node-val :lambda-list '(m))
(cl:defmethod node-val ((m <node_get_contact_point_node-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:node-val is deprecated.  Use webots_ros-srv:node instead.")
  (node m))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <node_get_contact_point_node-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:index-val is deprecated.  Use webots_ros-srv:index instead.")
  (index m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <node_get_contact_point_node-request>) ostream)
  "Serializes a message object of type '<node_get_contact_point_node-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'node)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <node_get_contact_point_node-request>) istream)
  "Deserializes a message object of type '<node_get_contact_point_node-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'index) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<node_get_contact_point_node-request>)))
  "Returns string type for a service object of type '<node_get_contact_point_node-request>"
  "webots_ros/node_get_contact_point_nodeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node_get_contact_point_node-request)))
  "Returns string type for a service object of type 'node_get_contact_point_node-request"
  "webots_ros/node_get_contact_point_nodeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<node_get_contact_point_node-request>)))
  "Returns md5sum for a message object of type '<node_get_contact_point_node-request>"
  "6460636deb66f2004472577c5f1a214e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'node_get_contact_point_node-request)))
  "Returns md5sum for a message object of type 'node_get_contact_point_node-request"
  "6460636deb66f2004472577c5f1a214e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<node_get_contact_point_node-request>)))
  "Returns full string definition for message of type '<node_get_contact_point_node-request>"
  (cl:format cl:nil "uint64 node~%int32 index~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'node_get_contact_point_node-request)))
  "Returns full string definition for message of type 'node_get_contact_point_node-request"
  (cl:format cl:nil "uint64 node~%int32 index~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <node_get_contact_point_node-request>))
  (cl:+ 0
     8
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <node_get_contact_point_node-request>))
  "Converts a ROS message object to a list"
  (cl:list 'node_get_contact_point_node-request
    (cl:cons ':node (node msg))
    (cl:cons ':index (index msg))
))
;//! \htmlinclude node_get_contact_point_node-response.msg.html

(cl:defclass <node_get_contact_point_node-response> (roslisp-msg-protocol:ros-message)
  ((node
    :reader node
    :initarg :node
    :type cl:integer
    :initform 0))
)

(cl:defclass node_get_contact_point_node-response (<node_get_contact_point_node-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <node_get_contact_point_node-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'node_get_contact_point_node-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<node_get_contact_point_node-response> is deprecated: use webots_ros-srv:node_get_contact_point_node-response instead.")))

(cl:ensure-generic-function 'node-val :lambda-list '(m))
(cl:defmethod node-val ((m <node_get_contact_point_node-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:node-val is deprecated.  Use webots_ros-srv:node instead.")
  (node m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <node_get_contact_point_node-response>) ostream)
  "Serializes a message object of type '<node_get_contact_point_node-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'node)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <node_get_contact_point_node-response>) istream)
  "Deserializes a message object of type '<node_get_contact_point_node-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<node_get_contact_point_node-response>)))
  "Returns string type for a service object of type '<node_get_contact_point_node-response>"
  "webots_ros/node_get_contact_point_nodeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node_get_contact_point_node-response)))
  "Returns string type for a service object of type 'node_get_contact_point_node-response"
  "webots_ros/node_get_contact_point_nodeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<node_get_contact_point_node-response>)))
  "Returns md5sum for a message object of type '<node_get_contact_point_node-response>"
  "6460636deb66f2004472577c5f1a214e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'node_get_contact_point_node-response)))
  "Returns md5sum for a message object of type 'node_get_contact_point_node-response"
  "6460636deb66f2004472577c5f1a214e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<node_get_contact_point_node-response>)))
  "Returns full string definition for message of type '<node_get_contact_point_node-response>"
  (cl:format cl:nil "uint64 node~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'node_get_contact_point_node-response)))
  "Returns full string definition for message of type 'node_get_contact_point_node-response"
  (cl:format cl:nil "uint64 node~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <node_get_contact_point_node-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <node_get_contact_point_node-response>))
  "Converts a ROS message object to a list"
  (cl:list 'node_get_contact_point_node-response
    (cl:cons ':node (node msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'node_get_contact_point_node)))
  'node_get_contact_point_node-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'node_get_contact_point_node)))
  'node_get_contact_point_node-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node_get_contact_point_node)))
  "Returns string type for a service object of type '<node_get_contact_point_node>"
  "webots_ros/node_get_contact_point_node")