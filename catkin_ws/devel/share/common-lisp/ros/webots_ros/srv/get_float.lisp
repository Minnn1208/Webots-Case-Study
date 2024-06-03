; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude get_float-request.msg.html

(cl:defclass <get_float-request> (roslisp-msg-protocol:ros-message)
  ((ask
    :reader ask
    :initarg :ask
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass get_float-request (<get_float-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <get_float-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'get_float-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<get_float-request> is deprecated: use webots_ros-srv:get_float-request instead.")))

(cl:ensure-generic-function 'ask-val :lambda-list '(m))
(cl:defmethod ask-val ((m <get_float-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:ask-val is deprecated.  Use webots_ros-srv:ask instead.")
  (ask m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <get_float-request>) ostream)
  "Serializes a message object of type '<get_float-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ask) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <get_float-request>) istream)
  "Deserializes a message object of type '<get_float-request>"
    (cl:setf (cl:slot-value msg 'ask) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<get_float-request>)))
  "Returns string type for a service object of type '<get_float-request>"
  "webots_ros/get_floatRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_float-request)))
  "Returns string type for a service object of type 'get_float-request"
  "webots_ros/get_floatRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<get_float-request>)))
  "Returns md5sum for a message object of type '<get_float-request>"
  "896e758cc9f93e6fc99057486a02ac6a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'get_float-request)))
  "Returns md5sum for a message object of type 'get_float-request"
  "896e758cc9f93e6fc99057486a02ac6a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<get_float-request>)))
  "Returns full string definition for message of type '<get_float-request>"
  (cl:format cl:nil "bool ask~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'get_float-request)))
  "Returns full string definition for message of type 'get_float-request"
  (cl:format cl:nil "bool ask~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <get_float-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <get_float-request>))
  "Converts a ROS message object to a list"
  (cl:list 'get_float-request
    (cl:cons ':ask (ask msg))
))
;//! \htmlinclude get_float-response.msg.html

(cl:defclass <get_float-response> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:float
    :initform 0.0))
)

(cl:defclass get_float-response (<get_float-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <get_float-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'get_float-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<get_float-response> is deprecated: use webots_ros-srv:get_float-response instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <get_float-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:value-val is deprecated.  Use webots_ros-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <get_float-response>) ostream)
  "Serializes a message object of type '<get_float-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <get_float-response>) istream)
  "Deserializes a message object of type '<get_float-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'value) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<get_float-response>)))
  "Returns string type for a service object of type '<get_float-response>"
  "webots_ros/get_floatResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_float-response)))
  "Returns string type for a service object of type 'get_float-response"
  "webots_ros/get_floatResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<get_float-response>)))
  "Returns md5sum for a message object of type '<get_float-response>"
  "896e758cc9f93e6fc99057486a02ac6a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'get_float-response)))
  "Returns md5sum for a message object of type 'get_float-response"
  "896e758cc9f93e6fc99057486a02ac6a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<get_float-response>)))
  "Returns full string definition for message of type '<get_float-response>"
  (cl:format cl:nil "float64 value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'get_float-response)))
  "Returns full string definition for message of type 'get_float-response"
  (cl:format cl:nil "float64 value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <get_float-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <get_float-response>))
  "Converts a ROS message object to a list"
  (cl:list 'get_float-response
    (cl:cons ':value (value msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'get_float)))
  'get_float-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'get_float)))
  'get_float-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_float)))
  "Returns string type for a service object of type '<get_float>"
  "webots_ros/get_float")