; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude set_int-request.msg.html

(cl:defclass <set_int-request> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:integer
    :initform 0))
)

(cl:defclass set_int-request (<set_int-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_int-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_int-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<set_int-request> is deprecated: use webots_ros-srv:set_int-request instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <set_int-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:value-val is deprecated.  Use webots_ros-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_int-request>) ostream)
  "Serializes a message object of type '<set_int-request>"
  (cl:let* ((signed (cl:slot-value msg 'value)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_int-request>) istream)
  "Deserializes a message object of type '<set_int-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_int-request>)))
  "Returns string type for a service object of type '<set_int-request>"
  "webots_ros/set_intRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_int-request)))
  "Returns string type for a service object of type 'set_int-request"
  "webots_ros/set_intRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_int-request>)))
  "Returns md5sum for a message object of type '<set_int-request>"
  "bc437afb45673379bdb9f299f9cbbc9e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_int-request)))
  "Returns md5sum for a message object of type 'set_int-request"
  "bc437afb45673379bdb9f299f9cbbc9e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_int-request>)))
  "Returns full string definition for message of type '<set_int-request>"
  (cl:format cl:nil "int32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_int-request)))
  "Returns full string definition for message of type 'set_int-request"
  (cl:format cl:nil "int32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_int-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_int-request>))
  "Converts a ROS message object to a list"
  (cl:list 'set_int-request
    (cl:cons ':value (value msg))
))
;//! \htmlinclude set_int-response.msg.html

(cl:defclass <set_int-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass set_int-response (<set_int-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_int-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_int-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<set_int-response> is deprecated: use webots_ros-srv:set_int-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <set_int-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:success-val is deprecated.  Use webots_ros-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_int-response>) ostream)
  "Serializes a message object of type '<set_int-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_int-response>) istream)
  "Deserializes a message object of type '<set_int-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_int-response>)))
  "Returns string type for a service object of type '<set_int-response>"
  "webots_ros/set_intResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_int-response)))
  "Returns string type for a service object of type 'set_int-response"
  "webots_ros/set_intResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_int-response>)))
  "Returns md5sum for a message object of type '<set_int-response>"
  "bc437afb45673379bdb9f299f9cbbc9e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_int-response)))
  "Returns md5sum for a message object of type 'set_int-response"
  "bc437afb45673379bdb9f299f9cbbc9e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_int-response>)))
  "Returns full string definition for message of type '<set_int-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_int-response)))
  "Returns full string definition for message of type 'set_int-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_int-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_int-response>))
  "Converts a ROS message object to a list"
  (cl:list 'set_int-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'set_int)))
  'set_int-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'set_int)))
  'set_int-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_int)))
  "Returns string type for a service object of type '<set_int>"
  "webots_ros/set_int")