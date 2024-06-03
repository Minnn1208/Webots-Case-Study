; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude node_get_field-request.msg.html

(cl:defclass <node_get_field-request> (roslisp-msg-protocol:ros-message)
  ((node
    :reader node
    :initarg :node
    :type cl:integer
    :initform 0)
   (fieldName
    :reader fieldName
    :initarg :fieldName
    :type cl:string
    :initform "")
   (proto
    :reader proto
    :initarg :proto
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass node_get_field-request (<node_get_field-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <node_get_field-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'node_get_field-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<node_get_field-request> is deprecated: use webots_ros-srv:node_get_field-request instead.")))

(cl:ensure-generic-function 'node-val :lambda-list '(m))
(cl:defmethod node-val ((m <node_get_field-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:node-val is deprecated.  Use webots_ros-srv:node instead.")
  (node m))

(cl:ensure-generic-function 'fieldName-val :lambda-list '(m))
(cl:defmethod fieldName-val ((m <node_get_field-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:fieldName-val is deprecated.  Use webots_ros-srv:fieldName instead.")
  (fieldName m))

(cl:ensure-generic-function 'proto-val :lambda-list '(m))
(cl:defmethod proto-val ((m <node_get_field-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:proto-val is deprecated.  Use webots_ros-srv:proto instead.")
  (proto m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <node_get_field-request>) ostream)
  "Serializes a message object of type '<node_get_field-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'node)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'fieldName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'fieldName))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'proto) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <node_get_field-request>) istream)
  "Deserializes a message object of type '<node_get_field-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'fieldName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'fieldName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'proto) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<node_get_field-request>)))
  "Returns string type for a service object of type '<node_get_field-request>"
  "webots_ros/node_get_fieldRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node_get_field-request)))
  "Returns string type for a service object of type 'node_get_field-request"
  "webots_ros/node_get_fieldRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<node_get_field-request>)))
  "Returns md5sum for a message object of type '<node_get_field-request>"
  "80105ddcb86dd98488ad3cf099686b86")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'node_get_field-request)))
  "Returns md5sum for a message object of type 'node_get_field-request"
  "80105ddcb86dd98488ad3cf099686b86")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<node_get_field-request>)))
  "Returns full string definition for message of type '<node_get_field-request>"
  (cl:format cl:nil "uint64 node~%string fieldName~%bool proto~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'node_get_field-request)))
  "Returns full string definition for message of type 'node_get_field-request"
  (cl:format cl:nil "uint64 node~%string fieldName~%bool proto~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <node_get_field-request>))
  (cl:+ 0
     8
     4 (cl:length (cl:slot-value msg 'fieldName))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <node_get_field-request>))
  "Converts a ROS message object to a list"
  (cl:list 'node_get_field-request
    (cl:cons ':node (node msg))
    (cl:cons ':fieldName (fieldName msg))
    (cl:cons ':proto (proto msg))
))
;//! \htmlinclude node_get_field-response.msg.html

(cl:defclass <node_get_field-response> (roslisp-msg-protocol:ros-message)
  ((field
    :reader field
    :initarg :field
    :type cl:integer
    :initform 0))
)

(cl:defclass node_get_field-response (<node_get_field-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <node_get_field-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'node_get_field-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<node_get_field-response> is deprecated: use webots_ros-srv:node_get_field-response instead.")))

(cl:ensure-generic-function 'field-val :lambda-list '(m))
(cl:defmethod field-val ((m <node_get_field-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:field-val is deprecated.  Use webots_ros-srv:field instead.")
  (field m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <node_get_field-response>) ostream)
  "Serializes a message object of type '<node_get_field-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'field)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'field)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'field)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'field)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'field)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'field)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'field)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'field)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <node_get_field-response>) istream)
  "Deserializes a message object of type '<node_get_field-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<node_get_field-response>)))
  "Returns string type for a service object of type '<node_get_field-response>"
  "webots_ros/node_get_fieldResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node_get_field-response)))
  "Returns string type for a service object of type 'node_get_field-response"
  "webots_ros/node_get_fieldResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<node_get_field-response>)))
  "Returns md5sum for a message object of type '<node_get_field-response>"
  "80105ddcb86dd98488ad3cf099686b86")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'node_get_field-response)))
  "Returns md5sum for a message object of type 'node_get_field-response"
  "80105ddcb86dd98488ad3cf099686b86")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<node_get_field-response>)))
  "Returns full string definition for message of type '<node_get_field-response>"
  (cl:format cl:nil "uint64 field~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'node_get_field-response)))
  "Returns full string definition for message of type 'node_get_field-response"
  (cl:format cl:nil "uint64 field~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <node_get_field-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <node_get_field-response>))
  "Converts a ROS message object to a list"
  (cl:list 'node_get_field-response
    (cl:cons ':field (field msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'node_get_field)))
  'node_get_field-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'node_get_field)))
  'node_get_field-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node_get_field)))
  "Returns string type for a service object of type '<node_get_field>"
  "webots_ros/node_get_field")