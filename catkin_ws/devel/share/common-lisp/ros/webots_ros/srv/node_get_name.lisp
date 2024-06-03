; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude node_get_name-request.msg.html

(cl:defclass <node_get_name-request> (roslisp-msg-protocol:ros-message)
  ((node
    :reader node
    :initarg :node
    :type cl:integer
    :initform 0))
)

(cl:defclass node_get_name-request (<node_get_name-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <node_get_name-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'node_get_name-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<node_get_name-request> is deprecated: use webots_ros-srv:node_get_name-request instead.")))

(cl:ensure-generic-function 'node-val :lambda-list '(m))
(cl:defmethod node-val ((m <node_get_name-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:node-val is deprecated.  Use webots_ros-srv:node instead.")
  (node m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <node_get_name-request>) ostream)
  "Serializes a message object of type '<node_get_name-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'node)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <node_get_name-request>) istream)
  "Deserializes a message object of type '<node_get_name-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<node_get_name-request>)))
  "Returns string type for a service object of type '<node_get_name-request>"
  "webots_ros/node_get_nameRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node_get_name-request)))
  "Returns string type for a service object of type 'node_get_name-request"
  "webots_ros/node_get_nameRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<node_get_name-request>)))
  "Returns md5sum for a message object of type '<node_get_name-request>"
  "51d3f5e9907c2b98d816acf3aad2e00e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'node_get_name-request)))
  "Returns md5sum for a message object of type 'node_get_name-request"
  "51d3f5e9907c2b98d816acf3aad2e00e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<node_get_name-request>)))
  "Returns full string definition for message of type '<node_get_name-request>"
  (cl:format cl:nil "uint64 node~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'node_get_name-request)))
  "Returns full string definition for message of type 'node_get_name-request"
  (cl:format cl:nil "uint64 node~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <node_get_name-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <node_get_name-request>))
  "Converts a ROS message object to a list"
  (cl:list 'node_get_name-request
    (cl:cons ':node (node msg))
))
;//! \htmlinclude node_get_name-response.msg.html

(cl:defclass <node_get_name-response> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass node_get_name-response (<node_get_name-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <node_get_name-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'node_get_name-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<node_get_name-response> is deprecated: use webots_ros-srv:node_get_name-response instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <node_get_name-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:name-val is deprecated.  Use webots_ros-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <node_get_name-response>) ostream)
  "Serializes a message object of type '<node_get_name-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <node_get_name-response>) istream)
  "Deserializes a message object of type '<node_get_name-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<node_get_name-response>)))
  "Returns string type for a service object of type '<node_get_name-response>"
  "webots_ros/node_get_nameResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node_get_name-response)))
  "Returns string type for a service object of type 'node_get_name-response"
  "webots_ros/node_get_nameResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<node_get_name-response>)))
  "Returns md5sum for a message object of type '<node_get_name-response>"
  "51d3f5e9907c2b98d816acf3aad2e00e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'node_get_name-response)))
  "Returns md5sum for a message object of type 'node_get_name-response"
  "51d3f5e9907c2b98d816acf3aad2e00e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<node_get_name-response>)))
  "Returns full string definition for message of type '<node_get_name-response>"
  (cl:format cl:nil "string name~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'node_get_name-response)))
  "Returns full string definition for message of type 'node_get_name-response"
  (cl:format cl:nil "string name~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <node_get_name-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <node_get_name-response>))
  "Converts a ROS message object to a list"
  (cl:list 'node_get_name-response
    (cl:cons ':name (name msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'node_get_name)))
  'node_get_name-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'node_get_name)))
  'node_get_name-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node_get_name)))
  "Returns string type for a service object of type '<node_get_name>"
  "webots_ros/node_get_name")