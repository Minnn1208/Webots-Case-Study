; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude field_get_node-request.msg.html

(cl:defclass <field_get_node-request> (roslisp-msg-protocol:ros-message)
  ((field
    :reader field
    :initarg :field
    :type cl:integer
    :initform 0)
   (index
    :reader index
    :initarg :index
    :type cl:integer
    :initform 0))
)

(cl:defclass field_get_node-request (<field_get_node-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <field_get_node-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'field_get_node-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<field_get_node-request> is deprecated: use webots_ros-srv:field_get_node-request instead.")))

(cl:ensure-generic-function 'field-val :lambda-list '(m))
(cl:defmethod field-val ((m <field_get_node-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:field-val is deprecated.  Use webots_ros-srv:field instead.")
  (field m))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <field_get_node-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:index-val is deprecated.  Use webots_ros-srv:index instead.")
  (index m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <field_get_node-request>) ostream)
  "Serializes a message object of type '<field_get_node-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'field)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'field)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'field)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'field)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'field)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'field)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'field)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'field)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <field_get_node-request>) istream)
  "Deserializes a message object of type '<field_get_node-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'field)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'field)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'field)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'field)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'field)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'field)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'field)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'field)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'index) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<field_get_node-request>)))
  "Returns string type for a service object of type '<field_get_node-request>"
  "webots_ros/field_get_nodeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'field_get_node-request)))
  "Returns string type for a service object of type 'field_get_node-request"
  "webots_ros/field_get_nodeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<field_get_node-request>)))
  "Returns md5sum for a message object of type '<field_get_node-request>"
  "c17cafc0118b2cdcc4a632463f436156")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'field_get_node-request)))
  "Returns md5sum for a message object of type 'field_get_node-request"
  "c17cafc0118b2cdcc4a632463f436156")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<field_get_node-request>)))
  "Returns full string definition for message of type '<field_get_node-request>"
  (cl:format cl:nil "uint64 field~%int32 index~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'field_get_node-request)))
  "Returns full string definition for message of type 'field_get_node-request"
  (cl:format cl:nil "uint64 field~%int32 index~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <field_get_node-request>))
  (cl:+ 0
     8
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <field_get_node-request>))
  "Converts a ROS message object to a list"
  (cl:list 'field_get_node-request
    (cl:cons ':field (field msg))
    (cl:cons ':index (index msg))
))
;//! \htmlinclude field_get_node-response.msg.html

(cl:defclass <field_get_node-response> (roslisp-msg-protocol:ros-message)
  ((node
    :reader node
    :initarg :node
    :type cl:integer
    :initform 0))
)

(cl:defclass field_get_node-response (<field_get_node-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <field_get_node-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'field_get_node-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<field_get_node-response> is deprecated: use webots_ros-srv:field_get_node-response instead.")))

(cl:ensure-generic-function 'node-val :lambda-list '(m))
(cl:defmethod node-val ((m <field_get_node-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:node-val is deprecated.  Use webots_ros-srv:node instead.")
  (node m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <field_get_node-response>) ostream)
  "Serializes a message object of type '<field_get_node-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'node)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <field_get_node-response>) istream)
  "Deserializes a message object of type '<field_get_node-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<field_get_node-response>)))
  "Returns string type for a service object of type '<field_get_node-response>"
  "webots_ros/field_get_nodeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'field_get_node-response)))
  "Returns string type for a service object of type 'field_get_node-response"
  "webots_ros/field_get_nodeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<field_get_node-response>)))
  "Returns md5sum for a message object of type '<field_get_node-response>"
  "c17cafc0118b2cdcc4a632463f436156")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'field_get_node-response)))
  "Returns md5sum for a message object of type 'field_get_node-response"
  "c17cafc0118b2cdcc4a632463f436156")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<field_get_node-response>)))
  "Returns full string definition for message of type '<field_get_node-response>"
  (cl:format cl:nil "uint64 node~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'field_get_node-response)))
  "Returns full string definition for message of type 'field_get_node-response"
  (cl:format cl:nil "uint64 node~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <field_get_node-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <field_get_node-response>))
  "Converts a ROS message object to a list"
  (cl:list 'field_get_node-response
    (cl:cons ':node (node msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'field_get_node)))
  'field_get_node-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'field_get_node)))
  'field_get_node-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'field_get_node)))
  "Returns string type for a service object of type '<field_get_node>"
  "webots_ros/field_get_node")