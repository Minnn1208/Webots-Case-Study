; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude robot_set_mode-request.msg.html

(cl:defclass <robot_set_mode-request> (roslisp-msg-protocol:ros-message)
  ((arg
    :reader arg
    :initarg :arg
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (mode
    :reader mode
    :initarg :mode
    :type cl:integer
    :initform 0))
)

(cl:defclass robot_set_mode-request (<robot_set_mode-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <robot_set_mode-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'robot_set_mode-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<robot_set_mode-request> is deprecated: use webots_ros-srv:robot_set_mode-request instead.")))

(cl:ensure-generic-function 'arg-val :lambda-list '(m))
(cl:defmethod arg-val ((m <robot_set_mode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:arg-val is deprecated.  Use webots_ros-srv:arg instead.")
  (arg m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <robot_set_mode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:mode-val is deprecated.  Use webots_ros-srv:mode instead.")
  (mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <robot_set_mode-request>) ostream)
  "Serializes a message object of type '<robot_set_mode-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'arg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'arg))
  (cl:let* ((signed (cl:slot-value msg 'mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <robot_set_mode-request>) istream)
  "Deserializes a message object of type '<robot_set_mode-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'arg) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'arg)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<robot_set_mode-request>)))
  "Returns string type for a service object of type '<robot_set_mode-request>"
  "webots_ros/robot_set_modeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'robot_set_mode-request)))
  "Returns string type for a service object of type 'robot_set_mode-request"
  "webots_ros/robot_set_modeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<robot_set_mode-request>)))
  "Returns md5sum for a message object of type '<robot_set_mode-request>"
  "ef8b4f277f1a6d92a8c4d6a68a3850de")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'robot_set_mode-request)))
  "Returns md5sum for a message object of type 'robot_set_mode-request"
  "ef8b4f277f1a6d92a8c4d6a68a3850de")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<robot_set_mode-request>)))
  "Returns full string definition for message of type '<robot_set_mode-request>"
  (cl:format cl:nil "char[] arg~%int32 mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'robot_set_mode-request)))
  "Returns full string definition for message of type 'robot_set_mode-request"
  (cl:format cl:nil "char[] arg~%int32 mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <robot_set_mode-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'arg) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <robot_set_mode-request>))
  "Converts a ROS message object to a list"
  (cl:list 'robot_set_mode-request
    (cl:cons ':arg (arg msg))
    (cl:cons ':mode (mode msg))
))
;//! \htmlinclude robot_set_mode-response.msg.html

(cl:defclass <robot_set_mode-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:fixnum
    :initform 0))
)

(cl:defclass robot_set_mode-response (<robot_set_mode-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <robot_set_mode-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'robot_set_mode-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<robot_set_mode-response> is deprecated: use webots_ros-srv:robot_set_mode-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <robot_set_mode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:success-val is deprecated.  Use webots_ros-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <robot_set_mode-response>) ostream)
  "Serializes a message object of type '<robot_set_mode-response>"
  (cl:let* ((signed (cl:slot-value msg 'success)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <robot_set_mode-response>) istream)
  "Deserializes a message object of type '<robot_set_mode-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'success) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<robot_set_mode-response>)))
  "Returns string type for a service object of type '<robot_set_mode-response>"
  "webots_ros/robot_set_modeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'robot_set_mode-response)))
  "Returns string type for a service object of type 'robot_set_mode-response"
  "webots_ros/robot_set_modeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<robot_set_mode-response>)))
  "Returns md5sum for a message object of type '<robot_set_mode-response>"
  "ef8b4f277f1a6d92a8c4d6a68a3850de")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'robot_set_mode-response)))
  "Returns md5sum for a message object of type 'robot_set_mode-response"
  "ef8b4f277f1a6d92a8c4d6a68a3850de")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<robot_set_mode-response>)))
  "Returns full string definition for message of type '<robot_set_mode-response>"
  (cl:format cl:nil "int8 success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'robot_set_mode-response)))
  "Returns full string definition for message of type 'robot_set_mode-response"
  (cl:format cl:nil "int8 success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <robot_set_mode-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <robot_set_mode-response>))
  "Converts a ROS message object to a list"
  (cl:list 'robot_set_mode-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'robot_set_mode)))
  'robot_set_mode-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'robot_set_mode)))
  'robot_set_mode-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'robot_set_mode)))
  "Returns string type for a service object of type '<robot_set_mode>"
  "webots_ros/robot_set_mode")