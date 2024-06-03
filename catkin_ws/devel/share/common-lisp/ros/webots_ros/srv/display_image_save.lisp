; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude display_image_save-request.msg.html

(cl:defclass <display_image_save-request> (roslisp-msg-protocol:ros-message)
  ((filename
    :reader filename
    :initarg :filename
    :type cl:string
    :initform "")
   (ir
    :reader ir
    :initarg :ir
    :type cl:integer
    :initform 0))
)

(cl:defclass display_image_save-request (<display_image_save-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <display_image_save-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'display_image_save-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<display_image_save-request> is deprecated: use webots_ros-srv:display_image_save-request instead.")))

(cl:ensure-generic-function 'filename-val :lambda-list '(m))
(cl:defmethod filename-val ((m <display_image_save-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:filename-val is deprecated.  Use webots_ros-srv:filename instead.")
  (filename m))

(cl:ensure-generic-function 'ir-val :lambda-list '(m))
(cl:defmethod ir-val ((m <display_image_save-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:ir-val is deprecated.  Use webots_ros-srv:ir instead.")
  (ir m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <display_image_save-request>) ostream)
  "Serializes a message object of type '<display_image_save-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'filename))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'filename))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ir)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ir)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ir)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ir)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'ir)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'ir)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'ir)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'ir)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <display_image_save-request>) istream)
  "Deserializes a message object of type '<display_image_save-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'filename) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'filename) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<display_image_save-request>)))
  "Returns string type for a service object of type '<display_image_save-request>"
  "webots_ros/display_image_saveRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'display_image_save-request)))
  "Returns string type for a service object of type 'display_image_save-request"
  "webots_ros/display_image_saveRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<display_image_save-request>)))
  "Returns md5sum for a message object of type '<display_image_save-request>"
  "e0d9a6b0c2c4d70d173cf3baf8d7df7c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'display_image_save-request)))
  "Returns md5sum for a message object of type 'display_image_save-request"
  "e0d9a6b0c2c4d70d173cf3baf8d7df7c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<display_image_save-request>)))
  "Returns full string definition for message of type '<display_image_save-request>"
  (cl:format cl:nil "string filename~%uint64 ir~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'display_image_save-request)))
  "Returns full string definition for message of type 'display_image_save-request"
  (cl:format cl:nil "string filename~%uint64 ir~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <display_image_save-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'filename))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <display_image_save-request>))
  "Converts a ROS message object to a list"
  (cl:list 'display_image_save-request
    (cl:cons ':filename (filename msg))
    (cl:cons ':ir (ir msg))
))
;//! \htmlinclude display_image_save-response.msg.html

(cl:defclass <display_image_save-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:fixnum
    :initform 0))
)

(cl:defclass display_image_save-response (<display_image_save-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <display_image_save-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'display_image_save-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<display_image_save-response> is deprecated: use webots_ros-srv:display_image_save-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <display_image_save-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:success-val is deprecated.  Use webots_ros-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <display_image_save-response>) ostream)
  "Serializes a message object of type '<display_image_save-response>"
  (cl:let* ((signed (cl:slot-value msg 'success)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <display_image_save-response>) istream)
  "Deserializes a message object of type '<display_image_save-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'success) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<display_image_save-response>)))
  "Returns string type for a service object of type '<display_image_save-response>"
  "webots_ros/display_image_saveResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'display_image_save-response)))
  "Returns string type for a service object of type 'display_image_save-response"
  "webots_ros/display_image_saveResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<display_image_save-response>)))
  "Returns md5sum for a message object of type '<display_image_save-response>"
  "e0d9a6b0c2c4d70d173cf3baf8d7df7c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'display_image_save-response)))
  "Returns md5sum for a message object of type 'display_image_save-response"
  "e0d9a6b0c2c4d70d173cf3baf8d7df7c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<display_image_save-response>)))
  "Returns full string definition for message of type '<display_image_save-response>"
  (cl:format cl:nil "int8 success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'display_image_save-response)))
  "Returns full string definition for message of type 'display_image_save-response"
  (cl:format cl:nil "int8 success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <display_image_save-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <display_image_save-response>))
  "Converts a ROS message object to a list"
  (cl:list 'display_image_save-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'display_image_save)))
  'display_image_save-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'display_image_save)))
  'display_image_save-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'display_image_save)))
  "Returns string type for a service object of type '<display_image_save>"
  "webots_ros/display_image_save")