; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude display_image_copy-request.msg.html

(cl:defclass <display_image_copy-request> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:integer
    :initform 0)
   (y
    :reader y
    :initarg :y
    :type cl:integer
    :initform 0)
   (width
    :reader width
    :initarg :width
    :type cl:integer
    :initform 0)
   (height
    :reader height
    :initarg :height
    :type cl:integer
    :initform 0))
)

(cl:defclass display_image_copy-request (<display_image_copy-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <display_image_copy-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'display_image_copy-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<display_image_copy-request> is deprecated: use webots_ros-srv:display_image_copy-request instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <display_image_copy-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:x-val is deprecated.  Use webots_ros-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <display_image_copy-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:y-val is deprecated.  Use webots_ros-srv:y instead.")
  (y m))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <display_image_copy-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:width-val is deprecated.  Use webots_ros-srv:width instead.")
  (width m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <display_image_copy-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:height-val is deprecated.  Use webots_ros-srv:height instead.")
  (height m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <display_image_copy-request>) ostream)
  "Serializes a message object of type '<display_image_copy-request>"
  (cl:let* ((signed (cl:slot-value msg 'x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'width)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'height)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <display_image_copy-request>) istream)
  "Deserializes a message object of type '<display_image_copy-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'x) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'y) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'width) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'height) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<display_image_copy-request>)))
  "Returns string type for a service object of type '<display_image_copy-request>"
  "webots_ros/display_image_copyRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'display_image_copy-request)))
  "Returns string type for a service object of type 'display_image_copy-request"
  "webots_ros/display_image_copyRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<display_image_copy-request>)))
  "Returns md5sum for a message object of type '<display_image_copy-request>"
  "631fd4626b960a90b6a634bededf2cea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'display_image_copy-request)))
  "Returns md5sum for a message object of type 'display_image_copy-request"
  "631fd4626b960a90b6a634bededf2cea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<display_image_copy-request>)))
  "Returns full string definition for message of type '<display_image_copy-request>"
  (cl:format cl:nil "int32 x~%int32 y~%int32 width~%int32 height~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'display_image_copy-request)))
  "Returns full string definition for message of type 'display_image_copy-request"
  (cl:format cl:nil "int32 x~%int32 y~%int32 width~%int32 height~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <display_image_copy-request>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <display_image_copy-request>))
  "Converts a ROS message object to a list"
  (cl:list 'display_image_copy-request
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':width (width msg))
    (cl:cons ':height (height msg))
))
;//! \htmlinclude display_image_copy-response.msg.html

(cl:defclass <display_image_copy-response> (roslisp-msg-protocol:ros-message)
  ((ir
    :reader ir
    :initarg :ir
    :type cl:integer
    :initform 0))
)

(cl:defclass display_image_copy-response (<display_image_copy-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <display_image_copy-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'display_image_copy-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<display_image_copy-response> is deprecated: use webots_ros-srv:display_image_copy-response instead.")))

(cl:ensure-generic-function 'ir-val :lambda-list '(m))
(cl:defmethod ir-val ((m <display_image_copy-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:ir-val is deprecated.  Use webots_ros-srv:ir instead.")
  (ir m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <display_image_copy-response>) ostream)
  "Serializes a message object of type '<display_image_copy-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ir)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ir)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ir)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ir)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'ir)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'ir)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'ir)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'ir)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <display_image_copy-response>) istream)
  "Deserializes a message object of type '<display_image_copy-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ir)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ir)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ir)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ir)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'ir)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'ir)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'ir)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'ir)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<display_image_copy-response>)))
  "Returns string type for a service object of type '<display_image_copy-response>"
  "webots_ros/display_image_copyResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'display_image_copy-response)))
  "Returns string type for a service object of type 'display_image_copy-response"
  "webots_ros/display_image_copyResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<display_image_copy-response>)))
  "Returns md5sum for a message object of type '<display_image_copy-response>"
  "631fd4626b960a90b6a634bededf2cea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'display_image_copy-response)))
  "Returns md5sum for a message object of type 'display_image_copy-response"
  "631fd4626b960a90b6a634bededf2cea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<display_image_copy-response>)))
  "Returns full string definition for message of type '<display_image_copy-response>"
  (cl:format cl:nil "uint64 ir~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'display_image_copy-response)))
  "Returns full string definition for message of type 'display_image_copy-response"
  (cl:format cl:nil "uint64 ir~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <display_image_copy-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <display_image_copy-response>))
  "Converts a ROS message object to a list"
  (cl:list 'display_image_copy-response
    (cl:cons ':ir (ir msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'display_image_copy)))
  'display_image_copy-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'display_image_copy)))
  'display_image_copy-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'display_image_copy)))
  "Returns string type for a service object of type '<display_image_copy>"
  "webots_ros/display_image_copy")