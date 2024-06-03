; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude display_draw_text-request.msg.html

(cl:defclass <display_draw_text-request> (roslisp-msg-protocol:ros-message)
  ((text
    :reader text
    :initarg :text
    :type cl:string
    :initform "")
   (x
    :reader x
    :initarg :x
    :type cl:integer
    :initform 0)
   (y
    :reader y
    :initarg :y
    :type cl:integer
    :initform 0))
)

(cl:defclass display_draw_text-request (<display_draw_text-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <display_draw_text-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'display_draw_text-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<display_draw_text-request> is deprecated: use webots_ros-srv:display_draw_text-request instead.")))

(cl:ensure-generic-function 'text-val :lambda-list '(m))
(cl:defmethod text-val ((m <display_draw_text-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:text-val is deprecated.  Use webots_ros-srv:text instead.")
  (text m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <display_draw_text-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:x-val is deprecated.  Use webots_ros-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <display_draw_text-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:y-val is deprecated.  Use webots_ros-srv:y instead.")
  (y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <display_draw_text-request>) ostream)
  "Serializes a message object of type '<display_draw_text-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'text))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'text))
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <display_draw_text-request>) istream)
  "Deserializes a message object of type '<display_draw_text-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'text) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'text) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<display_draw_text-request>)))
  "Returns string type for a service object of type '<display_draw_text-request>"
  "webots_ros/display_draw_textRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'display_draw_text-request)))
  "Returns string type for a service object of type 'display_draw_text-request"
  "webots_ros/display_draw_textRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<display_draw_text-request>)))
  "Returns md5sum for a message object of type '<display_draw_text-request>"
  "b82c6acdec67a202bbbbd0b3aba5aa0c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'display_draw_text-request)))
  "Returns md5sum for a message object of type 'display_draw_text-request"
  "b82c6acdec67a202bbbbd0b3aba5aa0c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<display_draw_text-request>)))
  "Returns full string definition for message of type '<display_draw_text-request>"
  (cl:format cl:nil "string text~%int32 x~%int32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'display_draw_text-request)))
  "Returns full string definition for message of type 'display_draw_text-request"
  (cl:format cl:nil "string text~%int32 x~%int32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <display_draw_text-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'text))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <display_draw_text-request>))
  "Converts a ROS message object to a list"
  (cl:list 'display_draw_text-request
    (cl:cons ':text (text msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
))
;//! \htmlinclude display_draw_text-response.msg.html

(cl:defclass <display_draw_text-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:fixnum
    :initform 0))
)

(cl:defclass display_draw_text-response (<display_draw_text-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <display_draw_text-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'display_draw_text-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<display_draw_text-response> is deprecated: use webots_ros-srv:display_draw_text-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <display_draw_text-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:success-val is deprecated.  Use webots_ros-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <display_draw_text-response>) ostream)
  "Serializes a message object of type '<display_draw_text-response>"
  (cl:let* ((signed (cl:slot-value msg 'success)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <display_draw_text-response>) istream)
  "Deserializes a message object of type '<display_draw_text-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'success) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<display_draw_text-response>)))
  "Returns string type for a service object of type '<display_draw_text-response>"
  "webots_ros/display_draw_textResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'display_draw_text-response)))
  "Returns string type for a service object of type 'display_draw_text-response"
  "webots_ros/display_draw_textResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<display_draw_text-response>)))
  "Returns md5sum for a message object of type '<display_draw_text-response>"
  "b82c6acdec67a202bbbbd0b3aba5aa0c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'display_draw_text-response)))
  "Returns md5sum for a message object of type 'display_draw_text-response"
  "b82c6acdec67a202bbbbd0b3aba5aa0c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<display_draw_text-response>)))
  "Returns full string definition for message of type '<display_draw_text-response>"
  (cl:format cl:nil "int8 success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'display_draw_text-response)))
  "Returns full string definition for message of type 'display_draw_text-response"
  (cl:format cl:nil "int8 success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <display_draw_text-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <display_draw_text-response>))
  "Converts a ROS message object to a list"
  (cl:list 'display_draw_text-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'display_draw_text)))
  'display_draw_text-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'display_draw_text)))
  'display_draw_text-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'display_draw_text)))
  "Returns string type for a service object of type '<display_draw_text>"
  "webots_ros/display_draw_text")