; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude field_remove_node-request.msg.html

(cl:defclass <field_remove_node-request> (roslisp-msg-protocol:ros-message)
  ((field
    :reader field
    :initarg :field
    :type cl:integer
    :initform 0)
   (position
    :reader position
    :initarg :position
    :type cl:integer
    :initform 0))
)

(cl:defclass field_remove_node-request (<field_remove_node-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <field_remove_node-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'field_remove_node-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<field_remove_node-request> is deprecated: use webots_ros-srv:field_remove_node-request instead.")))

(cl:ensure-generic-function 'field-val :lambda-list '(m))
(cl:defmethod field-val ((m <field_remove_node-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:field-val is deprecated.  Use webots_ros-srv:field instead.")
  (field m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <field_remove_node-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:position-val is deprecated.  Use webots_ros-srv:position instead.")
  (position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <field_remove_node-request>) ostream)
  "Serializes a message object of type '<field_remove_node-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'field)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'field)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'field)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'field)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'field)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'field)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'field)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'field)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'position)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <field_remove_node-request>) istream)
  "Deserializes a message object of type '<field_remove_node-request>"
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
      (cl:setf (cl:slot-value msg 'position) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<field_remove_node-request>)))
  "Returns string type for a service object of type '<field_remove_node-request>"
  "webots_ros/field_remove_nodeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'field_remove_node-request)))
  "Returns string type for a service object of type 'field_remove_node-request"
  "webots_ros/field_remove_nodeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<field_remove_node-request>)))
  "Returns md5sum for a message object of type '<field_remove_node-request>"
  "0a2fec1b08c5be36310a1f9e7c2e36de")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'field_remove_node-request)))
  "Returns md5sum for a message object of type 'field_remove_node-request"
  "0a2fec1b08c5be36310a1f9e7c2e36de")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<field_remove_node-request>)))
  "Returns full string definition for message of type '<field_remove_node-request>"
  (cl:format cl:nil "uint64 field~%int32 position~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'field_remove_node-request)))
  "Returns full string definition for message of type 'field_remove_node-request"
  (cl:format cl:nil "uint64 field~%int32 position~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <field_remove_node-request>))
  (cl:+ 0
     8
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <field_remove_node-request>))
  "Converts a ROS message object to a list"
  (cl:list 'field_remove_node-request
    (cl:cons ':field (field msg))
    (cl:cons ':position (position msg))
))
;//! \htmlinclude field_remove_node-response.msg.html

(cl:defclass <field_remove_node-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:integer
    :initform 0))
)

(cl:defclass field_remove_node-response (<field_remove_node-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <field_remove_node-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'field_remove_node-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<field_remove_node-response> is deprecated: use webots_ros-srv:field_remove_node-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <field_remove_node-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:success-val is deprecated.  Use webots_ros-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <field_remove_node-response>) ostream)
  "Serializes a message object of type '<field_remove_node-response>"
  (cl:let* ((signed (cl:slot-value msg 'success)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <field_remove_node-response>) istream)
  "Deserializes a message object of type '<field_remove_node-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'success) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<field_remove_node-response>)))
  "Returns string type for a service object of type '<field_remove_node-response>"
  "webots_ros/field_remove_nodeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'field_remove_node-response)))
  "Returns string type for a service object of type 'field_remove_node-response"
  "webots_ros/field_remove_nodeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<field_remove_node-response>)))
  "Returns md5sum for a message object of type '<field_remove_node-response>"
  "0a2fec1b08c5be36310a1f9e7c2e36de")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'field_remove_node-response)))
  "Returns md5sum for a message object of type 'field_remove_node-response"
  "0a2fec1b08c5be36310a1f9e7c2e36de")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<field_remove_node-response>)))
  "Returns full string definition for message of type '<field_remove_node-response>"
  (cl:format cl:nil "int32 success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'field_remove_node-response)))
  "Returns full string definition for message of type 'field_remove_node-response"
  (cl:format cl:nil "int32 success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <field_remove_node-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <field_remove_node-response>))
  "Converts a ROS message object to a list"
  (cl:list 'field_remove_node-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'field_remove_node)))
  'field_remove_node-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'field_remove_node)))
  'field_remove_node-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'field_remove_node)))
  "Returns string type for a service object of type '<field_remove_node>"
  "webots_ros/field_remove_node")