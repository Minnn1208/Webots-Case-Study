; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude set_bool-request.msg.html

(cl:defclass <set_bool-request> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass set_bool-request (<set_bool-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_bool-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_bool-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<set_bool-request> is deprecated: use webots_ros-srv:set_bool-request instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <set_bool-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:value-val is deprecated.  Use webots_ros-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_bool-request>) ostream)
  "Serializes a message object of type '<set_bool-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'value) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_bool-request>) istream)
  "Deserializes a message object of type '<set_bool-request>"
    (cl:setf (cl:slot-value msg 'value) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_bool-request>)))
  "Returns string type for a service object of type '<set_bool-request>"
  "webots_ros/set_boolRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_bool-request)))
  "Returns string type for a service object of type 'set_bool-request"
  "webots_ros/set_boolRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_bool-request>)))
  "Returns md5sum for a message object of type '<set_bool-request>"
  "24a0f9fd764459b7e35d04a0dd83dd11")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_bool-request)))
  "Returns md5sum for a message object of type 'set_bool-request"
  "24a0f9fd764459b7e35d04a0dd83dd11")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_bool-request>)))
  "Returns full string definition for message of type '<set_bool-request>"
  (cl:format cl:nil "bool value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_bool-request)))
  "Returns full string definition for message of type 'set_bool-request"
  (cl:format cl:nil "bool value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_bool-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_bool-request>))
  "Converts a ROS message object to a list"
  (cl:list 'set_bool-request
    (cl:cons ':value (value msg))
))
;//! \htmlinclude set_bool-response.msg.html

(cl:defclass <set_bool-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass set_bool-response (<set_bool-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_bool-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_bool-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<set_bool-response> is deprecated: use webots_ros-srv:set_bool-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <set_bool-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:success-val is deprecated.  Use webots_ros-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_bool-response>) ostream)
  "Serializes a message object of type '<set_bool-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_bool-response>) istream)
  "Deserializes a message object of type '<set_bool-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_bool-response>)))
  "Returns string type for a service object of type '<set_bool-response>"
  "webots_ros/set_boolResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_bool-response)))
  "Returns string type for a service object of type 'set_bool-response"
  "webots_ros/set_boolResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_bool-response>)))
  "Returns md5sum for a message object of type '<set_bool-response>"
  "24a0f9fd764459b7e35d04a0dd83dd11")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_bool-response)))
  "Returns md5sum for a message object of type 'set_bool-response"
  "24a0f9fd764459b7e35d04a0dd83dd11")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_bool-response>)))
  "Returns full string definition for message of type '<set_bool-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_bool-response)))
  "Returns full string definition for message of type 'set_bool-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_bool-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_bool-response>))
  "Converts a ROS message object to a list"
  (cl:list 'set_bool-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'set_bool)))
  'set_bool-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'set_bool)))
  'set_bool-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_bool)))
  "Returns string type for a service object of type '<set_bool>"
  "webots_ros/set_bool")