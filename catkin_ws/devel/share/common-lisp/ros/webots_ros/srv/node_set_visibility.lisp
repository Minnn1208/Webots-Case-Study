; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude node_set_visibility-request.msg.html

(cl:defclass <node_set_visibility-request> (roslisp-msg-protocol:ros-message)
  ((node
    :reader node
    :initarg :node
    :type cl:integer
    :initform 0)
   (from
    :reader from
    :initarg :from
    :type cl:integer
    :initform 0)
   (visible
    :reader visible
    :initarg :visible
    :type cl:fixnum
    :initform 0))
)

(cl:defclass node_set_visibility-request (<node_set_visibility-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <node_set_visibility-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'node_set_visibility-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<node_set_visibility-request> is deprecated: use webots_ros-srv:node_set_visibility-request instead.")))

(cl:ensure-generic-function 'node-val :lambda-list '(m))
(cl:defmethod node-val ((m <node_set_visibility-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:node-val is deprecated.  Use webots_ros-srv:node instead.")
  (node m))

(cl:ensure-generic-function 'from-val :lambda-list '(m))
(cl:defmethod from-val ((m <node_set_visibility-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:from-val is deprecated.  Use webots_ros-srv:from instead.")
  (from m))

(cl:ensure-generic-function 'visible-val :lambda-list '(m))
(cl:defmethod visible-val ((m <node_set_visibility-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:visible-val is deprecated.  Use webots_ros-srv:visible instead.")
  (visible m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <node_set_visibility-request>) ostream)
  "Serializes a message object of type '<node_set_visibility-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'from)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'from)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'from)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'from)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'from)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'from)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'from)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'from)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'visible)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <node_set_visibility-request>) istream)
  "Deserializes a message object of type '<node_set_visibility-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'from)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'from)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'from)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'from)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'from)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'from)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'from)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'from)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'visible)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<node_set_visibility-request>)))
  "Returns string type for a service object of type '<node_set_visibility-request>"
  "webots_ros/node_set_visibilityRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node_set_visibility-request)))
  "Returns string type for a service object of type 'node_set_visibility-request"
  "webots_ros/node_set_visibilityRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<node_set_visibility-request>)))
  "Returns md5sum for a message object of type '<node_set_visibility-request>"
  "b6fcfa2c79ae79467e085318b3617289")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'node_set_visibility-request)))
  "Returns md5sum for a message object of type 'node_set_visibility-request"
  "b6fcfa2c79ae79467e085318b3617289")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<node_set_visibility-request>)))
  "Returns full string definition for message of type '<node_set_visibility-request>"
  (cl:format cl:nil "uint64 node~%uint64 from~%uint8 visible~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'node_set_visibility-request)))
  "Returns full string definition for message of type 'node_set_visibility-request"
  (cl:format cl:nil "uint64 node~%uint64 from~%uint8 visible~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <node_set_visibility-request>))
  (cl:+ 0
     8
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <node_set_visibility-request>))
  "Converts a ROS message object to a list"
  (cl:list 'node_set_visibility-request
    (cl:cons ':node (node msg))
    (cl:cons ':from (from msg))
    (cl:cons ':visible (visible msg))
))
;//! \htmlinclude node_set_visibility-response.msg.html

(cl:defclass <node_set_visibility-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:fixnum
    :initform 0))
)

(cl:defclass node_set_visibility-response (<node_set_visibility-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <node_set_visibility-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'node_set_visibility-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<node_set_visibility-response> is deprecated: use webots_ros-srv:node_set_visibility-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <node_set_visibility-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:success-val is deprecated.  Use webots_ros-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <node_set_visibility-response>) ostream)
  "Serializes a message object of type '<node_set_visibility-response>"
  (cl:let* ((signed (cl:slot-value msg 'success)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <node_set_visibility-response>) istream)
  "Deserializes a message object of type '<node_set_visibility-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'success) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<node_set_visibility-response>)))
  "Returns string type for a service object of type '<node_set_visibility-response>"
  "webots_ros/node_set_visibilityResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node_set_visibility-response)))
  "Returns string type for a service object of type 'node_set_visibility-response"
  "webots_ros/node_set_visibilityResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<node_set_visibility-response>)))
  "Returns md5sum for a message object of type '<node_set_visibility-response>"
  "b6fcfa2c79ae79467e085318b3617289")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'node_set_visibility-response)))
  "Returns md5sum for a message object of type 'node_set_visibility-response"
  "b6fcfa2c79ae79467e085318b3617289")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<node_set_visibility-response>)))
  "Returns full string definition for message of type '<node_set_visibility-response>"
  (cl:format cl:nil "int8 success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'node_set_visibility-response)))
  "Returns full string definition for message of type 'node_set_visibility-response"
  (cl:format cl:nil "int8 success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <node_set_visibility-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <node_set_visibility-response>))
  "Converts a ROS message object to a list"
  (cl:list 'node_set_visibility-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'node_set_visibility)))
  'node_set_visibility-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'node_set_visibility)))
  'node_set_visibility-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node_set_visibility)))
  "Returns string type for a service object of type '<node_set_visibility>"
  "webots_ros/node_set_visibility")