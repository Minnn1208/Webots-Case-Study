; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude display_set_font-request.msg.html

(cl:defclass <display_set_font-request> (roslisp-msg-protocol:ros-message)
  ((font
    :reader font
    :initarg :font
    :type cl:string
    :initform "")
   (size
    :reader size
    :initarg :size
    :type cl:integer
    :initform 0)
   (antiAliasing
    :reader antiAliasing
    :initarg :antiAliasing
    :type cl:fixnum
    :initform 0))
)

(cl:defclass display_set_font-request (<display_set_font-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <display_set_font-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'display_set_font-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<display_set_font-request> is deprecated: use webots_ros-srv:display_set_font-request instead.")))

(cl:ensure-generic-function 'font-val :lambda-list '(m))
(cl:defmethod font-val ((m <display_set_font-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:font-val is deprecated.  Use webots_ros-srv:font instead.")
  (font m))

(cl:ensure-generic-function 'size-val :lambda-list '(m))
(cl:defmethod size-val ((m <display_set_font-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:size-val is deprecated.  Use webots_ros-srv:size instead.")
  (size m))

(cl:ensure-generic-function 'antiAliasing-val :lambda-list '(m))
(cl:defmethod antiAliasing-val ((m <display_set_font-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:antiAliasing-val is deprecated.  Use webots_ros-srv:antiAliasing instead.")
  (antiAliasing m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <display_set_font-request>) ostream)
  "Serializes a message object of type '<display_set_font-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'font))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'font))
  (cl:let* ((signed (cl:slot-value msg 'size)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'antiAliasing)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <display_set_font-request>) istream)
  "Deserializes a message object of type '<display_set_font-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'font) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'font) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'size) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'antiAliasing)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<display_set_font-request>)))
  "Returns string type for a service object of type '<display_set_font-request>"
  "webots_ros/display_set_fontRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'display_set_font-request)))
  "Returns string type for a service object of type 'display_set_font-request"
  "webots_ros/display_set_fontRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<display_set_font-request>)))
  "Returns md5sum for a message object of type '<display_set_font-request>"
  "78ff6c1f16d92deedcc7d16bd2cddfbf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'display_set_font-request)))
  "Returns md5sum for a message object of type 'display_set_font-request"
  "78ff6c1f16d92deedcc7d16bd2cddfbf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<display_set_font-request>)))
  "Returns full string definition for message of type '<display_set_font-request>"
  (cl:format cl:nil "string font~%int32 size~%uint8 antiAliasing~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'display_set_font-request)))
  "Returns full string definition for message of type 'display_set_font-request"
  (cl:format cl:nil "string font~%int32 size~%uint8 antiAliasing~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <display_set_font-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'font))
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <display_set_font-request>))
  "Converts a ROS message object to a list"
  (cl:list 'display_set_font-request
    (cl:cons ':font (font msg))
    (cl:cons ':size (size msg))
    (cl:cons ':antiAliasing (antiAliasing msg))
))
;//! \htmlinclude display_set_font-response.msg.html

(cl:defclass <display_set_font-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:fixnum
    :initform 0))
)

(cl:defclass display_set_font-response (<display_set_font-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <display_set_font-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'display_set_font-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<display_set_font-response> is deprecated: use webots_ros-srv:display_set_font-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <display_set_font-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:success-val is deprecated.  Use webots_ros-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <display_set_font-response>) ostream)
  "Serializes a message object of type '<display_set_font-response>"
  (cl:let* ((signed (cl:slot-value msg 'success)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <display_set_font-response>) istream)
  "Deserializes a message object of type '<display_set_font-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'success) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<display_set_font-response>)))
  "Returns string type for a service object of type '<display_set_font-response>"
  "webots_ros/display_set_fontResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'display_set_font-response)))
  "Returns string type for a service object of type 'display_set_font-response"
  "webots_ros/display_set_fontResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<display_set_font-response>)))
  "Returns md5sum for a message object of type '<display_set_font-response>"
  "78ff6c1f16d92deedcc7d16bd2cddfbf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'display_set_font-response)))
  "Returns md5sum for a message object of type 'display_set_font-response"
  "78ff6c1f16d92deedcc7d16bd2cddfbf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<display_set_font-response>)))
  "Returns full string definition for message of type '<display_set_font-response>"
  (cl:format cl:nil "int8 success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'display_set_font-response)))
  "Returns full string definition for message of type 'display_set_font-response"
  (cl:format cl:nil "int8 success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <display_set_font-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <display_set_font-response>))
  "Converts a ROS message object to a list"
  (cl:list 'display_set_font-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'display_set_font)))
  'display_set_font-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'display_set_font)))
  'display_set_font-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'display_set_font)))
  "Returns string type for a service object of type '<display_set_font>"
  "webots_ros/display_set_font")