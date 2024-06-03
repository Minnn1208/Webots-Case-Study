; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude get_int-request.msg.html

(cl:defclass <get_int-request> (roslisp-msg-protocol:ros-message)
  ((ask
    :reader ask
    :initarg :ask
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass get_int-request (<get_int-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <get_int-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'get_int-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<get_int-request> is deprecated: use webots_ros-srv:get_int-request instead.")))

(cl:ensure-generic-function 'ask-val :lambda-list '(m))
(cl:defmethod ask-val ((m <get_int-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:ask-val is deprecated.  Use webots_ros-srv:ask instead.")
  (ask m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <get_int-request>) ostream)
  "Serializes a message object of type '<get_int-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ask) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <get_int-request>) istream)
  "Deserializes a message object of type '<get_int-request>"
    (cl:setf (cl:slot-value msg 'ask) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<get_int-request>)))
  "Returns string type for a service object of type '<get_int-request>"
  "webots_ros/get_intRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_int-request)))
  "Returns string type for a service object of type 'get_int-request"
  "webots_ros/get_intRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<get_int-request>)))
  "Returns md5sum for a message object of type '<get_int-request>"
  "73dfae6ec9145dcc45d5ed973079e912")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'get_int-request)))
  "Returns md5sum for a message object of type 'get_int-request"
  "73dfae6ec9145dcc45d5ed973079e912")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<get_int-request>)))
  "Returns full string definition for message of type '<get_int-request>"
  (cl:format cl:nil "bool ask~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'get_int-request)))
  "Returns full string definition for message of type 'get_int-request"
  (cl:format cl:nil "bool ask~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <get_int-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <get_int-request>))
  "Converts a ROS message object to a list"
  (cl:list 'get_int-request
    (cl:cons ':ask (ask msg))
))
;//! \htmlinclude get_int-response.msg.html

(cl:defclass <get_int-response> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:integer
    :initform 0))
)

(cl:defclass get_int-response (<get_int-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <get_int-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'get_int-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<get_int-response> is deprecated: use webots_ros-srv:get_int-response instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <get_int-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:value-val is deprecated.  Use webots_ros-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <get_int-response>) ostream)
  "Serializes a message object of type '<get_int-response>"
  (cl:let* ((signed (cl:slot-value msg 'value)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <get_int-response>) istream)
  "Deserializes a message object of type '<get_int-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<get_int-response>)))
  "Returns string type for a service object of type '<get_int-response>"
  "webots_ros/get_intResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_int-response)))
  "Returns string type for a service object of type 'get_int-response"
  "webots_ros/get_intResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<get_int-response>)))
  "Returns md5sum for a message object of type '<get_int-response>"
  "73dfae6ec9145dcc45d5ed973079e912")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'get_int-response)))
  "Returns md5sum for a message object of type 'get_int-response"
  "73dfae6ec9145dcc45d5ed973079e912")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<get_int-response>)))
  "Returns full string definition for message of type '<get_int-response>"
  (cl:format cl:nil "int32 value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'get_int-response)))
  "Returns full string definition for message of type 'get_int-response"
  (cl:format cl:nil "int32 value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <get_int-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <get_int-response>))
  "Converts a ROS message object to a list"
  (cl:list 'get_int-response
    (cl:cons ':value (value msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'get_int)))
  'get_int-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'get_int)))
  'get_int-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_int)))
  "Returns string type for a service object of type '<get_int>"
  "webots_ros/get_int")