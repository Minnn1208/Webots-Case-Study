; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude set_float-request.msg.html

(cl:defclass <set_float-request> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:float
    :initform 0.0))
)

(cl:defclass set_float-request (<set_float-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_float-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_float-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<set_float-request> is deprecated: use webots_ros-srv:set_float-request instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <set_float-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:value-val is deprecated.  Use webots_ros-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_float-request>) ostream)
  "Serializes a message object of type '<set_float-request>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_float-request>) istream)
  "Deserializes a message object of type '<set_float-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_float-request>)))
  "Returns string type for a service object of type '<set_float-request>"
  "webots_ros/set_floatRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_float-request)))
  "Returns string type for a service object of type 'set_float-request"
  "webots_ros/set_floatRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_float-request>)))
  "Returns md5sum for a message object of type '<set_float-request>"
  "0f0509b4253b73657cb37e93f4f2960c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_float-request)))
  "Returns md5sum for a message object of type 'set_float-request"
  "0f0509b4253b73657cb37e93f4f2960c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_float-request>)))
  "Returns full string definition for message of type '<set_float-request>"
  (cl:format cl:nil "float64 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_float-request)))
  "Returns full string definition for message of type 'set_float-request"
  (cl:format cl:nil "float64 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_float-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_float-request>))
  "Converts a ROS message object to a list"
  (cl:list 'set_float-request
    (cl:cons ':value (value msg))
))
;//! \htmlinclude set_float-response.msg.html

(cl:defclass <set_float-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass set_float-response (<set_float-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_float-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_float-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<set_float-response> is deprecated: use webots_ros-srv:set_float-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <set_float-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:success-val is deprecated.  Use webots_ros-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_float-response>) ostream)
  "Serializes a message object of type '<set_float-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_float-response>) istream)
  "Deserializes a message object of type '<set_float-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_float-response>)))
  "Returns string type for a service object of type '<set_float-response>"
  "webots_ros/set_floatResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_float-response)))
  "Returns string type for a service object of type 'set_float-response"
  "webots_ros/set_floatResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_float-response>)))
  "Returns md5sum for a message object of type '<set_float-response>"
  "0f0509b4253b73657cb37e93f4f2960c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_float-response)))
  "Returns md5sum for a message object of type 'set_float-response"
  "0f0509b4253b73657cb37e93f4f2960c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_float-response>)))
  "Returns full string definition for message of type '<set_float-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_float-response)))
  "Returns full string definition for message of type 'set_float-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_float-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_float-response>))
  "Converts a ROS message object to a list"
  (cl:list 'set_float-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'set_float)))
  'set_float-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'set_float)))
  'set_float-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_float)))
  "Returns string type for a service object of type '<set_float>"
  "webots_ros/set_float")