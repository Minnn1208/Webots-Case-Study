; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude node_get_type-request.msg.html

(cl:defclass <node_get_type-request> (roslisp-msg-protocol:ros-message)
  ((node
    :reader node
    :initarg :node
    :type cl:integer
    :initform 0))
)

(cl:defclass node_get_type-request (<node_get_type-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <node_get_type-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'node_get_type-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<node_get_type-request> is deprecated: use webots_ros-srv:node_get_type-request instead.")))

(cl:ensure-generic-function 'node-val :lambda-list '(m))
(cl:defmethod node-val ((m <node_get_type-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:node-val is deprecated.  Use webots_ros-srv:node instead.")
  (node m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <node_get_type-request>) ostream)
  "Serializes a message object of type '<node_get_type-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'node)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <node_get_type-request>) istream)
  "Deserializes a message object of type '<node_get_type-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<node_get_type-request>)))
  "Returns string type for a service object of type '<node_get_type-request>"
  "webots_ros/node_get_typeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node_get_type-request)))
  "Returns string type for a service object of type 'node_get_type-request"
  "webots_ros/node_get_typeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<node_get_type-request>)))
  "Returns md5sum for a message object of type '<node_get_type-request>"
  "48b94f6c29e10052dd1b2a32f0d1feea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'node_get_type-request)))
  "Returns md5sum for a message object of type 'node_get_type-request"
  "48b94f6c29e10052dd1b2a32f0d1feea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<node_get_type-request>)))
  "Returns full string definition for message of type '<node_get_type-request>"
  (cl:format cl:nil "uint64 node~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'node_get_type-request)))
  "Returns full string definition for message of type 'node_get_type-request"
  (cl:format cl:nil "uint64 node~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <node_get_type-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <node_get_type-request>))
  "Converts a ROS message object to a list"
  (cl:list 'node_get_type-request
    (cl:cons ':node (node msg))
))
;//! \htmlinclude node_get_type-response.msg.html

(cl:defclass <node_get_type-response> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:integer
    :initform 0))
)

(cl:defclass node_get_type-response (<node_get_type-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <node_get_type-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'node_get_type-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<node_get_type-response> is deprecated: use webots_ros-srv:node_get_type-response instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <node_get_type-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:type-val is deprecated.  Use webots_ros-srv:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <node_get_type-response>) ostream)
  "Serializes a message object of type '<node_get_type-response>"
  (cl:let* ((signed (cl:slot-value msg 'type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <node_get_type-response>) istream)
  "Deserializes a message object of type '<node_get_type-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<node_get_type-response>)))
  "Returns string type for a service object of type '<node_get_type-response>"
  "webots_ros/node_get_typeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node_get_type-response)))
  "Returns string type for a service object of type 'node_get_type-response"
  "webots_ros/node_get_typeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<node_get_type-response>)))
  "Returns md5sum for a message object of type '<node_get_type-response>"
  "48b94f6c29e10052dd1b2a32f0d1feea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'node_get_type-response)))
  "Returns md5sum for a message object of type 'node_get_type-response"
  "48b94f6c29e10052dd1b2a32f0d1feea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<node_get_type-response>)))
  "Returns full string definition for message of type '<node_get_type-response>"
  (cl:format cl:nil "int32 type~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'node_get_type-response)))
  "Returns full string definition for message of type 'node_get_type-response"
  (cl:format cl:nil "int32 type~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <node_get_type-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <node_get_type-response>))
  "Converts a ROS message object to a list"
  (cl:list 'node_get_type-response
    (cl:cons ':type (type msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'node_get_type)))
  'node_get_type-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'node_get_type)))
  'node_get_type-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node_get_type)))
  "Returns string type for a service object of type '<node_get_type>"
  "webots_ros/node_get_type")