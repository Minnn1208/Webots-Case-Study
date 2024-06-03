; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude pen_set_ink_color-request.msg.html

(cl:defclass <pen_set_ink_color-request> (roslisp-msg-protocol:ros-message)
  ((color
    :reader color
    :initarg :color
    :type cl:integer
    :initform 0)
   (density
    :reader density
    :initarg :density
    :type cl:float
    :initform 0.0))
)

(cl:defclass pen_set_ink_color-request (<pen_set_ink_color-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <pen_set_ink_color-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'pen_set_ink_color-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<pen_set_ink_color-request> is deprecated: use webots_ros-srv:pen_set_ink_color-request instead.")))

(cl:ensure-generic-function 'color-val :lambda-list '(m))
(cl:defmethod color-val ((m <pen_set_ink_color-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:color-val is deprecated.  Use webots_ros-srv:color instead.")
  (color m))

(cl:ensure-generic-function 'density-val :lambda-list '(m))
(cl:defmethod density-val ((m <pen_set_ink_color-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:density-val is deprecated.  Use webots_ros-srv:density instead.")
  (density m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <pen_set_ink_color-request>) ostream)
  "Serializes a message object of type '<pen_set_ink_color-request>"
  (cl:let* ((signed (cl:slot-value msg 'color)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'density))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <pen_set_ink_color-request>) istream)
  "Deserializes a message object of type '<pen_set_ink_color-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'color) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'density) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<pen_set_ink_color-request>)))
  "Returns string type for a service object of type '<pen_set_ink_color-request>"
  "webots_ros/pen_set_ink_colorRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pen_set_ink_color-request)))
  "Returns string type for a service object of type 'pen_set_ink_color-request"
  "webots_ros/pen_set_ink_colorRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<pen_set_ink_color-request>)))
  "Returns md5sum for a message object of type '<pen_set_ink_color-request>"
  "7fde2080d14960fbc22200121684eabf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'pen_set_ink_color-request)))
  "Returns md5sum for a message object of type 'pen_set_ink_color-request"
  "7fde2080d14960fbc22200121684eabf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<pen_set_ink_color-request>)))
  "Returns full string definition for message of type '<pen_set_ink_color-request>"
  (cl:format cl:nil "int32 color~%float64 density~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'pen_set_ink_color-request)))
  "Returns full string definition for message of type 'pen_set_ink_color-request"
  (cl:format cl:nil "int32 color~%float64 density~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <pen_set_ink_color-request>))
  (cl:+ 0
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <pen_set_ink_color-request>))
  "Converts a ROS message object to a list"
  (cl:list 'pen_set_ink_color-request
    (cl:cons ':color (color msg))
    (cl:cons ':density (density msg))
))
;//! \htmlinclude pen_set_ink_color-response.msg.html

(cl:defclass <pen_set_ink_color-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:fixnum
    :initform 0))
)

(cl:defclass pen_set_ink_color-response (<pen_set_ink_color-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <pen_set_ink_color-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'pen_set_ink_color-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<pen_set_ink_color-response> is deprecated: use webots_ros-srv:pen_set_ink_color-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <pen_set_ink_color-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:success-val is deprecated.  Use webots_ros-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <pen_set_ink_color-response>) ostream)
  "Serializes a message object of type '<pen_set_ink_color-response>"
  (cl:let* ((signed (cl:slot-value msg 'success)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <pen_set_ink_color-response>) istream)
  "Deserializes a message object of type '<pen_set_ink_color-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'success) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<pen_set_ink_color-response>)))
  "Returns string type for a service object of type '<pen_set_ink_color-response>"
  "webots_ros/pen_set_ink_colorResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pen_set_ink_color-response)))
  "Returns string type for a service object of type 'pen_set_ink_color-response"
  "webots_ros/pen_set_ink_colorResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<pen_set_ink_color-response>)))
  "Returns md5sum for a message object of type '<pen_set_ink_color-response>"
  "7fde2080d14960fbc22200121684eabf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'pen_set_ink_color-response)))
  "Returns md5sum for a message object of type 'pen_set_ink_color-response"
  "7fde2080d14960fbc22200121684eabf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<pen_set_ink_color-response>)))
  "Returns full string definition for message of type '<pen_set_ink_color-response>"
  (cl:format cl:nil "int8 success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'pen_set_ink_color-response)))
  "Returns full string definition for message of type 'pen_set_ink_color-response"
  (cl:format cl:nil "int8 success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <pen_set_ink_color-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <pen_set_ink_color-response>))
  "Converts a ROS message object to a list"
  (cl:list 'pen_set_ink_color-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'pen_set_ink_color)))
  'pen_set_ink_color-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'pen_set_ink_color)))
  'pen_set_ink_color-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pen_set_ink_color)))
  "Returns string type for a service object of type '<pen_set_ink_color>"
  "webots_ros/pen_set_ink_color")