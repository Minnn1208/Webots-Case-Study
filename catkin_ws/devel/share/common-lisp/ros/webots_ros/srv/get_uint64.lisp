; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude get_uint64-request.msg.html

(cl:defclass <get_uint64-request> (roslisp-msg-protocol:ros-message)
  ((ask
    :reader ask
    :initarg :ask
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass get_uint64-request (<get_uint64-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <get_uint64-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'get_uint64-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<get_uint64-request> is deprecated: use webots_ros-srv:get_uint64-request instead.")))

(cl:ensure-generic-function 'ask-val :lambda-list '(m))
(cl:defmethod ask-val ((m <get_uint64-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:ask-val is deprecated.  Use webots_ros-srv:ask instead.")
  (ask m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <get_uint64-request>) ostream)
  "Serializes a message object of type '<get_uint64-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ask) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <get_uint64-request>) istream)
  "Deserializes a message object of type '<get_uint64-request>"
    (cl:setf (cl:slot-value msg 'ask) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<get_uint64-request>)))
  "Returns string type for a service object of type '<get_uint64-request>"
  "webots_ros/get_uint64Request")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_uint64-request)))
  "Returns string type for a service object of type 'get_uint64-request"
  "webots_ros/get_uint64Request")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<get_uint64-request>)))
  "Returns md5sum for a message object of type '<get_uint64-request>"
  "d531f9d37648dc4de8bf2e757ee280a0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'get_uint64-request)))
  "Returns md5sum for a message object of type 'get_uint64-request"
  "d531f9d37648dc4de8bf2e757ee280a0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<get_uint64-request>)))
  "Returns full string definition for message of type '<get_uint64-request>"
  (cl:format cl:nil "bool ask~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'get_uint64-request)))
  "Returns full string definition for message of type 'get_uint64-request"
  (cl:format cl:nil "bool ask~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <get_uint64-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <get_uint64-request>))
  "Converts a ROS message object to a list"
  (cl:list 'get_uint64-request
    (cl:cons ':ask (ask msg))
))
;//! \htmlinclude get_uint64-response.msg.html

(cl:defclass <get_uint64-response> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:integer
    :initform 0))
)

(cl:defclass get_uint64-response (<get_uint64-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <get_uint64-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'get_uint64-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<get_uint64-response> is deprecated: use webots_ros-srv:get_uint64-response instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <get_uint64-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:value-val is deprecated.  Use webots_ros-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <get_uint64-response>) ostream)
  "Serializes a message object of type '<get_uint64-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <get_uint64-response>) istream)
  "Deserializes a message object of type '<get_uint64-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<get_uint64-response>)))
  "Returns string type for a service object of type '<get_uint64-response>"
  "webots_ros/get_uint64Response")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_uint64-response)))
  "Returns string type for a service object of type 'get_uint64-response"
  "webots_ros/get_uint64Response")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<get_uint64-response>)))
  "Returns md5sum for a message object of type '<get_uint64-response>"
  "d531f9d37648dc4de8bf2e757ee280a0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'get_uint64-response)))
  "Returns md5sum for a message object of type 'get_uint64-response"
  "d531f9d37648dc4de8bf2e757ee280a0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<get_uint64-response>)))
  "Returns full string definition for message of type '<get_uint64-response>"
  (cl:format cl:nil "uint64 value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'get_uint64-response)))
  "Returns full string definition for message of type 'get_uint64-response"
  (cl:format cl:nil "uint64 value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <get_uint64-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <get_uint64-response>))
  "Converts a ROS message object to a list"
  (cl:list 'get_uint64-response
    (cl:cons ':value (value msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'get_uint64)))
  'get_uint64-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'get_uint64)))
  'get_uint64-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_uint64)))
  "Returns string type for a service object of type '<get_uint64>"
  "webots_ros/get_uint64")