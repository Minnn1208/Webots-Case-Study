; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude field_import_node_from_string-request.msg.html

(cl:defclass <field_import_node_from_string-request> (roslisp-msg-protocol:ros-message)
  ((field
    :reader field
    :initarg :field
    :type cl:integer
    :initform 0)
   (position
    :reader position
    :initarg :position
    :type cl:integer
    :initform 0)
   (nodeString
    :reader nodeString
    :initarg :nodeString
    :type cl:string
    :initform ""))
)

(cl:defclass field_import_node_from_string-request (<field_import_node_from_string-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <field_import_node_from_string-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'field_import_node_from_string-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<field_import_node_from_string-request> is deprecated: use webots_ros-srv:field_import_node_from_string-request instead.")))

(cl:ensure-generic-function 'field-val :lambda-list '(m))
(cl:defmethod field-val ((m <field_import_node_from_string-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:field-val is deprecated.  Use webots_ros-srv:field instead.")
  (field m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <field_import_node_from_string-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:position-val is deprecated.  Use webots_ros-srv:position instead.")
  (position m))

(cl:ensure-generic-function 'nodeString-val :lambda-list '(m))
(cl:defmethod nodeString-val ((m <field_import_node_from_string-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:nodeString-val is deprecated.  Use webots_ros-srv:nodeString instead.")
  (nodeString m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <field_import_node_from_string-request>) ostream)
  "Serializes a message object of type '<field_import_node_from_string-request>"
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
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'nodeString))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'nodeString))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <field_import_node_from_string-request>) istream)
  "Deserializes a message object of type '<field_import_node_from_string-request>"
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
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'nodeString) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'nodeString) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<field_import_node_from_string-request>)))
  "Returns string type for a service object of type '<field_import_node_from_string-request>"
  "webots_ros/field_import_node_from_stringRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'field_import_node_from_string-request)))
  "Returns string type for a service object of type 'field_import_node_from_string-request"
  "webots_ros/field_import_node_from_stringRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<field_import_node_from_string-request>)))
  "Returns md5sum for a message object of type '<field_import_node_from_string-request>"
  "f47a09684279b85c2c8ae161048ce7d0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'field_import_node_from_string-request)))
  "Returns md5sum for a message object of type 'field_import_node_from_string-request"
  "f47a09684279b85c2c8ae161048ce7d0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<field_import_node_from_string-request>)))
  "Returns full string definition for message of type '<field_import_node_from_string-request>"
  (cl:format cl:nil "uint64 field~%int32 position~%string nodeString~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'field_import_node_from_string-request)))
  "Returns full string definition for message of type 'field_import_node_from_string-request"
  (cl:format cl:nil "uint64 field~%int32 position~%string nodeString~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <field_import_node_from_string-request>))
  (cl:+ 0
     8
     4
     4 (cl:length (cl:slot-value msg 'nodeString))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <field_import_node_from_string-request>))
  "Converts a ROS message object to a list"
  (cl:list 'field_import_node_from_string-request
    (cl:cons ':field (field msg))
    (cl:cons ':position (position msg))
    (cl:cons ':nodeString (nodeString msg))
))
;//! \htmlinclude field_import_node_from_string-response.msg.html

(cl:defclass <field_import_node_from_string-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:integer
    :initform 0))
)

(cl:defclass field_import_node_from_string-response (<field_import_node_from_string-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <field_import_node_from_string-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'field_import_node_from_string-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<field_import_node_from_string-response> is deprecated: use webots_ros-srv:field_import_node_from_string-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <field_import_node_from_string-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:success-val is deprecated.  Use webots_ros-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <field_import_node_from_string-response>) ostream)
  "Serializes a message object of type '<field_import_node_from_string-response>"
  (cl:let* ((signed (cl:slot-value msg 'success)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <field_import_node_from_string-response>) istream)
  "Deserializes a message object of type '<field_import_node_from_string-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'success) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<field_import_node_from_string-response>)))
  "Returns string type for a service object of type '<field_import_node_from_string-response>"
  "webots_ros/field_import_node_from_stringResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'field_import_node_from_string-response)))
  "Returns string type for a service object of type 'field_import_node_from_string-response"
  "webots_ros/field_import_node_from_stringResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<field_import_node_from_string-response>)))
  "Returns md5sum for a message object of type '<field_import_node_from_string-response>"
  "f47a09684279b85c2c8ae161048ce7d0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'field_import_node_from_string-response)))
  "Returns md5sum for a message object of type 'field_import_node_from_string-response"
  "f47a09684279b85c2c8ae161048ce7d0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<field_import_node_from_string-response>)))
  "Returns full string definition for message of type '<field_import_node_from_string-response>"
  (cl:format cl:nil "int32 success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'field_import_node_from_string-response)))
  "Returns full string definition for message of type 'field_import_node_from_string-response"
  (cl:format cl:nil "int32 success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <field_import_node_from_string-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <field_import_node_from_string-response>))
  "Converts a ROS message object to a list"
  (cl:list 'field_import_node_from_string-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'field_import_node_from_string)))
  'field_import_node_from_string-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'field_import_node_from_string)))
  'field_import_node_from_string-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'field_import_node_from_string)))
  "Returns string type for a service object of type '<field_import_node_from_string>"
  "webots_ros/field_import_node_from_string")