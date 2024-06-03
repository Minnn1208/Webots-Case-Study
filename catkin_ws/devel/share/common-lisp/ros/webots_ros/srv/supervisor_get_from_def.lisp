; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude supervisor_get_from_def-request.msg.html

(cl:defclass <supervisor_get_from_def-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (proto
    :reader proto
    :initarg :proto
    :type cl:integer
    :initform 0))
)

(cl:defclass supervisor_get_from_def-request (<supervisor_get_from_def-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <supervisor_get_from_def-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'supervisor_get_from_def-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<supervisor_get_from_def-request> is deprecated: use webots_ros-srv:supervisor_get_from_def-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <supervisor_get_from_def-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:name-val is deprecated.  Use webots_ros-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'proto-val :lambda-list '(m))
(cl:defmethod proto-val ((m <supervisor_get_from_def-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:proto-val is deprecated.  Use webots_ros-srv:proto instead.")
  (proto m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <supervisor_get_from_def-request>) ostream)
  "Serializes a message object of type '<supervisor_get_from_def-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'proto)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'proto)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'proto)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'proto)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'proto)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'proto)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'proto)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'proto)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <supervisor_get_from_def-request>) istream)
  "Deserializes a message object of type '<supervisor_get_from_def-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'proto)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'proto)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'proto)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'proto)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'proto)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'proto)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'proto)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'proto)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<supervisor_get_from_def-request>)))
  "Returns string type for a service object of type '<supervisor_get_from_def-request>"
  "webots_ros/supervisor_get_from_defRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'supervisor_get_from_def-request)))
  "Returns string type for a service object of type 'supervisor_get_from_def-request"
  "webots_ros/supervisor_get_from_defRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<supervisor_get_from_def-request>)))
  "Returns md5sum for a message object of type '<supervisor_get_from_def-request>"
  "6f2b7f6ebcd546dbcec5be5ad142c165")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'supervisor_get_from_def-request)))
  "Returns md5sum for a message object of type 'supervisor_get_from_def-request"
  "6f2b7f6ebcd546dbcec5be5ad142c165")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<supervisor_get_from_def-request>)))
  "Returns full string definition for message of type '<supervisor_get_from_def-request>"
  (cl:format cl:nil "string name~%uint64 proto~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'supervisor_get_from_def-request)))
  "Returns full string definition for message of type 'supervisor_get_from_def-request"
  (cl:format cl:nil "string name~%uint64 proto~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <supervisor_get_from_def-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <supervisor_get_from_def-request>))
  "Converts a ROS message object to a list"
  (cl:list 'supervisor_get_from_def-request
    (cl:cons ':name (name msg))
    (cl:cons ':proto (proto msg))
))
;//! \htmlinclude supervisor_get_from_def-response.msg.html

(cl:defclass <supervisor_get_from_def-response> (roslisp-msg-protocol:ros-message)
  ((node
    :reader node
    :initarg :node
    :type cl:integer
    :initform 0))
)

(cl:defclass supervisor_get_from_def-response (<supervisor_get_from_def-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <supervisor_get_from_def-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'supervisor_get_from_def-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<supervisor_get_from_def-response> is deprecated: use webots_ros-srv:supervisor_get_from_def-response instead.")))

(cl:ensure-generic-function 'node-val :lambda-list '(m))
(cl:defmethod node-val ((m <supervisor_get_from_def-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:node-val is deprecated.  Use webots_ros-srv:node instead.")
  (node m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <supervisor_get_from_def-response>) ostream)
  "Serializes a message object of type '<supervisor_get_from_def-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'node)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <supervisor_get_from_def-response>) istream)
  "Deserializes a message object of type '<supervisor_get_from_def-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<supervisor_get_from_def-response>)))
  "Returns string type for a service object of type '<supervisor_get_from_def-response>"
  "webots_ros/supervisor_get_from_defResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'supervisor_get_from_def-response)))
  "Returns string type for a service object of type 'supervisor_get_from_def-response"
  "webots_ros/supervisor_get_from_defResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<supervisor_get_from_def-response>)))
  "Returns md5sum for a message object of type '<supervisor_get_from_def-response>"
  "6f2b7f6ebcd546dbcec5be5ad142c165")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'supervisor_get_from_def-response)))
  "Returns md5sum for a message object of type 'supervisor_get_from_def-response"
  "6f2b7f6ebcd546dbcec5be5ad142c165")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<supervisor_get_from_def-response>)))
  "Returns full string definition for message of type '<supervisor_get_from_def-response>"
  (cl:format cl:nil "uint64 node~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'supervisor_get_from_def-response)))
  "Returns full string definition for message of type 'supervisor_get_from_def-response"
  (cl:format cl:nil "uint64 node~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <supervisor_get_from_def-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <supervisor_get_from_def-response>))
  "Converts a ROS message object to a list"
  (cl:list 'supervisor_get_from_def-response
    (cl:cons ':node (node msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'supervisor_get_from_def)))
  'supervisor_get_from_def-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'supervisor_get_from_def)))
  'supervisor_get_from_def-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'supervisor_get_from_def)))
  "Returns string type for a service object of type '<supervisor_get_from_def>"
  "webots_ros/supervisor_get_from_def")