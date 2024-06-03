; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude supervisor_movie_start_recording-request.msg.html

(cl:defclass <supervisor_movie_start_recording-request> (roslisp-msg-protocol:ros-message)
  ((filename
    :reader filename
    :initarg :filename
    :type cl:string
    :initform "")
   (width
    :reader width
    :initarg :width
    :type cl:integer
    :initform 0)
   (height
    :reader height
    :initarg :height
    :type cl:integer
    :initform 0)
   (codec
    :reader codec
    :initarg :codec
    :type cl:integer
    :initform 0)
   (quality
    :reader quality
    :initarg :quality
    :type cl:integer
    :initform 0)
   (acceleration
    :reader acceleration
    :initarg :acceleration
    :type cl:integer
    :initform 0)
   (caption
    :reader caption
    :initarg :caption
    :type cl:fixnum
    :initform 0))
)

(cl:defclass supervisor_movie_start_recording-request (<supervisor_movie_start_recording-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <supervisor_movie_start_recording-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'supervisor_movie_start_recording-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<supervisor_movie_start_recording-request> is deprecated: use webots_ros-srv:supervisor_movie_start_recording-request instead.")))

(cl:ensure-generic-function 'filename-val :lambda-list '(m))
(cl:defmethod filename-val ((m <supervisor_movie_start_recording-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:filename-val is deprecated.  Use webots_ros-srv:filename instead.")
  (filename m))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <supervisor_movie_start_recording-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:width-val is deprecated.  Use webots_ros-srv:width instead.")
  (width m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <supervisor_movie_start_recording-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:height-val is deprecated.  Use webots_ros-srv:height instead.")
  (height m))

(cl:ensure-generic-function 'codec-val :lambda-list '(m))
(cl:defmethod codec-val ((m <supervisor_movie_start_recording-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:codec-val is deprecated.  Use webots_ros-srv:codec instead.")
  (codec m))

(cl:ensure-generic-function 'quality-val :lambda-list '(m))
(cl:defmethod quality-val ((m <supervisor_movie_start_recording-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:quality-val is deprecated.  Use webots_ros-srv:quality instead.")
  (quality m))

(cl:ensure-generic-function 'acceleration-val :lambda-list '(m))
(cl:defmethod acceleration-val ((m <supervisor_movie_start_recording-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:acceleration-val is deprecated.  Use webots_ros-srv:acceleration instead.")
  (acceleration m))

(cl:ensure-generic-function 'caption-val :lambda-list '(m))
(cl:defmethod caption-val ((m <supervisor_movie_start_recording-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:caption-val is deprecated.  Use webots_ros-srv:caption instead.")
  (caption m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <supervisor_movie_start_recording-request>) ostream)
  "Serializes a message object of type '<supervisor_movie_start_recording-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'filename))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'filename))
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
  (cl:let* ((signed (cl:slot-value msg 'codec)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'quality)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'acceleration)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'caption)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <supervisor_movie_start_recording-request>) istream)
  "Deserializes a message object of type '<supervisor_movie_start_recording-request>"
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
      (cl:setf (cl:slot-value msg 'width) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'height) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'codec) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'quality) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'acceleration) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'caption)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<supervisor_movie_start_recording-request>)))
  "Returns string type for a service object of type '<supervisor_movie_start_recording-request>"
  "webots_ros/supervisor_movie_start_recordingRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'supervisor_movie_start_recording-request)))
  "Returns string type for a service object of type 'supervisor_movie_start_recording-request"
  "webots_ros/supervisor_movie_start_recordingRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<supervisor_movie_start_recording-request>)))
  "Returns md5sum for a message object of type '<supervisor_movie_start_recording-request>"
  "96ca298eece1e7a6fe756c404839bdcc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'supervisor_movie_start_recording-request)))
  "Returns md5sum for a message object of type 'supervisor_movie_start_recording-request"
  "96ca298eece1e7a6fe756c404839bdcc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<supervisor_movie_start_recording-request>)))
  "Returns full string definition for message of type '<supervisor_movie_start_recording-request>"
  (cl:format cl:nil "string filename~%int32 width~%int32 height~%int32 codec~%int32 quality~%int32 acceleration~%uint8 caption~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'supervisor_movie_start_recording-request)))
  "Returns full string definition for message of type 'supervisor_movie_start_recording-request"
  (cl:format cl:nil "string filename~%int32 width~%int32 height~%int32 codec~%int32 quality~%int32 acceleration~%uint8 caption~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <supervisor_movie_start_recording-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'filename))
     4
     4
     4
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <supervisor_movie_start_recording-request>))
  "Converts a ROS message object to a list"
  (cl:list 'supervisor_movie_start_recording-request
    (cl:cons ':filename (filename msg))
    (cl:cons ':width (width msg))
    (cl:cons ':height (height msg))
    (cl:cons ':codec (codec msg))
    (cl:cons ':quality (quality msg))
    (cl:cons ':acceleration (acceleration msg))
    (cl:cons ':caption (caption msg))
))
;//! \htmlinclude supervisor_movie_start_recording-response.msg.html

(cl:defclass <supervisor_movie_start_recording-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:fixnum
    :initform 0))
)

(cl:defclass supervisor_movie_start_recording-response (<supervisor_movie_start_recording-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <supervisor_movie_start_recording-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'supervisor_movie_start_recording-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<supervisor_movie_start_recording-response> is deprecated: use webots_ros-srv:supervisor_movie_start_recording-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <supervisor_movie_start_recording-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:success-val is deprecated.  Use webots_ros-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <supervisor_movie_start_recording-response>) ostream)
  "Serializes a message object of type '<supervisor_movie_start_recording-response>"
  (cl:let* ((signed (cl:slot-value msg 'success)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <supervisor_movie_start_recording-response>) istream)
  "Deserializes a message object of type '<supervisor_movie_start_recording-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'success) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<supervisor_movie_start_recording-response>)))
  "Returns string type for a service object of type '<supervisor_movie_start_recording-response>"
  "webots_ros/supervisor_movie_start_recordingResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'supervisor_movie_start_recording-response)))
  "Returns string type for a service object of type 'supervisor_movie_start_recording-response"
  "webots_ros/supervisor_movie_start_recordingResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<supervisor_movie_start_recording-response>)))
  "Returns md5sum for a message object of type '<supervisor_movie_start_recording-response>"
  "96ca298eece1e7a6fe756c404839bdcc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'supervisor_movie_start_recording-response)))
  "Returns md5sum for a message object of type 'supervisor_movie_start_recording-response"
  "96ca298eece1e7a6fe756c404839bdcc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<supervisor_movie_start_recording-response>)))
  "Returns full string definition for message of type '<supervisor_movie_start_recording-response>"
  (cl:format cl:nil "int8 success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'supervisor_movie_start_recording-response)))
  "Returns full string definition for message of type 'supervisor_movie_start_recording-response"
  (cl:format cl:nil "int8 success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <supervisor_movie_start_recording-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <supervisor_movie_start_recording-response>))
  "Converts a ROS message object to a list"
  (cl:list 'supervisor_movie_start_recording-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'supervisor_movie_start_recording)))
  'supervisor_movie_start_recording-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'supervisor_movie_start_recording)))
  'supervisor_movie_start_recording-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'supervisor_movie_start_recording)))
  "Returns string type for a service object of type '<supervisor_movie_start_recording>"
  "webots_ros/supervisor_movie_start_recording")