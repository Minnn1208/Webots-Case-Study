; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude supervisor_get_from_id-request.msg.html

(cl:defclass <supervisor_get_from_id-request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0))
)

(cl:defclass supervisor_get_from_id-request (<supervisor_get_from_id-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <supervisor_get_from_id-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'supervisor_get_from_id-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<supervisor_get_from_id-request> is deprecated: use webots_ros-srv:supervisor_get_from_id-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <supervisor_get_from_id-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:id-val is deprecated.  Use webots_ros-srv:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <supervisor_get_from_id-request>) ostream)
  "Serializes a message object of type '<supervisor_get_from_id-request>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <supervisor_get_from_id-request>) istream)
  "Deserializes a message object of type '<supervisor_get_from_id-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<supervisor_get_from_id-request>)))
  "Returns string type for a service object of type '<supervisor_get_from_id-request>"
  "webots_ros/supervisor_get_from_idRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'supervisor_get_from_id-request)))
  "Returns string type for a service object of type 'supervisor_get_from_id-request"
  "webots_ros/supervisor_get_from_idRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<supervisor_get_from_id-request>)))
  "Returns md5sum for a message object of type '<supervisor_get_from_id-request>"
  "398e4930ac99b6ae9bc51fa66b0d9846")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'supervisor_get_from_id-request)))
  "Returns md5sum for a message object of type 'supervisor_get_from_id-request"
  "398e4930ac99b6ae9bc51fa66b0d9846")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<supervisor_get_from_id-request>)))
  "Returns full string definition for message of type '<supervisor_get_from_id-request>"
  (cl:format cl:nil "int32 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'supervisor_get_from_id-request)))
  "Returns full string definition for message of type 'supervisor_get_from_id-request"
  (cl:format cl:nil "int32 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <supervisor_get_from_id-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <supervisor_get_from_id-request>))
  "Converts a ROS message object to a list"
  (cl:list 'supervisor_get_from_id-request
    (cl:cons ':id (id msg))
))
;//! \htmlinclude supervisor_get_from_id-response.msg.html

(cl:defclass <supervisor_get_from_id-response> (roslisp-msg-protocol:ros-message)
  ((node
    :reader node
    :initarg :node
    :type cl:integer
    :initform 0))
)

(cl:defclass supervisor_get_from_id-response (<supervisor_get_from_id-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <supervisor_get_from_id-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'supervisor_get_from_id-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<supervisor_get_from_id-response> is deprecated: use webots_ros-srv:supervisor_get_from_id-response instead.")))

(cl:ensure-generic-function 'node-val :lambda-list '(m))
(cl:defmethod node-val ((m <supervisor_get_from_id-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:node-val is deprecated.  Use webots_ros-srv:node instead.")
  (node m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <supervisor_get_from_id-response>) ostream)
  "Serializes a message object of type '<supervisor_get_from_id-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'node)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <supervisor_get_from_id-response>) istream)
  "Deserializes a message object of type '<supervisor_get_from_id-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<supervisor_get_from_id-response>)))
  "Returns string type for a service object of type '<supervisor_get_from_id-response>"
  "webots_ros/supervisor_get_from_idResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'supervisor_get_from_id-response)))
  "Returns string type for a service object of type 'supervisor_get_from_id-response"
  "webots_ros/supervisor_get_from_idResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<supervisor_get_from_id-response>)))
  "Returns md5sum for a message object of type '<supervisor_get_from_id-response>"
  "398e4930ac99b6ae9bc51fa66b0d9846")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'supervisor_get_from_id-response)))
  "Returns md5sum for a message object of type 'supervisor_get_from_id-response"
  "398e4930ac99b6ae9bc51fa66b0d9846")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<supervisor_get_from_id-response>)))
  "Returns full string definition for message of type '<supervisor_get_from_id-response>"
  (cl:format cl:nil "uint64 node~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'supervisor_get_from_id-response)))
  "Returns full string definition for message of type 'supervisor_get_from_id-response"
  (cl:format cl:nil "uint64 node~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <supervisor_get_from_id-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <supervisor_get_from_id-response>))
  "Converts a ROS message object to a list"
  (cl:list 'supervisor_get_from_id-response
    (cl:cons ':node (node msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'supervisor_get_from_id)))
  'supervisor_get_from_id-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'supervisor_get_from_id)))
  'supervisor_get_from_id-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'supervisor_get_from_id)))
  "Returns string type for a service object of type '<supervisor_get_from_id>"
  "webots_ros/supervisor_get_from_id")