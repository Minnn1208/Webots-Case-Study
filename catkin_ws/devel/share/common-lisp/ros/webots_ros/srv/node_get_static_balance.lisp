; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude node_get_static_balance-request.msg.html

(cl:defclass <node_get_static_balance-request> (roslisp-msg-protocol:ros-message)
  ((node
    :reader node
    :initarg :node
    :type cl:integer
    :initform 0))
)

(cl:defclass node_get_static_balance-request (<node_get_static_balance-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <node_get_static_balance-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'node_get_static_balance-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<node_get_static_balance-request> is deprecated: use webots_ros-srv:node_get_static_balance-request instead.")))

(cl:ensure-generic-function 'node-val :lambda-list '(m))
(cl:defmethod node-val ((m <node_get_static_balance-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:node-val is deprecated.  Use webots_ros-srv:node instead.")
  (node m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <node_get_static_balance-request>) ostream)
  "Serializes a message object of type '<node_get_static_balance-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'node)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <node_get_static_balance-request>) istream)
  "Deserializes a message object of type '<node_get_static_balance-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<node_get_static_balance-request>)))
  "Returns string type for a service object of type '<node_get_static_balance-request>"
  "webots_ros/node_get_static_balanceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node_get_static_balance-request)))
  "Returns string type for a service object of type 'node_get_static_balance-request"
  "webots_ros/node_get_static_balanceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<node_get_static_balance-request>)))
  "Returns md5sum for a message object of type '<node_get_static_balance-request>"
  "1bb59681994e8cd9a01f91ec4bc81585")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'node_get_static_balance-request)))
  "Returns md5sum for a message object of type 'node_get_static_balance-request"
  "1bb59681994e8cd9a01f91ec4bc81585")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<node_get_static_balance-request>)))
  "Returns full string definition for message of type '<node_get_static_balance-request>"
  (cl:format cl:nil "uint64 node~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'node_get_static_balance-request)))
  "Returns full string definition for message of type 'node_get_static_balance-request"
  (cl:format cl:nil "uint64 node~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <node_get_static_balance-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <node_get_static_balance-request>))
  "Converts a ROS message object to a list"
  (cl:list 'node_get_static_balance-request
    (cl:cons ':node (node msg))
))
;//! \htmlinclude node_get_static_balance-response.msg.html

(cl:defclass <node_get_static_balance-response> (roslisp-msg-protocol:ros-message)
  ((balance
    :reader balance
    :initarg :balance
    :type cl:fixnum
    :initform 0))
)

(cl:defclass node_get_static_balance-response (<node_get_static_balance-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <node_get_static_balance-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'node_get_static_balance-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<node_get_static_balance-response> is deprecated: use webots_ros-srv:node_get_static_balance-response instead.")))

(cl:ensure-generic-function 'balance-val :lambda-list '(m))
(cl:defmethod balance-val ((m <node_get_static_balance-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:balance-val is deprecated.  Use webots_ros-srv:balance instead.")
  (balance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <node_get_static_balance-response>) ostream)
  "Serializes a message object of type '<node_get_static_balance-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'balance)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <node_get_static_balance-response>) istream)
  "Deserializes a message object of type '<node_get_static_balance-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'balance)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<node_get_static_balance-response>)))
  "Returns string type for a service object of type '<node_get_static_balance-response>"
  "webots_ros/node_get_static_balanceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node_get_static_balance-response)))
  "Returns string type for a service object of type 'node_get_static_balance-response"
  "webots_ros/node_get_static_balanceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<node_get_static_balance-response>)))
  "Returns md5sum for a message object of type '<node_get_static_balance-response>"
  "1bb59681994e8cd9a01f91ec4bc81585")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'node_get_static_balance-response)))
  "Returns md5sum for a message object of type 'node_get_static_balance-response"
  "1bb59681994e8cd9a01f91ec4bc81585")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<node_get_static_balance-response>)))
  "Returns full string definition for message of type '<node_get_static_balance-response>"
  (cl:format cl:nil "uint8 balance~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'node_get_static_balance-response)))
  "Returns full string definition for message of type 'node_get_static_balance-response"
  (cl:format cl:nil "uint8 balance~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <node_get_static_balance-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <node_get_static_balance-response>))
  "Converts a ROS message object to a list"
  (cl:list 'node_get_static_balance-response
    (cl:cons ':balance (balance msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'node_get_static_balance)))
  'node_get_static_balance-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'node_get_static_balance)))
  'node_get_static_balance-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node_get_static_balance)))
  "Returns string type for a service object of type '<node_get_static_balance>"
  "webots_ros/node_get_static_balance")