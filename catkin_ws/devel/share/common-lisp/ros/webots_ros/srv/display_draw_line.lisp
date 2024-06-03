; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude display_draw_line-request.msg.html

(cl:defclass <display_draw_line-request> (roslisp-msg-protocol:ros-message)
  ((x1
    :reader x1
    :initarg :x1
    :type cl:integer
    :initform 0)
   (y1
    :reader y1
    :initarg :y1
    :type cl:integer
    :initform 0)
   (x2
    :reader x2
    :initarg :x2
    :type cl:integer
    :initform 0)
   (y2
    :reader y2
    :initarg :y2
    :type cl:integer
    :initform 0))
)

(cl:defclass display_draw_line-request (<display_draw_line-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <display_draw_line-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'display_draw_line-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<display_draw_line-request> is deprecated: use webots_ros-srv:display_draw_line-request instead.")))

(cl:ensure-generic-function 'x1-val :lambda-list '(m))
(cl:defmethod x1-val ((m <display_draw_line-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:x1-val is deprecated.  Use webots_ros-srv:x1 instead.")
  (x1 m))

(cl:ensure-generic-function 'y1-val :lambda-list '(m))
(cl:defmethod y1-val ((m <display_draw_line-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:y1-val is deprecated.  Use webots_ros-srv:y1 instead.")
  (y1 m))

(cl:ensure-generic-function 'x2-val :lambda-list '(m))
(cl:defmethod x2-val ((m <display_draw_line-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:x2-val is deprecated.  Use webots_ros-srv:x2 instead.")
  (x2 m))

(cl:ensure-generic-function 'y2-val :lambda-list '(m))
(cl:defmethod y2-val ((m <display_draw_line-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:y2-val is deprecated.  Use webots_ros-srv:y2 instead.")
  (y2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <display_draw_line-request>) ostream)
  "Serializes a message object of type '<display_draw_line-request>"
  (cl:let* ((signed (cl:slot-value msg 'x1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'y1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'x2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'y2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <display_draw_line-request>) istream)
  "Deserializes a message object of type '<display_draw_line-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'x1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'y1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'x2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'y2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<display_draw_line-request>)))
  "Returns string type for a service object of type '<display_draw_line-request>"
  "webots_ros/display_draw_lineRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'display_draw_line-request)))
  "Returns string type for a service object of type 'display_draw_line-request"
  "webots_ros/display_draw_lineRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<display_draw_line-request>)))
  "Returns md5sum for a message object of type '<display_draw_line-request>"
  "67df0d281bcb1579baa48d1202f84ebe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'display_draw_line-request)))
  "Returns md5sum for a message object of type 'display_draw_line-request"
  "67df0d281bcb1579baa48d1202f84ebe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<display_draw_line-request>)))
  "Returns full string definition for message of type '<display_draw_line-request>"
  (cl:format cl:nil "int32 x1~%int32 y1~%int32 x2~%int32 y2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'display_draw_line-request)))
  "Returns full string definition for message of type 'display_draw_line-request"
  (cl:format cl:nil "int32 x1~%int32 y1~%int32 x2~%int32 y2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <display_draw_line-request>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <display_draw_line-request>))
  "Converts a ROS message object to a list"
  (cl:list 'display_draw_line-request
    (cl:cons ':x1 (x1 msg))
    (cl:cons ':y1 (y1 msg))
    (cl:cons ':x2 (x2 msg))
    (cl:cons ':y2 (y2 msg))
))
;//! \htmlinclude display_draw_line-response.msg.html

(cl:defclass <display_draw_line-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:fixnum
    :initform 0))
)

(cl:defclass display_draw_line-response (<display_draw_line-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <display_draw_line-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'display_draw_line-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<display_draw_line-response> is deprecated: use webots_ros-srv:display_draw_line-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <display_draw_line-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:success-val is deprecated.  Use webots_ros-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <display_draw_line-response>) ostream)
  "Serializes a message object of type '<display_draw_line-response>"
  (cl:let* ((signed (cl:slot-value msg 'success)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <display_draw_line-response>) istream)
  "Deserializes a message object of type '<display_draw_line-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'success) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<display_draw_line-response>)))
  "Returns string type for a service object of type '<display_draw_line-response>"
  "webots_ros/display_draw_lineResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'display_draw_line-response)))
  "Returns string type for a service object of type 'display_draw_line-response"
  "webots_ros/display_draw_lineResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<display_draw_line-response>)))
  "Returns md5sum for a message object of type '<display_draw_line-response>"
  "67df0d281bcb1579baa48d1202f84ebe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'display_draw_line-response)))
  "Returns md5sum for a message object of type 'display_draw_line-response"
  "67df0d281bcb1579baa48d1202f84ebe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<display_draw_line-response>)))
  "Returns full string definition for message of type '<display_draw_line-response>"
  (cl:format cl:nil "int8 success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'display_draw_line-response)))
  "Returns full string definition for message of type 'display_draw_line-response"
  (cl:format cl:nil "int8 success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <display_draw_line-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <display_draw_line-response>))
  "Converts a ROS message object to a list"
  (cl:list 'display_draw_line-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'display_draw_line)))
  'display_draw_line-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'display_draw_line)))
  'display_draw_line-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'display_draw_line)))
  "Returns string type for a service object of type '<display_draw_line>"
  "webots_ros/display_draw_line")