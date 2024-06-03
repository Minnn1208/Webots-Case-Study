; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude node_set_joint_position-request.msg.html

(cl:defclass <node_set_joint_position-request> (roslisp-msg-protocol:ros-message)
  ((node
    :reader node
    :initarg :node
    :type cl:integer
    :initform 0)
   (position
    :reader position
    :initarg :position
    :type cl:float
    :initform 0.0)
   (index
    :reader index
    :initarg :index
    :type cl:integer
    :initform 0))
)

(cl:defclass node_set_joint_position-request (<node_set_joint_position-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <node_set_joint_position-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'node_set_joint_position-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<node_set_joint_position-request> is deprecated: use webots_ros-srv:node_set_joint_position-request instead.")))

(cl:ensure-generic-function 'node-val :lambda-list '(m))
(cl:defmethod node-val ((m <node_set_joint_position-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:node-val is deprecated.  Use webots_ros-srv:node instead.")
  (node m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <node_set_joint_position-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:position-val is deprecated.  Use webots_ros-srv:position instead.")
  (position m))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <node_set_joint_position-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:index-val is deprecated.  Use webots_ros-srv:index instead.")
  (index m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <node_set_joint_position-request>) ostream)
  "Serializes a message object of type '<node_set_joint_position-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'node)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <node_set_joint_position-request>) istream)
  "Deserializes a message object of type '<node_set_joint_position-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'position) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'index) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<node_set_joint_position-request>)))
  "Returns string type for a service object of type '<node_set_joint_position-request>"
  "webots_ros/node_set_joint_positionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node_set_joint_position-request)))
  "Returns string type for a service object of type 'node_set_joint_position-request"
  "webots_ros/node_set_joint_positionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<node_set_joint_position-request>)))
  "Returns md5sum for a message object of type '<node_set_joint_position-request>"
  "5c6d60bc617f1348200743f9a8544085")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'node_set_joint_position-request)))
  "Returns md5sum for a message object of type 'node_set_joint_position-request"
  "5c6d60bc617f1348200743f9a8544085")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<node_set_joint_position-request>)))
  "Returns full string definition for message of type '<node_set_joint_position-request>"
  (cl:format cl:nil "uint64 node~%float64 position~%int32 index~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'node_set_joint_position-request)))
  "Returns full string definition for message of type 'node_set_joint_position-request"
  (cl:format cl:nil "uint64 node~%float64 position~%int32 index~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <node_set_joint_position-request>))
  (cl:+ 0
     8
     8
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <node_set_joint_position-request>))
  "Converts a ROS message object to a list"
  (cl:list 'node_set_joint_position-request
    (cl:cons ':node (node msg))
    (cl:cons ':position (position msg))
    (cl:cons ':index (index msg))
))
;//! \htmlinclude node_set_joint_position-response.msg.html

(cl:defclass <node_set_joint_position-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass node_set_joint_position-response (<node_set_joint_position-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <node_set_joint_position-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'node_set_joint_position-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<node_set_joint_position-response> is deprecated: use webots_ros-srv:node_set_joint_position-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <node_set_joint_position-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:success-val is deprecated.  Use webots_ros-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <node_set_joint_position-response>) ostream)
  "Serializes a message object of type '<node_set_joint_position-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <node_set_joint_position-response>) istream)
  "Deserializes a message object of type '<node_set_joint_position-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<node_set_joint_position-response>)))
  "Returns string type for a service object of type '<node_set_joint_position-response>"
  "webots_ros/node_set_joint_positionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node_set_joint_position-response)))
  "Returns string type for a service object of type 'node_set_joint_position-response"
  "webots_ros/node_set_joint_positionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<node_set_joint_position-response>)))
  "Returns md5sum for a message object of type '<node_set_joint_position-response>"
  "5c6d60bc617f1348200743f9a8544085")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'node_set_joint_position-response)))
  "Returns md5sum for a message object of type 'node_set_joint_position-response"
  "5c6d60bc617f1348200743f9a8544085")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<node_set_joint_position-response>)))
  "Returns full string definition for message of type '<node_set_joint_position-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'node_set_joint_position-response)))
  "Returns full string definition for message of type 'node_set_joint_position-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <node_set_joint_position-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <node_set_joint_position-response>))
  "Converts a ROS message object to a list"
  (cl:list 'node_set_joint_position-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'node_set_joint_position)))
  'node_set_joint_position-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'node_set_joint_position)))
  'node_set_joint_position-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node_set_joint_position)))
  "Returns string type for a service object of type '<node_set_joint_position>"
  "webots_ros/node_set_joint_position")