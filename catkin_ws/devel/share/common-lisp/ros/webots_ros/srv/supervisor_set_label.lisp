; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude supervisor_set_label-request.msg.html

(cl:defclass <supervisor_set_label-request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (label
    :reader label
    :initarg :label
    :type cl:string
    :initform "")
   (xpos
    :reader xpos
    :initarg :xpos
    :type cl:float
    :initform 0.0)
   (ypos
    :reader ypos
    :initarg :ypos
    :type cl:float
    :initform 0.0)
   (size
    :reader size
    :initarg :size
    :type cl:float
    :initform 0.0)
   (color
    :reader color
    :initarg :color
    :type cl:integer
    :initform 0)
   (transparency
    :reader transparency
    :initarg :transparency
    :type cl:float
    :initform 0.0)
   (font
    :reader font
    :initarg :font
    :type cl:string
    :initform ""))
)

(cl:defclass supervisor_set_label-request (<supervisor_set_label-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <supervisor_set_label-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'supervisor_set_label-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<supervisor_set_label-request> is deprecated: use webots_ros-srv:supervisor_set_label-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <supervisor_set_label-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:id-val is deprecated.  Use webots_ros-srv:id instead.")
  (id m))

(cl:ensure-generic-function 'label-val :lambda-list '(m))
(cl:defmethod label-val ((m <supervisor_set_label-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:label-val is deprecated.  Use webots_ros-srv:label instead.")
  (label m))

(cl:ensure-generic-function 'xpos-val :lambda-list '(m))
(cl:defmethod xpos-val ((m <supervisor_set_label-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:xpos-val is deprecated.  Use webots_ros-srv:xpos instead.")
  (xpos m))

(cl:ensure-generic-function 'ypos-val :lambda-list '(m))
(cl:defmethod ypos-val ((m <supervisor_set_label-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:ypos-val is deprecated.  Use webots_ros-srv:ypos instead.")
  (ypos m))

(cl:ensure-generic-function 'size-val :lambda-list '(m))
(cl:defmethod size-val ((m <supervisor_set_label-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:size-val is deprecated.  Use webots_ros-srv:size instead.")
  (size m))

(cl:ensure-generic-function 'color-val :lambda-list '(m))
(cl:defmethod color-val ((m <supervisor_set_label-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:color-val is deprecated.  Use webots_ros-srv:color instead.")
  (color m))

(cl:ensure-generic-function 'transparency-val :lambda-list '(m))
(cl:defmethod transparency-val ((m <supervisor_set_label-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:transparency-val is deprecated.  Use webots_ros-srv:transparency instead.")
  (transparency m))

(cl:ensure-generic-function 'font-val :lambda-list '(m))
(cl:defmethod font-val ((m <supervisor_set_label-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:font-val is deprecated.  Use webots_ros-srv:font instead.")
  (font m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <supervisor_set_label-request>) ostream)
  "Serializes a message object of type '<supervisor_set_label-request>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'label))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'label))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'xpos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ypos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'size))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'color)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'transparency))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'font))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'font))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <supervisor_set_label-request>) istream)
  "Deserializes a message object of type '<supervisor_set_label-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'label) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'label) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'xpos) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ypos) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'size) (roslisp-utils:decode-double-float-bits bits)))
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
    (cl:setf (cl:slot-value msg 'transparency) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'font) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'font) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<supervisor_set_label-request>)))
  "Returns string type for a service object of type '<supervisor_set_label-request>"
  "webots_ros/supervisor_set_labelRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'supervisor_set_label-request)))
  "Returns string type for a service object of type 'supervisor_set_label-request"
  "webots_ros/supervisor_set_labelRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<supervisor_set_label-request>)))
  "Returns md5sum for a message object of type '<supervisor_set_label-request>"
  "5ee78a04723ef11d3847c8d8c557058c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'supervisor_set_label-request)))
  "Returns md5sum for a message object of type 'supervisor_set_label-request"
  "5ee78a04723ef11d3847c8d8c557058c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<supervisor_set_label-request>)))
  "Returns full string definition for message of type '<supervisor_set_label-request>"
  (cl:format cl:nil "int32 id~%string label~%float64 xpos~%float64 ypos~%float64 size~%int32 color~%float64 transparency~%string font~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'supervisor_set_label-request)))
  "Returns full string definition for message of type 'supervisor_set_label-request"
  (cl:format cl:nil "int32 id~%string label~%float64 xpos~%float64 ypos~%float64 size~%int32 color~%float64 transparency~%string font~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <supervisor_set_label-request>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'label))
     8
     8
     8
     4
     8
     4 (cl:length (cl:slot-value msg 'font))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <supervisor_set_label-request>))
  "Converts a ROS message object to a list"
  (cl:list 'supervisor_set_label-request
    (cl:cons ':id (id msg))
    (cl:cons ':label (label msg))
    (cl:cons ':xpos (xpos msg))
    (cl:cons ':ypos (ypos msg))
    (cl:cons ':size (size msg))
    (cl:cons ':color (color msg))
    (cl:cons ':transparency (transparency msg))
    (cl:cons ':font (font msg))
))
;//! \htmlinclude supervisor_set_label-response.msg.html

(cl:defclass <supervisor_set_label-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:fixnum
    :initform 0))
)

(cl:defclass supervisor_set_label-response (<supervisor_set_label-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <supervisor_set_label-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'supervisor_set_label-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<supervisor_set_label-response> is deprecated: use webots_ros-srv:supervisor_set_label-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <supervisor_set_label-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:success-val is deprecated.  Use webots_ros-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <supervisor_set_label-response>) ostream)
  "Serializes a message object of type '<supervisor_set_label-response>"
  (cl:let* ((signed (cl:slot-value msg 'success)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <supervisor_set_label-response>) istream)
  "Deserializes a message object of type '<supervisor_set_label-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'success) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<supervisor_set_label-response>)))
  "Returns string type for a service object of type '<supervisor_set_label-response>"
  "webots_ros/supervisor_set_labelResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'supervisor_set_label-response)))
  "Returns string type for a service object of type 'supervisor_set_label-response"
  "webots_ros/supervisor_set_labelResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<supervisor_set_label-response>)))
  "Returns md5sum for a message object of type '<supervisor_set_label-response>"
  "5ee78a04723ef11d3847c8d8c557058c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'supervisor_set_label-response)))
  "Returns md5sum for a message object of type 'supervisor_set_label-response"
  "5ee78a04723ef11d3847c8d8c557058c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<supervisor_set_label-response>)))
  "Returns full string definition for message of type '<supervisor_set_label-response>"
  (cl:format cl:nil "int8 success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'supervisor_set_label-response)))
  "Returns full string definition for message of type 'supervisor_set_label-response"
  (cl:format cl:nil "int8 success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <supervisor_set_label-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <supervisor_set_label-response>))
  "Converts a ROS message object to a list"
  (cl:list 'supervisor_set_label-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'supervisor_set_label)))
  'supervisor_set_label-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'supervisor_set_label)))
  'supervisor_set_label-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'supervisor_set_label)))
  "Returns string type for a service object of type '<supervisor_set_label>"
  "webots_ros/supervisor_set_label")