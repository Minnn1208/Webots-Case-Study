; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude node_get_status-request.msg.html

(cl:defclass <node_get_status-request> (roslisp-msg-protocol:ros-message)
  ((ask
    :reader ask
    :initarg :ask
    :type cl:fixnum
    :initform 0))
)

(cl:defclass node_get_status-request (<node_get_status-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <node_get_status-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'node_get_status-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<node_get_status-request> is deprecated: use webots_ros-srv:node_get_status-request instead.")))

(cl:ensure-generic-function 'ask-val :lambda-list '(m))
(cl:defmethod ask-val ((m <node_get_status-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:ask-val is deprecated.  Use webots_ros-srv:ask instead.")
  (ask m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <node_get_status-request>) ostream)
  "Serializes a message object of type '<node_get_status-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ask)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <node_get_status-request>) istream)
  "Deserializes a message object of type '<node_get_status-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ask)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<node_get_status-request>)))
  "Returns string type for a service object of type '<node_get_status-request>"
  "webots_ros/node_get_statusRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node_get_status-request)))
  "Returns string type for a service object of type 'node_get_status-request"
  "webots_ros/node_get_statusRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<node_get_status-request>)))
  "Returns md5sum for a message object of type '<node_get_status-request>"
  "9d10c008835cf4bd024a6af9eca46c13")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'node_get_status-request)))
  "Returns md5sum for a message object of type 'node_get_status-request"
  "9d10c008835cf4bd024a6af9eca46c13")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<node_get_status-request>)))
  "Returns full string definition for message of type '<node_get_status-request>"
  (cl:format cl:nil "uint8 ask~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'node_get_status-request)))
  "Returns full string definition for message of type 'node_get_status-request"
  (cl:format cl:nil "uint8 ask~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <node_get_status-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <node_get_status-request>))
  "Converts a ROS message object to a list"
  (cl:list 'node_get_status-request
    (cl:cons ':ask (ask msg))
))
;//! \htmlinclude node_get_status-response.msg.html

(cl:defclass <node_get_status-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass node_get_status-response (<node_get_status-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <node_get_status-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'node_get_status-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<node_get_status-response> is deprecated: use webots_ros-srv:node_get_status-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <node_get_status-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:status-val is deprecated.  Use webots_ros-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <node_get_status-response>) ostream)
  "Serializes a message object of type '<node_get_status-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <node_get_status-response>) istream)
  "Deserializes a message object of type '<node_get_status-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<node_get_status-response>)))
  "Returns string type for a service object of type '<node_get_status-response>"
  "webots_ros/node_get_statusResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node_get_status-response)))
  "Returns string type for a service object of type 'node_get_status-response"
  "webots_ros/node_get_statusResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<node_get_status-response>)))
  "Returns md5sum for a message object of type '<node_get_status-response>"
  "9d10c008835cf4bd024a6af9eca46c13")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'node_get_status-response)))
  "Returns md5sum for a message object of type 'node_get_status-response"
  "9d10c008835cf4bd024a6af9eca46c13")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<node_get_status-response>)))
  "Returns full string definition for message of type '<node_get_status-response>"
  (cl:format cl:nil "uint8 status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'node_get_status-response)))
  "Returns full string definition for message of type 'node_get_status-response"
  (cl:format cl:nil "uint8 status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <node_get_status-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <node_get_status-response>))
  "Converts a ROS message object to a list"
  (cl:list 'node_get_status-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'node_get_status)))
  'node_get_status-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'node_get_status)))
  'node_get_status-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node_get_status)))
  "Returns string type for a service object of type '<node_get_status>"
  "webots_ros/node_get_status")