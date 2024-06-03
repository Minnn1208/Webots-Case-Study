; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude get_bool-request.msg.html

(cl:defclass <get_bool-request> (roslisp-msg-protocol:ros-message)
  ((ask
    :reader ask
    :initarg :ask
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass get_bool-request (<get_bool-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <get_bool-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'get_bool-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<get_bool-request> is deprecated: use webots_ros-srv:get_bool-request instead.")))

(cl:ensure-generic-function 'ask-val :lambda-list '(m))
(cl:defmethod ask-val ((m <get_bool-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:ask-val is deprecated.  Use webots_ros-srv:ask instead.")
  (ask m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <get_bool-request>) ostream)
  "Serializes a message object of type '<get_bool-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ask) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <get_bool-request>) istream)
  "Deserializes a message object of type '<get_bool-request>"
    (cl:setf (cl:slot-value msg 'ask) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<get_bool-request>)))
  "Returns string type for a service object of type '<get_bool-request>"
  "webots_ros/get_boolRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_bool-request)))
  "Returns string type for a service object of type 'get_bool-request"
  "webots_ros/get_boolRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<get_bool-request>)))
  "Returns md5sum for a message object of type '<get_bool-request>"
  "155bbaa7eff4769d41b3327e2ec91080")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'get_bool-request)))
  "Returns md5sum for a message object of type 'get_bool-request"
  "155bbaa7eff4769d41b3327e2ec91080")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<get_bool-request>)))
  "Returns full string definition for message of type '<get_bool-request>"
  (cl:format cl:nil "bool ask~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'get_bool-request)))
  "Returns full string definition for message of type 'get_bool-request"
  (cl:format cl:nil "bool ask~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <get_bool-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <get_bool-request>))
  "Converts a ROS message object to a list"
  (cl:list 'get_bool-request
    (cl:cons ':ask (ask msg))
))
;//! \htmlinclude get_bool-response.msg.html

(cl:defclass <get_bool-response> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass get_bool-response (<get_bool-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <get_bool-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'get_bool-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<get_bool-response> is deprecated: use webots_ros-srv:get_bool-response instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <get_bool-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:value-val is deprecated.  Use webots_ros-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <get_bool-response>) ostream)
  "Serializes a message object of type '<get_bool-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'value) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <get_bool-response>) istream)
  "Deserializes a message object of type '<get_bool-response>"
    (cl:setf (cl:slot-value msg 'value) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<get_bool-response>)))
  "Returns string type for a service object of type '<get_bool-response>"
  "webots_ros/get_boolResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_bool-response)))
  "Returns string type for a service object of type 'get_bool-response"
  "webots_ros/get_boolResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<get_bool-response>)))
  "Returns md5sum for a message object of type '<get_bool-response>"
  "155bbaa7eff4769d41b3327e2ec91080")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'get_bool-response)))
  "Returns md5sum for a message object of type 'get_bool-response"
  "155bbaa7eff4769d41b3327e2ec91080")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<get_bool-response>)))
  "Returns full string definition for message of type '<get_bool-response>"
  (cl:format cl:nil "bool value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'get_bool-response)))
  "Returns full string definition for message of type 'get_bool-response"
  (cl:format cl:nil "bool value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <get_bool-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <get_bool-response>))
  "Converts a ROS message object to a list"
  (cl:list 'get_bool-response
    (cl:cons ':value (value msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'get_bool)))
  'get_bool-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'get_bool)))
  'get_bool-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_bool)))
  "Returns string type for a service object of type '<get_bool>"
  "webots_ros/get_bool")