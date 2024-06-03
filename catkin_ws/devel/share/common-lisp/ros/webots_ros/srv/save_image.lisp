; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude save_image-request.msg.html

(cl:defclass <save_image-request> (roslisp-msg-protocol:ros-message)
  ((filename
    :reader filename
    :initarg :filename
    :type cl:string
    :initform "")
   (quality
    :reader quality
    :initarg :quality
    :type cl:integer
    :initform 0))
)

(cl:defclass save_image-request (<save_image-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <save_image-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'save_image-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<save_image-request> is deprecated: use webots_ros-srv:save_image-request instead.")))

(cl:ensure-generic-function 'filename-val :lambda-list '(m))
(cl:defmethod filename-val ((m <save_image-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:filename-val is deprecated.  Use webots_ros-srv:filename instead.")
  (filename m))

(cl:ensure-generic-function 'quality-val :lambda-list '(m))
(cl:defmethod quality-val ((m <save_image-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:quality-val is deprecated.  Use webots_ros-srv:quality instead.")
  (quality m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <save_image-request>) ostream)
  "Serializes a message object of type '<save_image-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'filename))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'filename))
  (cl:let* ((signed (cl:slot-value msg 'quality)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <save_image-request>) istream)
  "Deserializes a message object of type '<save_image-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'filename) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'filename) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'quality) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<save_image-request>)))
  "Returns string type for a service object of type '<save_image-request>"
  "webots_ros/save_imageRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'save_image-request)))
  "Returns string type for a service object of type 'save_image-request"
  "webots_ros/save_imageRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<save_image-request>)))
  "Returns md5sum for a message object of type '<save_image-request>"
  "9f4c973c7b1d0924ab26586269d7499e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'save_image-request)))
  "Returns md5sum for a message object of type 'save_image-request"
  "9f4c973c7b1d0924ab26586269d7499e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<save_image-request>)))
  "Returns full string definition for message of type '<save_image-request>"
  (cl:format cl:nil "string filename~%int32 quality~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'save_image-request)))
  "Returns full string definition for message of type 'save_image-request"
  (cl:format cl:nil "string filename~%int32 quality~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <save_image-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'filename))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <save_image-request>))
  "Converts a ROS message object to a list"
  (cl:list 'save_image-request
    (cl:cons ':filename (filename msg))
    (cl:cons ':quality (quality msg))
))
;//! \htmlinclude save_image-response.msg.html

(cl:defclass <save_image-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:fixnum
    :initform 0))
)

(cl:defclass save_image-response (<save_image-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <save_image-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'save_image-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<save_image-response> is deprecated: use webots_ros-srv:save_image-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <save_image-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:success-val is deprecated.  Use webots_ros-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <save_image-response>) ostream)
  "Serializes a message object of type '<save_image-response>"
  (cl:let* ((signed (cl:slot-value msg 'success)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <save_image-response>) istream)
  "Deserializes a message object of type '<save_image-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'success) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<save_image-response>)))
  "Returns string type for a service object of type '<save_image-response>"
  "webots_ros/save_imageResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'save_image-response)))
  "Returns string type for a service object of type 'save_image-response"
  "webots_ros/save_imageResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<save_image-response>)))
  "Returns md5sum for a message object of type '<save_image-response>"
  "9f4c973c7b1d0924ab26586269d7499e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'save_image-response)))
  "Returns md5sum for a message object of type 'save_image-response"
  "9f4c973c7b1d0924ab26586269d7499e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<save_image-response>)))
  "Returns full string definition for message of type '<save_image-response>"
  (cl:format cl:nil "int8 success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'save_image-response)))
  "Returns full string definition for message of type 'save_image-response"
  (cl:format cl:nil "int8 success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <save_image-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <save_image-response>))
  "Converts a ROS message object to a list"
  (cl:list 'save_image-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'save_image)))
  'save_image-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'save_image)))
  'save_image-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'save_image)))
  "Returns string type for a service object of type '<save_image>"
  "webots_ros/save_image")