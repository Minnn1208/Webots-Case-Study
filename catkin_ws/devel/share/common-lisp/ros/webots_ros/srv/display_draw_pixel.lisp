; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude display_draw_pixel-request.msg.html

(cl:defclass <display_draw_pixel-request> (roslisp-msg-protocol:ros-message)
  ((x1
    :reader x1
    :initarg :x1
    :type cl:integer
    :initform 0)
   (y1
    :reader y1
    :initarg :y1
    :type cl:integer
    :initform 0))
)

(cl:defclass display_draw_pixel-request (<display_draw_pixel-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <display_draw_pixel-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'display_draw_pixel-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<display_draw_pixel-request> is deprecated: use webots_ros-srv:display_draw_pixel-request instead.")))

(cl:ensure-generic-function 'x1-val :lambda-list '(m))
(cl:defmethod x1-val ((m <display_draw_pixel-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:x1-val is deprecated.  Use webots_ros-srv:x1 instead.")
  (x1 m))

(cl:ensure-generic-function 'y1-val :lambda-list '(m))
(cl:defmethod y1-val ((m <display_draw_pixel-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:y1-val is deprecated.  Use webots_ros-srv:y1 instead.")
  (y1 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <display_draw_pixel-request>) ostream)
  "Serializes a message object of type '<display_draw_pixel-request>"
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <display_draw_pixel-request>) istream)
  "Deserializes a message object of type '<display_draw_pixel-request>"
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<display_draw_pixel-request>)))
  "Returns string type for a service object of type '<display_draw_pixel-request>"
  "webots_ros/display_draw_pixelRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'display_draw_pixel-request)))
  "Returns string type for a service object of type 'display_draw_pixel-request"
  "webots_ros/display_draw_pixelRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<display_draw_pixel-request>)))
  "Returns md5sum for a message object of type '<display_draw_pixel-request>"
  "e8e87fb7b87ab83a24bea771b7fc11df")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'display_draw_pixel-request)))
  "Returns md5sum for a message object of type 'display_draw_pixel-request"
  "e8e87fb7b87ab83a24bea771b7fc11df")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<display_draw_pixel-request>)))
  "Returns full string definition for message of type '<display_draw_pixel-request>"
  (cl:format cl:nil "int32 x1~%int32 y1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'display_draw_pixel-request)))
  "Returns full string definition for message of type 'display_draw_pixel-request"
  (cl:format cl:nil "int32 x1~%int32 y1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <display_draw_pixel-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <display_draw_pixel-request>))
  "Converts a ROS message object to a list"
  (cl:list 'display_draw_pixel-request
    (cl:cons ':x1 (x1 msg))
    (cl:cons ':y1 (y1 msg))
))
;//! \htmlinclude display_draw_pixel-response.msg.html

(cl:defclass <display_draw_pixel-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:fixnum
    :initform 0))
)

(cl:defclass display_draw_pixel-response (<display_draw_pixel-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <display_draw_pixel-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'display_draw_pixel-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<display_draw_pixel-response> is deprecated: use webots_ros-srv:display_draw_pixel-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <display_draw_pixel-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:success-val is deprecated.  Use webots_ros-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <display_draw_pixel-response>) ostream)
  "Serializes a message object of type '<display_draw_pixel-response>"
  (cl:let* ((signed (cl:slot-value msg 'success)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <display_draw_pixel-response>) istream)
  "Deserializes a message object of type '<display_draw_pixel-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'success) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<display_draw_pixel-response>)))
  "Returns string type for a service object of type '<display_draw_pixel-response>"
  "webots_ros/display_draw_pixelResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'display_draw_pixel-response)))
  "Returns string type for a service object of type 'display_draw_pixel-response"
  "webots_ros/display_draw_pixelResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<display_draw_pixel-response>)))
  "Returns md5sum for a message object of type '<display_draw_pixel-response>"
  "e8e87fb7b87ab83a24bea771b7fc11df")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'display_draw_pixel-response)))
  "Returns md5sum for a message object of type 'display_draw_pixel-response"
  "e8e87fb7b87ab83a24bea771b7fc11df")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<display_draw_pixel-response>)))
  "Returns full string definition for message of type '<display_draw_pixel-response>"
  (cl:format cl:nil "int8 success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'display_draw_pixel-response)))
  "Returns full string definition for message of type 'display_draw_pixel-response"
  (cl:format cl:nil "int8 success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <display_draw_pixel-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <display_draw_pixel-response>))
  "Converts a ROS message object to a list"
  (cl:list 'display_draw_pixel-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'display_draw_pixel)))
  'display_draw_pixel-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'display_draw_pixel)))
  'display_draw_pixel-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'display_draw_pixel)))
  "Returns string type for a service object of type '<display_draw_pixel>"
  "webots_ros/display_draw_pixel")