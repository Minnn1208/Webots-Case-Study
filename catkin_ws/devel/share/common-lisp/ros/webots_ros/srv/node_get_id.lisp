; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude node_get_id-request.msg.html

(cl:defclass <node_get_id-request> (roslisp-msg-protocol:ros-message)
  ((node
    :reader node
    :initarg :node
    :type cl:integer
    :initform 0))
)

(cl:defclass node_get_id-request (<node_get_id-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <node_get_id-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'node_get_id-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<node_get_id-request> is deprecated: use webots_ros-srv:node_get_id-request instead.")))

(cl:ensure-generic-function 'node-val :lambda-list '(m))
(cl:defmethod node-val ((m <node_get_id-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:node-val is deprecated.  Use webots_ros-srv:node instead.")
  (node m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <node_get_id-request>) ostream)
  "Serializes a message object of type '<node_get_id-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'node)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <node_get_id-request>) istream)
  "Deserializes a message object of type '<node_get_id-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<node_get_id-request>)))
  "Returns string type for a service object of type '<node_get_id-request>"
  "webots_ros/node_get_idRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node_get_id-request)))
  "Returns string type for a service object of type 'node_get_id-request"
  "webots_ros/node_get_idRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<node_get_id-request>)))
  "Returns md5sum for a message object of type '<node_get_id-request>"
  "16a06b427b76c7c64b73962f4f092416")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'node_get_id-request)))
  "Returns md5sum for a message object of type 'node_get_id-request"
  "16a06b427b76c7c64b73962f4f092416")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<node_get_id-request>)))
  "Returns full string definition for message of type '<node_get_id-request>"
  (cl:format cl:nil "uint64 node~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'node_get_id-request)))
  "Returns full string definition for message of type 'node_get_id-request"
  (cl:format cl:nil "uint64 node~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <node_get_id-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <node_get_id-request>))
  "Converts a ROS message object to a list"
  (cl:list 'node_get_id-request
    (cl:cons ':node (node msg))
))
;//! \htmlinclude node_get_id-response.msg.html

(cl:defclass <node_get_id-response> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0))
)

(cl:defclass node_get_id-response (<node_get_id-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <node_get_id-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'node_get_id-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<node_get_id-response> is deprecated: use webots_ros-srv:node_get_id-response instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <node_get_id-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:id-val is deprecated.  Use webots_ros-srv:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <node_get_id-response>) ostream)
  "Serializes a message object of type '<node_get_id-response>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <node_get_id-response>) istream)
  "Deserializes a message object of type '<node_get_id-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<node_get_id-response>)))
  "Returns string type for a service object of type '<node_get_id-response>"
  "webots_ros/node_get_idResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node_get_id-response)))
  "Returns string type for a service object of type 'node_get_id-response"
  "webots_ros/node_get_idResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<node_get_id-response>)))
  "Returns md5sum for a message object of type '<node_get_id-response>"
  "16a06b427b76c7c64b73962f4f092416")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'node_get_id-response)))
  "Returns md5sum for a message object of type 'node_get_id-response"
  "16a06b427b76c7c64b73962f4f092416")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<node_get_id-response>)))
  "Returns full string definition for message of type '<node_get_id-response>"
  (cl:format cl:nil "int32 id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'node_get_id-response)))
  "Returns full string definition for message of type 'node_get_id-response"
  (cl:format cl:nil "int32 id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <node_get_id-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <node_get_id-response>))
  "Converts a ROS message object to a list"
  (cl:list 'node_get_id-response
    (cl:cons ':id (id msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'node_get_id)))
  'node_get_id-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'node_get_id)))
  'node_get_id-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node_get_id)))
  "Returns string type for a service object of type '<node_get_id>"
  "webots_ros/node_get_id")