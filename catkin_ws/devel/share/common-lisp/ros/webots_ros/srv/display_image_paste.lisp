; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude display_image_paste-request.msg.html

(cl:defclass <display_image_paste-request> (roslisp-msg-protocol:ros-message)
  ((ir
    :reader ir
    :initarg :ir
    :type cl:integer
    :initform 0)
   (x
    :reader x
    :initarg :x
    :type cl:integer
    :initform 0)
   (y
    :reader y
    :initarg :y
    :type cl:integer
    :initform 0)
   (blend
    :reader blend
    :initarg :blend
    :type cl:fixnum
    :initform 0))
)

(cl:defclass display_image_paste-request (<display_image_paste-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <display_image_paste-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'display_image_paste-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<display_image_paste-request> is deprecated: use webots_ros-srv:display_image_paste-request instead.")))

(cl:ensure-generic-function 'ir-val :lambda-list '(m))
(cl:defmethod ir-val ((m <display_image_paste-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:ir-val is deprecated.  Use webots_ros-srv:ir instead.")
  (ir m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <display_image_paste-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:x-val is deprecated.  Use webots_ros-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <display_image_paste-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:y-val is deprecated.  Use webots_ros-srv:y instead.")
  (y m))

(cl:ensure-generic-function 'blend-val :lambda-list '(m))
(cl:defmethod blend-val ((m <display_image_paste-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:blend-val is deprecated.  Use webots_ros-srv:blend instead.")
  (blend m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <display_image_paste-request>) ostream)
  "Serializes a message object of type '<display_image_paste-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ir)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ir)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ir)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ir)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'ir)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'ir)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'ir)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'ir)) ostream)
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'blend)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <display_image_paste-request>) istream)
  "Deserializes a message object of type '<display_image_paste-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ir)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ir)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ir)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ir)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'ir)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'ir)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'ir)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'ir)) (cl:read-byte istream))
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
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'blend)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<display_image_paste-request>)))
  "Returns string type for a service object of type '<display_image_paste-request>"
  "webots_ros/display_image_pasteRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'display_image_paste-request)))
  "Returns string type for a service object of type 'display_image_paste-request"
  "webots_ros/display_image_pasteRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<display_image_paste-request>)))
  "Returns md5sum for a message object of type '<display_image_paste-request>"
  "58100642be61cff1b755b0787ba1decc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'display_image_paste-request)))
  "Returns md5sum for a message object of type 'display_image_paste-request"
  "58100642be61cff1b755b0787ba1decc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<display_image_paste-request>)))
  "Returns full string definition for message of type '<display_image_paste-request>"
  (cl:format cl:nil "uint64 ir~%int32 x~%int32 y~%uint8 blend~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'display_image_paste-request)))
  "Returns full string definition for message of type 'display_image_paste-request"
  (cl:format cl:nil "uint64 ir~%int32 x~%int32 y~%uint8 blend~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <display_image_paste-request>))
  (cl:+ 0
     8
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <display_image_paste-request>))
  "Converts a ROS message object to a list"
  (cl:list 'display_image_paste-request
    (cl:cons ':ir (ir msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':blend (blend msg))
))
;//! \htmlinclude display_image_paste-response.msg.html

(cl:defclass <display_image_paste-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:fixnum
    :initform 0))
)

(cl:defclass display_image_paste-response (<display_image_paste-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <display_image_paste-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'display_image_paste-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<display_image_paste-response> is deprecated: use webots_ros-srv:display_image_paste-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <display_image_paste-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:success-val is deprecated.  Use webots_ros-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <display_image_paste-response>) ostream)
  "Serializes a message object of type '<display_image_paste-response>"
  (cl:let* ((signed (cl:slot-value msg 'success)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <display_image_paste-response>) istream)
  "Deserializes a message object of type '<display_image_paste-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'success) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<display_image_paste-response>)))
  "Returns string type for a service object of type '<display_image_paste-response>"
  "webots_ros/display_image_pasteResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'display_image_paste-response)))
  "Returns string type for a service object of type 'display_image_paste-response"
  "webots_ros/display_image_pasteResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<display_image_paste-response>)))
  "Returns md5sum for a message object of type '<display_image_paste-response>"
  "58100642be61cff1b755b0787ba1decc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'display_image_paste-response)))
  "Returns md5sum for a message object of type 'display_image_paste-response"
  "58100642be61cff1b755b0787ba1decc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<display_image_paste-response>)))
  "Returns full string definition for message of type '<display_image_paste-response>"
  (cl:format cl:nil "int8 success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'display_image_paste-response)))
  "Returns full string definition for message of type 'display_image_paste-response"
  (cl:format cl:nil "int8 success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <display_image_paste-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <display_image_paste-response>))
  "Converts a ROS message object to a list"
  (cl:list 'display_image_paste-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'display_image_paste)))
  'display_image_paste-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'display_image_paste)))
  'display_image_paste-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'display_image_paste)))
  "Returns string type for a service object of type '<display_image_paste>"
  "webots_ros/display_image_paste")