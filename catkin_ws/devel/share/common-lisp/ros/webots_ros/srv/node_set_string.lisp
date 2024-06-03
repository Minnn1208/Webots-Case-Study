; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude node_set_string-request.msg.html

(cl:defclass <node_set_string-request> (roslisp-msg-protocol:ros-message)
  ((node
    :reader node
    :initarg :node
    :type cl:integer
    :initform 0)
   (state_name
    :reader state_name
    :initarg :state_name
    :type cl:string
    :initform ""))
)

(cl:defclass node_set_string-request (<node_set_string-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <node_set_string-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'node_set_string-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<node_set_string-request> is deprecated: use webots_ros-srv:node_set_string-request instead.")))

(cl:ensure-generic-function 'node-val :lambda-list '(m))
(cl:defmethod node-val ((m <node_set_string-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:node-val is deprecated.  Use webots_ros-srv:node instead.")
  (node m))

(cl:ensure-generic-function 'state_name-val :lambda-list '(m))
(cl:defmethod state_name-val ((m <node_set_string-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:state_name-val is deprecated.  Use webots_ros-srv:state_name instead.")
  (state_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <node_set_string-request>) ostream)
  "Serializes a message object of type '<node_set_string-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'node)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'state_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'state_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <node_set_string-request>) istream)
  "Deserializes a message object of type '<node_set_string-request>"
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
      (cl:setf (cl:slot-value msg 'state_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'state_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<node_set_string-request>)))
  "Returns string type for a service object of type '<node_set_string-request>"
  "webots_ros/node_set_stringRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node_set_string-request)))
  "Returns string type for a service object of type 'node_set_string-request"
  "webots_ros/node_set_stringRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<node_set_string-request>)))
  "Returns md5sum for a message object of type '<node_set_string-request>"
  "861607cfa9bd9ae700702d939e7f1dd7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'node_set_string-request)))
  "Returns md5sum for a message object of type 'node_set_string-request"
  "861607cfa9bd9ae700702d939e7f1dd7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<node_set_string-request>)))
  "Returns full string definition for message of type '<node_set_string-request>"
  (cl:format cl:nil "uint64 node~%string state_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'node_set_string-request)))
  "Returns full string definition for message of type 'node_set_string-request"
  (cl:format cl:nil "uint64 node~%string state_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <node_set_string-request>))
  (cl:+ 0
     8
     4 (cl:length (cl:slot-value msg 'state_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <node_set_string-request>))
  "Converts a ROS message object to a list"
  (cl:list 'node_set_string-request
    (cl:cons ':node (node msg))
    (cl:cons ':state_name (state_name msg))
))
;//! \htmlinclude node_set_string-response.msg.html

(cl:defclass <node_set_string-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:integer
    :initform 0))
)

(cl:defclass node_set_string-response (<node_set_string-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <node_set_string-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'node_set_string-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<node_set_string-response> is deprecated: use webots_ros-srv:node_set_string-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <node_set_string-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:success-val is deprecated.  Use webots_ros-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <node_set_string-response>) ostream)
  "Serializes a message object of type '<node_set_string-response>"
  (cl:let* ((signed (cl:slot-value msg 'success)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <node_set_string-response>) istream)
  "Deserializes a message object of type '<node_set_string-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'success) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<node_set_string-response>)))
  "Returns string type for a service object of type '<node_set_string-response>"
  "webots_ros/node_set_stringResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node_set_string-response)))
  "Returns string type for a service object of type 'node_set_string-response"
  "webots_ros/node_set_stringResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<node_set_string-response>)))
  "Returns md5sum for a message object of type '<node_set_string-response>"
  "861607cfa9bd9ae700702d939e7f1dd7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'node_set_string-response)))
  "Returns md5sum for a message object of type 'node_set_string-response"
  "861607cfa9bd9ae700702d939e7f1dd7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<node_set_string-response>)))
  "Returns full string definition for message of type '<node_set_string-response>"
  (cl:format cl:nil "int32 success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'node_set_string-response)))
  "Returns full string definition for message of type 'node_set_string-response"
  (cl:format cl:nil "int32 success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <node_set_string-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <node_set_string-response>))
  "Converts a ROS message object to a list"
  (cl:list 'node_set_string-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'node_set_string)))
  'node_set_string-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'node_set_string)))
  'node_set_string-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node_set_string)))
  "Returns string type for a service object of type '<node_set_string>"
  "webots_ros/node_set_string")