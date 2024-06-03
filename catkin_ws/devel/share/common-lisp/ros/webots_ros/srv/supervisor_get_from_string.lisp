; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude supervisor_get_from_string-request.msg.html

(cl:defclass <supervisor_get_from_string-request> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:string
    :initform ""))
)

(cl:defclass supervisor_get_from_string-request (<supervisor_get_from_string-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <supervisor_get_from_string-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'supervisor_get_from_string-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<supervisor_get_from_string-request> is deprecated: use webots_ros-srv:supervisor_get_from_string-request instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <supervisor_get_from_string-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:value-val is deprecated.  Use webots_ros-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <supervisor_get_from_string-request>) ostream)
  "Serializes a message object of type '<supervisor_get_from_string-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'value))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <supervisor_get_from_string-request>) istream)
  "Deserializes a message object of type '<supervisor_get_from_string-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'value) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<supervisor_get_from_string-request>)))
  "Returns string type for a service object of type '<supervisor_get_from_string-request>"
  "webots_ros/supervisor_get_from_stringRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'supervisor_get_from_string-request)))
  "Returns string type for a service object of type 'supervisor_get_from_string-request"
  "webots_ros/supervisor_get_from_stringRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<supervisor_get_from_string-request>)))
  "Returns md5sum for a message object of type '<supervisor_get_from_string-request>"
  "fcb5d4f10a46a1a9f10528733a3b9b3a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'supervisor_get_from_string-request)))
  "Returns md5sum for a message object of type 'supervisor_get_from_string-request"
  "fcb5d4f10a46a1a9f10528733a3b9b3a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<supervisor_get_from_string-request>)))
  "Returns full string definition for message of type '<supervisor_get_from_string-request>"
  (cl:format cl:nil "string value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'supervisor_get_from_string-request)))
  "Returns full string definition for message of type 'supervisor_get_from_string-request"
  (cl:format cl:nil "string value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <supervisor_get_from_string-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'value))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <supervisor_get_from_string-request>))
  "Converts a ROS message object to a list"
  (cl:list 'supervisor_get_from_string-request
    (cl:cons ':value (value msg))
))
;//! \htmlinclude supervisor_get_from_string-response.msg.html

(cl:defclass <supervisor_get_from_string-response> (roslisp-msg-protocol:ros-message)
  ((node
    :reader node
    :initarg :node
    :type cl:integer
    :initform 0))
)

(cl:defclass supervisor_get_from_string-response (<supervisor_get_from_string-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <supervisor_get_from_string-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'supervisor_get_from_string-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<supervisor_get_from_string-response> is deprecated: use webots_ros-srv:supervisor_get_from_string-response instead.")))

(cl:ensure-generic-function 'node-val :lambda-list '(m))
(cl:defmethod node-val ((m <supervisor_get_from_string-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:node-val is deprecated.  Use webots_ros-srv:node instead.")
  (node m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <supervisor_get_from_string-response>) ostream)
  "Serializes a message object of type '<supervisor_get_from_string-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'node)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <supervisor_get_from_string-response>) istream)
  "Deserializes a message object of type '<supervisor_get_from_string-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<supervisor_get_from_string-response>)))
  "Returns string type for a service object of type '<supervisor_get_from_string-response>"
  "webots_ros/supervisor_get_from_stringResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'supervisor_get_from_string-response)))
  "Returns string type for a service object of type 'supervisor_get_from_string-response"
  "webots_ros/supervisor_get_from_stringResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<supervisor_get_from_string-response>)))
  "Returns md5sum for a message object of type '<supervisor_get_from_string-response>"
  "fcb5d4f10a46a1a9f10528733a3b9b3a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'supervisor_get_from_string-response)))
  "Returns md5sum for a message object of type 'supervisor_get_from_string-response"
  "fcb5d4f10a46a1a9f10528733a3b9b3a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<supervisor_get_from_string-response>)))
  "Returns full string definition for message of type '<supervisor_get_from_string-response>"
  (cl:format cl:nil "uint64 node~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'supervisor_get_from_string-response)))
  "Returns full string definition for message of type 'supervisor_get_from_string-response"
  (cl:format cl:nil "uint64 node~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <supervisor_get_from_string-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <supervisor_get_from_string-response>))
  "Converts a ROS message object to a list"
  (cl:list 'supervisor_get_from_string-response
    (cl:cons ':node (node msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'supervisor_get_from_string)))
  'supervisor_get_from_string-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'supervisor_get_from_string)))
  'supervisor_get_from_string-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'supervisor_get_from_string)))
  "Returns string type for a service object of type '<supervisor_get_from_string>"
  "webots_ros/supervisor_get_from_string")