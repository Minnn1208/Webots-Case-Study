; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude display_draw_oval-request.msg.html

(cl:defclass <display_draw_oval-request> (roslisp-msg-protocol:ros-message)
  ((cx
    :reader cx
    :initarg :cx
    :type cl:integer
    :initform 0)
   (cy
    :reader cy
    :initarg :cy
    :type cl:integer
    :initform 0)
   (a
    :reader a
    :initarg :a
    :type cl:integer
    :initform 0)
   (b
    :reader b
    :initarg :b
    :type cl:integer
    :initform 0))
)

(cl:defclass display_draw_oval-request (<display_draw_oval-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <display_draw_oval-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'display_draw_oval-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<display_draw_oval-request> is deprecated: use webots_ros-srv:display_draw_oval-request instead.")))

(cl:ensure-generic-function 'cx-val :lambda-list '(m))
(cl:defmethod cx-val ((m <display_draw_oval-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:cx-val is deprecated.  Use webots_ros-srv:cx instead.")
  (cx m))

(cl:ensure-generic-function 'cy-val :lambda-list '(m))
(cl:defmethod cy-val ((m <display_draw_oval-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:cy-val is deprecated.  Use webots_ros-srv:cy instead.")
  (cy m))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <display_draw_oval-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:a-val is deprecated.  Use webots_ros-srv:a instead.")
  (a m))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <display_draw_oval-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:b-val is deprecated.  Use webots_ros-srv:b instead.")
  (b m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <display_draw_oval-request>) ostream)
  "Serializes a message object of type '<display_draw_oval-request>"
  (cl:let* ((signed (cl:slot-value msg 'cx)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'cy)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'a)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'b)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <display_draw_oval-request>) istream)
  "Deserializes a message object of type '<display_draw_oval-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cx) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cy) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'a) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'b) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<display_draw_oval-request>)))
  "Returns string type for a service object of type '<display_draw_oval-request>"
  "webots_ros/display_draw_ovalRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'display_draw_oval-request)))
  "Returns string type for a service object of type 'display_draw_oval-request"
  "webots_ros/display_draw_ovalRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<display_draw_oval-request>)))
  "Returns md5sum for a message object of type '<display_draw_oval-request>"
  "257804d9f2e4639bae589e190802d29f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'display_draw_oval-request)))
  "Returns md5sum for a message object of type 'display_draw_oval-request"
  "257804d9f2e4639bae589e190802d29f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<display_draw_oval-request>)))
  "Returns full string definition for message of type '<display_draw_oval-request>"
  (cl:format cl:nil "int32 cx~%int32 cy~%int32 a~%int32 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'display_draw_oval-request)))
  "Returns full string definition for message of type 'display_draw_oval-request"
  (cl:format cl:nil "int32 cx~%int32 cy~%int32 a~%int32 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <display_draw_oval-request>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <display_draw_oval-request>))
  "Converts a ROS message object to a list"
  (cl:list 'display_draw_oval-request
    (cl:cons ':cx (cx msg))
    (cl:cons ':cy (cy msg))
    (cl:cons ':a (a msg))
    (cl:cons ':b (b msg))
))
;//! \htmlinclude display_draw_oval-response.msg.html

(cl:defclass <display_draw_oval-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:fixnum
    :initform 0))
)

(cl:defclass display_draw_oval-response (<display_draw_oval-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <display_draw_oval-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'display_draw_oval-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<display_draw_oval-response> is deprecated: use webots_ros-srv:display_draw_oval-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <display_draw_oval-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:success-val is deprecated.  Use webots_ros-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <display_draw_oval-response>) ostream)
  "Serializes a message object of type '<display_draw_oval-response>"
  (cl:let* ((signed (cl:slot-value msg 'success)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <display_draw_oval-response>) istream)
  "Deserializes a message object of type '<display_draw_oval-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'success) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<display_draw_oval-response>)))
  "Returns string type for a service object of type '<display_draw_oval-response>"
  "webots_ros/display_draw_ovalResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'display_draw_oval-response)))
  "Returns string type for a service object of type 'display_draw_oval-response"
  "webots_ros/display_draw_ovalResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<display_draw_oval-response>)))
  "Returns md5sum for a message object of type '<display_draw_oval-response>"
  "257804d9f2e4639bae589e190802d29f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'display_draw_oval-response)))
  "Returns md5sum for a message object of type 'display_draw_oval-response"
  "257804d9f2e4639bae589e190802d29f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<display_draw_oval-response>)))
  "Returns full string definition for message of type '<display_draw_oval-response>"
  (cl:format cl:nil "int8 success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'display_draw_oval-response)))
  "Returns full string definition for message of type 'display_draw_oval-response"
  (cl:format cl:nil "int8 success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <display_draw_oval-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <display_draw_oval-response>))
  "Converts a ROS message object to a list"
  (cl:list 'display_draw_oval-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'display_draw_oval)))
  'display_draw_oval-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'display_draw_oval)))
  'display_draw_oval-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'display_draw_oval)))
  "Returns string type for a service object of type '<display_draw_oval>"
  "webots_ros/display_draw_oval")