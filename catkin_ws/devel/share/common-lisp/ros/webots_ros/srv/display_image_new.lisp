; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude display_image_new-request.msg.html

(cl:defclass <display_image_new-request> (roslisp-msg-protocol:ros-message)
  ((width
    :reader width
    :initarg :width
    :type cl:integer
    :initform 0)
   (height
    :reader height
    :initarg :height
    :type cl:integer
    :initform 0)
   (data
    :reader data
    :initarg :data
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (format
    :reader format
    :initarg :format
    :type cl:integer
    :initform 0))
)

(cl:defclass display_image_new-request (<display_image_new-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <display_image_new-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'display_image_new-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<display_image_new-request> is deprecated: use webots_ros-srv:display_image_new-request instead.")))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <display_image_new-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:width-val is deprecated.  Use webots_ros-srv:width instead.")
  (width m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <display_image_new-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:height-val is deprecated.  Use webots_ros-srv:height instead.")
  (height m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <display_image_new-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:data-val is deprecated.  Use webots_ros-srv:data instead.")
  (data m))

(cl:ensure-generic-function 'format-val :lambda-list '(m))
(cl:defmethod format-val ((m <display_image_new-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:format-val is deprecated.  Use webots_ros-srv:format instead.")
  (format m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <display_image_new-request>) ostream)
  "Serializes a message object of type '<display_image_new-request>"
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
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'data))
  (cl:let* ((signed (cl:slot-value msg 'format)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <display_image_new-request>) istream)
  "Deserializes a message object of type '<display_image_new-request>"
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
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'format) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<display_image_new-request>)))
  "Returns string type for a service object of type '<display_image_new-request>"
  "webots_ros/display_image_newRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'display_image_new-request)))
  "Returns string type for a service object of type 'display_image_new-request"
  "webots_ros/display_image_newRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<display_image_new-request>)))
  "Returns md5sum for a message object of type '<display_image_new-request>"
  "80a036f354960d09033ab0f8d6dffcf7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'display_image_new-request)))
  "Returns md5sum for a message object of type 'display_image_new-request"
  "80a036f354960d09033ab0f8d6dffcf7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<display_image_new-request>)))
  "Returns full string definition for message of type '<display_image_new-request>"
  (cl:format cl:nil "int32 width~%int32 height~%char[] data~%int32 format~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'display_image_new-request)))
  "Returns full string definition for message of type 'display_image_new-request"
  (cl:format cl:nil "int32 width~%int32 height~%char[] data~%int32 format~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <display_image_new-request>))
  (cl:+ 0
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <display_image_new-request>))
  "Converts a ROS message object to a list"
  (cl:list 'display_image_new-request
    (cl:cons ':width (width msg))
    (cl:cons ':height (height msg))
    (cl:cons ':data (data msg))
    (cl:cons ':format (format msg))
))
;//! \htmlinclude display_image_new-response.msg.html

(cl:defclass <display_image_new-response> (roslisp-msg-protocol:ros-message)
  ((ir
    :reader ir
    :initarg :ir
    :type cl:integer
    :initform 0))
)

(cl:defclass display_image_new-response (<display_image_new-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <display_image_new-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'display_image_new-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<display_image_new-response> is deprecated: use webots_ros-srv:display_image_new-response instead.")))

(cl:ensure-generic-function 'ir-val :lambda-list '(m))
(cl:defmethod ir-val ((m <display_image_new-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:ir-val is deprecated.  Use webots_ros-srv:ir instead.")
  (ir m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <display_image_new-response>) ostream)
  "Serializes a message object of type '<display_image_new-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ir)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ir)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ir)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ir)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'ir)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'ir)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'ir)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'ir)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <display_image_new-response>) istream)
  "Deserializes a message object of type '<display_image_new-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<display_image_new-response>)))
  "Returns string type for a service object of type '<display_image_new-response>"
  "webots_ros/display_image_newResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'display_image_new-response)))
  "Returns string type for a service object of type 'display_image_new-response"
  "webots_ros/display_image_newResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<display_image_new-response>)))
  "Returns md5sum for a message object of type '<display_image_new-response>"
  "80a036f354960d09033ab0f8d6dffcf7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'display_image_new-response)))
  "Returns md5sum for a message object of type 'display_image_new-response"
  "80a036f354960d09033ab0f8d6dffcf7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<display_image_new-response>)))
  "Returns full string definition for message of type '<display_image_new-response>"
  (cl:format cl:nil "uint64 ir~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'display_image_new-response)))
  "Returns full string definition for message of type 'display_image_new-response"
  (cl:format cl:nil "uint64 ir~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <display_image_new-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <display_image_new-response>))
  "Converts a ROS message object to a list"
  (cl:list 'display_image_new-response
    (cl:cons ':ir (ir msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'display_image_new)))
  'display_image_new-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'display_image_new)))
  'display_image_new-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'display_image_new)))
  "Returns string type for a service object of type '<display_image_new>"
  "webots_ros/display_image_new")