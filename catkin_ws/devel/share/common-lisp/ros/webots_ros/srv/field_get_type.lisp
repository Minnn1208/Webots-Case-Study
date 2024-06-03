; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude field_get_type-request.msg.html

(cl:defclass <field_get_type-request> (roslisp-msg-protocol:ros-message)
  ((field
    :reader field
    :initarg :field
    :type cl:integer
    :initform 0))
)

(cl:defclass field_get_type-request (<field_get_type-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <field_get_type-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'field_get_type-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<field_get_type-request> is deprecated: use webots_ros-srv:field_get_type-request instead.")))

(cl:ensure-generic-function 'field-val :lambda-list '(m))
(cl:defmethod field-val ((m <field_get_type-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:field-val is deprecated.  Use webots_ros-srv:field instead.")
  (field m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <field_get_type-request>) ostream)
  "Serializes a message object of type '<field_get_type-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'field)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'field)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'field)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'field)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'field)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'field)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'field)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'field)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <field_get_type-request>) istream)
  "Deserializes a message object of type '<field_get_type-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<field_get_type-request>)))
  "Returns string type for a service object of type '<field_get_type-request>"
  "webots_ros/field_get_typeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'field_get_type-request)))
  "Returns string type for a service object of type 'field_get_type-request"
  "webots_ros/field_get_typeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<field_get_type-request>)))
  "Returns md5sum for a message object of type '<field_get_type-request>"
  "0455d6401eca2603b986dbfe1a1e17b4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'field_get_type-request)))
  "Returns md5sum for a message object of type 'field_get_type-request"
  "0455d6401eca2603b986dbfe1a1e17b4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<field_get_type-request>)))
  "Returns full string definition for message of type '<field_get_type-request>"
  (cl:format cl:nil "uint64 field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'field_get_type-request)))
  "Returns full string definition for message of type 'field_get_type-request"
  (cl:format cl:nil "uint64 field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <field_get_type-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <field_get_type-request>))
  "Converts a ROS message object to a list"
  (cl:list 'field_get_type-request
    (cl:cons ':field (field msg))
))
;//! \htmlinclude field_get_type-response.msg.html

(cl:defclass <field_get_type-response> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:integer
    :initform 0))
)

(cl:defclass field_get_type-response (<field_get_type-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <field_get_type-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'field_get_type-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<field_get_type-response> is deprecated: use webots_ros-srv:field_get_type-response instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <field_get_type-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:type-val is deprecated.  Use webots_ros-srv:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <field_get_type-response>) ostream)
  "Serializes a message object of type '<field_get_type-response>"
  (cl:let* ((signed (cl:slot-value msg 'type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <field_get_type-response>) istream)
  "Deserializes a message object of type '<field_get_type-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<field_get_type-response>)))
  "Returns string type for a service object of type '<field_get_type-response>"
  "webots_ros/field_get_typeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'field_get_type-response)))
  "Returns string type for a service object of type 'field_get_type-response"
  "webots_ros/field_get_typeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<field_get_type-response>)))
  "Returns md5sum for a message object of type '<field_get_type-response>"
  "0455d6401eca2603b986dbfe1a1e17b4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'field_get_type-response)))
  "Returns md5sum for a message object of type 'field_get_type-response"
  "0455d6401eca2603b986dbfe1a1e17b4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<field_get_type-response>)))
  "Returns full string definition for message of type '<field_get_type-response>"
  (cl:format cl:nil "int32 type~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'field_get_type-response)))
  "Returns full string definition for message of type 'field_get_type-response"
  (cl:format cl:nil "int32 type~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <field_get_type-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <field_get_type-response>))
  "Converts a ROS message object to a list"
  (cl:list 'field_get_type-response
    (cl:cons ':type (type msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'field_get_type)))
  'field_get_type-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'field_get_type)))
  'field_get_type-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'field_get_type)))
  "Returns string type for a service object of type '<field_get_type>"
  "webots_ros/field_get_type")