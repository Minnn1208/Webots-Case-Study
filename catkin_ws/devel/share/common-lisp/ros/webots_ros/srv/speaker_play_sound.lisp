; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude speaker_play_sound-request.msg.html

(cl:defclass <speaker_play_sound-request> (roslisp-msg-protocol:ros-message)
  ((sound
    :reader sound
    :initarg :sound
    :type cl:string
    :initform "")
   (volume
    :reader volume
    :initarg :volume
    :type cl:float
    :initform 0.0)
   (pitch
    :reader pitch
    :initarg :pitch
    :type cl:float
    :initform 0.0)
   (balance
    :reader balance
    :initarg :balance
    :type cl:float
    :initform 0.0)
   (loop
    :reader loop
    :initarg :loop
    :type cl:fixnum
    :initform 0))
)

(cl:defclass speaker_play_sound-request (<speaker_play_sound-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <speaker_play_sound-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'speaker_play_sound-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<speaker_play_sound-request> is deprecated: use webots_ros-srv:speaker_play_sound-request instead.")))

(cl:ensure-generic-function 'sound-val :lambda-list '(m))
(cl:defmethod sound-val ((m <speaker_play_sound-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:sound-val is deprecated.  Use webots_ros-srv:sound instead.")
  (sound m))

(cl:ensure-generic-function 'volume-val :lambda-list '(m))
(cl:defmethod volume-val ((m <speaker_play_sound-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:volume-val is deprecated.  Use webots_ros-srv:volume instead.")
  (volume m))

(cl:ensure-generic-function 'pitch-val :lambda-list '(m))
(cl:defmethod pitch-val ((m <speaker_play_sound-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:pitch-val is deprecated.  Use webots_ros-srv:pitch instead.")
  (pitch m))

(cl:ensure-generic-function 'balance-val :lambda-list '(m))
(cl:defmethod balance-val ((m <speaker_play_sound-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:balance-val is deprecated.  Use webots_ros-srv:balance instead.")
  (balance m))

(cl:ensure-generic-function 'loop-val :lambda-list '(m))
(cl:defmethod loop-val ((m <speaker_play_sound-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:loop-val is deprecated.  Use webots_ros-srv:loop instead.")
  (loop m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <speaker_play_sound-request>) ostream)
  "Serializes a message object of type '<speaker_play_sound-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'sound))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'sound))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'volume))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'pitch))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'balance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'loop)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <speaker_play_sound-request>) istream)
  "Deserializes a message object of type '<speaker_play_sound-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sound) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'sound) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'volume) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pitch) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'balance) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'loop) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<speaker_play_sound-request>)))
  "Returns string type for a service object of type '<speaker_play_sound-request>"
  "webots_ros/speaker_play_soundRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'speaker_play_sound-request)))
  "Returns string type for a service object of type 'speaker_play_sound-request"
  "webots_ros/speaker_play_soundRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<speaker_play_sound-request>)))
  "Returns md5sum for a message object of type '<speaker_play_sound-request>"
  "9c17e6742fccca17f3542e68a9800dd3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'speaker_play_sound-request)))
  "Returns md5sum for a message object of type 'speaker_play_sound-request"
  "9c17e6742fccca17f3542e68a9800dd3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<speaker_play_sound-request>)))
  "Returns full string definition for message of type '<speaker_play_sound-request>"
  (cl:format cl:nil "string sound~%float64 volume~%float64 pitch~%float64 balance~%int8 loop~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'speaker_play_sound-request)))
  "Returns full string definition for message of type 'speaker_play_sound-request"
  (cl:format cl:nil "string sound~%float64 volume~%float64 pitch~%float64 balance~%int8 loop~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <speaker_play_sound-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'sound))
     8
     8
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <speaker_play_sound-request>))
  "Converts a ROS message object to a list"
  (cl:list 'speaker_play_sound-request
    (cl:cons ':sound (sound msg))
    (cl:cons ':volume (volume msg))
    (cl:cons ':pitch (pitch msg))
    (cl:cons ':balance (balance msg))
    (cl:cons ':loop (loop msg))
))
;//! \htmlinclude speaker_play_sound-response.msg.html

(cl:defclass <speaker_play_sound-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:fixnum
    :initform 0))
)

(cl:defclass speaker_play_sound-response (<speaker_play_sound-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <speaker_play_sound-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'speaker_play_sound-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<speaker_play_sound-response> is deprecated: use webots_ros-srv:speaker_play_sound-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <speaker_play_sound-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:success-val is deprecated.  Use webots_ros-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <speaker_play_sound-response>) ostream)
  "Serializes a message object of type '<speaker_play_sound-response>"
  (cl:let* ((signed (cl:slot-value msg 'success)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <speaker_play_sound-response>) istream)
  "Deserializes a message object of type '<speaker_play_sound-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'success) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<speaker_play_sound-response>)))
  "Returns string type for a service object of type '<speaker_play_sound-response>"
  "webots_ros/speaker_play_soundResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'speaker_play_sound-response)))
  "Returns string type for a service object of type 'speaker_play_sound-response"
  "webots_ros/speaker_play_soundResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<speaker_play_sound-response>)))
  "Returns md5sum for a message object of type '<speaker_play_sound-response>"
  "9c17e6742fccca17f3542e68a9800dd3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'speaker_play_sound-response)))
  "Returns md5sum for a message object of type 'speaker_play_sound-response"
  "9c17e6742fccca17f3542e68a9800dd3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<speaker_play_sound-response>)))
  "Returns full string definition for message of type '<speaker_play_sound-response>"
  (cl:format cl:nil "int8 success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'speaker_play_sound-response)))
  "Returns full string definition for message of type 'speaker_play_sound-response"
  (cl:format cl:nil "int8 success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <speaker_play_sound-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <speaker_play_sound-response>))
  "Converts a ROS message object to a list"
  (cl:list 'speaker_play_sound-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'speaker_play_sound)))
  'speaker_play_sound-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'speaker_play_sound)))
  'speaker_play_sound-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'speaker_play_sound)))
  "Returns string type for a service object of type '<speaker_play_sound>"
  "webots_ros/speaker_play_sound")