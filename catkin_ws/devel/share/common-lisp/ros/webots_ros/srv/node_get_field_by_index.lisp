; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude node_get_field_by_index-request.msg.html

(cl:defclass <node_get_field_by_index-request> (roslisp-msg-protocol:ros-message)
  ((node
    :reader node
    :initarg :node
    :type cl:integer
    :initform 0)
   (index
    :reader index
    :initarg :index
    :type cl:integer
    :initform 0)
   (proto
    :reader proto
    :initarg :proto
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass node_get_field_by_index-request (<node_get_field_by_index-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <node_get_field_by_index-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'node_get_field_by_index-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<node_get_field_by_index-request> is deprecated: use webots_ros-srv:node_get_field_by_index-request instead.")))

(cl:ensure-generic-function 'node-val :lambda-list '(m))
(cl:defmethod node-val ((m <node_get_field_by_index-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:node-val is deprecated.  Use webots_ros-srv:node instead.")
  (node m))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <node_get_field_by_index-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:index-val is deprecated.  Use webots_ros-srv:index instead.")
  (index m))

(cl:ensure-generic-function 'proto-val :lambda-list '(m))
(cl:defmethod proto-val ((m <node_get_field_by_index-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:proto-val is deprecated.  Use webots_ros-srv:proto instead.")
  (proto m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <node_get_field_by_index-request>) ostream)
  "Serializes a message object of type '<node_get_field_by_index-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'proto) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <node_get_field_by_index-request>) istream)
  "Deserializes a message object of type '<node_get_field_by_index-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'index)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'proto) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<node_get_field_by_index-request>)))
  "Returns string type for a service object of type '<node_get_field_by_index-request>"
  "webots_ros/node_get_field_by_indexRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node_get_field_by_index-request)))
  "Returns string type for a service object of type 'node_get_field_by_index-request"
  "webots_ros/node_get_field_by_indexRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<node_get_field_by_index-request>)))
  "Returns md5sum for a message object of type '<node_get_field_by_index-request>"
  "24bbfc7fa321c886f58114d630e6f1fb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'node_get_field_by_index-request)))
  "Returns md5sum for a message object of type 'node_get_field_by_index-request"
  "24bbfc7fa321c886f58114d630e6f1fb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<node_get_field_by_index-request>)))
  "Returns full string definition for message of type '<node_get_field_by_index-request>"
  (cl:format cl:nil "uint64 node~%uint32 index~%bool proto~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'node_get_field_by_index-request)))
  "Returns full string definition for message of type 'node_get_field_by_index-request"
  (cl:format cl:nil "uint64 node~%uint32 index~%bool proto~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <node_get_field_by_index-request>))
  (cl:+ 0
     8
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <node_get_field_by_index-request>))
  "Converts a ROS message object to a list"
  (cl:list 'node_get_field_by_index-request
    (cl:cons ':node (node msg))
    (cl:cons ':index (index msg))
    (cl:cons ':proto (proto msg))
))
;//! \htmlinclude node_get_field_by_index-response.msg.html

(cl:defclass <node_get_field_by_index-response> (roslisp-msg-protocol:ros-message)
  ((field
    :reader field
    :initarg :field
    :type cl:integer
    :initform 0))
)

(cl:defclass node_get_field_by_index-response (<node_get_field_by_index-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <node_get_field_by_index-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'node_get_field_by_index-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<node_get_field_by_index-response> is deprecated: use webots_ros-srv:node_get_field_by_index-response instead.")))

(cl:ensure-generic-function 'field-val :lambda-list '(m))
(cl:defmethod field-val ((m <node_get_field_by_index-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:field-val is deprecated.  Use webots_ros-srv:field instead.")
  (field m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <node_get_field_by_index-response>) ostream)
  "Serializes a message object of type '<node_get_field_by_index-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'field)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'field)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'field)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'field)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'field)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'field)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'field)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'field)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <node_get_field_by_index-response>) istream)
  "Deserializes a message object of type '<node_get_field_by_index-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'field)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'field)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'field)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'field)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'field)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'field)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'field)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'field)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<node_get_field_by_index-response>)))
  "Returns string type for a service object of type '<node_get_field_by_index-response>"
  "webots_ros/node_get_field_by_indexResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node_get_field_by_index-response)))
  "Returns string type for a service object of type 'node_get_field_by_index-response"
  "webots_ros/node_get_field_by_indexResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<node_get_field_by_index-response>)))
  "Returns md5sum for a message object of type '<node_get_field_by_index-response>"
  "24bbfc7fa321c886f58114d630e6f1fb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'node_get_field_by_index-response)))
  "Returns md5sum for a message object of type 'node_get_field_by_index-response"
  "24bbfc7fa321c886f58114d630e6f1fb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<node_get_field_by_index-response>)))
  "Returns full string definition for message of type '<node_get_field_by_index-response>"
  (cl:format cl:nil "uint64 field~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'node_get_field_by_index-response)))
  "Returns full string definition for message of type 'node_get_field_by_index-response"
  (cl:format cl:nil "uint64 field~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <node_get_field_by_index-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <node_get_field_by_index-response>))
  "Converts a ROS message object to a list"
  (cl:list 'node_get_field_by_index-response
    (cl:cons ':field (field msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'node_get_field_by_index)))
  'node_get_field_by_index-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'node_get_field_by_index)))
  'node_get_field_by_index-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node_get_field_by_index)))
  "Returns string type for a service object of type '<node_get_field_by_index>"
  "webots_ros/node_get_field_by_index")