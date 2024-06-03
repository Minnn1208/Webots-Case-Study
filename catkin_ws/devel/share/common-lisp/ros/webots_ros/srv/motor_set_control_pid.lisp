; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude motor_set_control_pid-request.msg.html

(cl:defclass <motor_set_control_pid-request> (roslisp-msg-protocol:ros-message)
  ((controlp
    :reader controlp
    :initarg :controlp
    :type cl:float
    :initform 0.0)
   (controli
    :reader controli
    :initarg :controli
    :type cl:float
    :initform 0.0)
   (controld
    :reader controld
    :initarg :controld
    :type cl:float
    :initform 0.0))
)

(cl:defclass motor_set_control_pid-request (<motor_set_control_pid-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <motor_set_control_pid-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'motor_set_control_pid-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<motor_set_control_pid-request> is deprecated: use webots_ros-srv:motor_set_control_pid-request instead.")))

(cl:ensure-generic-function 'controlp-val :lambda-list '(m))
(cl:defmethod controlp-val ((m <motor_set_control_pid-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:controlp-val is deprecated.  Use webots_ros-srv:controlp instead.")
  (controlp m))

(cl:ensure-generic-function 'controli-val :lambda-list '(m))
(cl:defmethod controli-val ((m <motor_set_control_pid-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:controli-val is deprecated.  Use webots_ros-srv:controli instead.")
  (controli m))

(cl:ensure-generic-function 'controld-val :lambda-list '(m))
(cl:defmethod controld-val ((m <motor_set_control_pid-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:controld-val is deprecated.  Use webots_ros-srv:controld instead.")
  (controld m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <motor_set_control_pid-request>) ostream)
  "Serializes a message object of type '<motor_set_control_pid-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'controlp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'controli))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'controld))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <motor_set_control_pid-request>) istream)
  "Deserializes a message object of type '<motor_set_control_pid-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'controlp) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'controli) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'controld) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<motor_set_control_pid-request>)))
  "Returns string type for a service object of type '<motor_set_control_pid-request>"
  "webots_ros/motor_set_control_pidRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'motor_set_control_pid-request)))
  "Returns string type for a service object of type 'motor_set_control_pid-request"
  "webots_ros/motor_set_control_pidRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<motor_set_control_pid-request>)))
  "Returns md5sum for a message object of type '<motor_set_control_pid-request>"
  "712b4e401e3c9cbb098cd0435a9a13d3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'motor_set_control_pid-request)))
  "Returns md5sum for a message object of type 'motor_set_control_pid-request"
  "712b4e401e3c9cbb098cd0435a9a13d3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<motor_set_control_pid-request>)))
  "Returns full string definition for message of type '<motor_set_control_pid-request>"
  (cl:format cl:nil "float64 controlp~%float64 controli~%float64 controld~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'motor_set_control_pid-request)))
  "Returns full string definition for message of type 'motor_set_control_pid-request"
  (cl:format cl:nil "float64 controlp~%float64 controli~%float64 controld~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <motor_set_control_pid-request>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <motor_set_control_pid-request>))
  "Converts a ROS message object to a list"
  (cl:list 'motor_set_control_pid-request
    (cl:cons ':controlp (controlp msg))
    (cl:cons ':controli (controli msg))
    (cl:cons ':controld (controld msg))
))
;//! \htmlinclude motor_set_control_pid-response.msg.html

(cl:defclass <motor_set_control_pid-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:fixnum
    :initform 0))
)

(cl:defclass motor_set_control_pid-response (<motor_set_control_pid-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <motor_set_control_pid-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'motor_set_control_pid-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<motor_set_control_pid-response> is deprecated: use webots_ros-srv:motor_set_control_pid-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <motor_set_control_pid-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:success-val is deprecated.  Use webots_ros-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <motor_set_control_pid-response>) ostream)
  "Serializes a message object of type '<motor_set_control_pid-response>"
  (cl:let* ((signed (cl:slot-value msg 'success)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <motor_set_control_pid-response>) istream)
  "Deserializes a message object of type '<motor_set_control_pid-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'success) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<motor_set_control_pid-response>)))
  "Returns string type for a service object of type '<motor_set_control_pid-response>"
  "webots_ros/motor_set_control_pidResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'motor_set_control_pid-response)))
  "Returns string type for a service object of type 'motor_set_control_pid-response"
  "webots_ros/motor_set_control_pidResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<motor_set_control_pid-response>)))
  "Returns md5sum for a message object of type '<motor_set_control_pid-response>"
  "712b4e401e3c9cbb098cd0435a9a13d3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'motor_set_control_pid-response)))
  "Returns md5sum for a message object of type 'motor_set_control_pid-response"
  "712b4e401e3c9cbb098cd0435a9a13d3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<motor_set_control_pid-response>)))
  "Returns full string definition for message of type '<motor_set_control_pid-response>"
  (cl:format cl:nil "int8 success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'motor_set_control_pid-response)))
  "Returns full string definition for message of type 'motor_set_control_pid-response"
  (cl:format cl:nil "int8 success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <motor_set_control_pid-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <motor_set_control_pid-response>))
  "Converts a ROS message object to a list"
  (cl:list 'motor_set_control_pid-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'motor_set_control_pid)))
  'motor_set_control_pid-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'motor_set_control_pid)))
  'motor_set_control_pid-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'motor_set_control_pid)))
  "Returns string type for a service object of type '<motor_set_control_pid>"
  "webots_ros/motor_set_control_pid")