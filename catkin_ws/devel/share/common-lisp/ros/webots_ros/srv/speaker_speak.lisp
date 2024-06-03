; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude speaker_speak-request.msg.html

(cl:defclass <speaker_speak-request> (roslisp-msg-protocol:ros-message)
  ((text
    :reader text
    :initarg :text
    :type cl:string
    :initform "")
   (volume
    :reader volume
    :initarg :volume
    :type cl:float
    :initform 0.0))
)

(cl:defclass speaker_speak-request (<speaker_speak-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <speaker_speak-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'speaker_speak-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<speaker_speak-request> is deprecated: use webots_ros-srv:speaker_speak-request instead.")))

(cl:ensure-generic-function 'text-val :lambda-list '(m))
(cl:defmethod text-val ((m <speaker_speak-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:text-val is deprecated.  Use webots_ros-srv:text instead.")
  (text m))

(cl:ensure-generic-function 'volume-val :lambda-list '(m))
(cl:defmethod volume-val ((m <speaker_speak-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:volume-val is deprecated.  Use webots_ros-srv:volume instead.")
  (volume m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <speaker_speak-request>) ostream)
  "Serializes a message object of type '<speaker_speak-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'text))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'text))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'volume))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <speaker_speak-request>) istream)
  "Deserializes a message object of type '<speaker_speak-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'text) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'text) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<speaker_speak-request>)))
  "Returns string type for a service object of type '<speaker_speak-request>"
  "webots_ros/speaker_speakRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'speaker_speak-request)))
  "Returns string type for a service object of type 'speaker_speak-request"
  "webots_ros/speaker_speakRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<speaker_speak-request>)))
  "Returns md5sum for a message object of type '<speaker_speak-request>"
  "bc987d1a1839d594218b7c1d6a77ba5e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'speaker_speak-request)))
  "Returns md5sum for a message object of type 'speaker_speak-request"
  "bc987d1a1839d594218b7c1d6a77ba5e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<speaker_speak-request>)))
  "Returns full string definition for message of type '<speaker_speak-request>"
  (cl:format cl:nil "string text~%float64 volume~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'speaker_speak-request)))
  "Returns full string definition for message of type 'speaker_speak-request"
  (cl:format cl:nil "string text~%float64 volume~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <speaker_speak-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'text))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <speaker_speak-request>))
  "Converts a ROS message object to a list"
  (cl:list 'speaker_speak-request
    (cl:cons ':text (text msg))
    (cl:cons ':volume (volume msg))
))
;//! \htmlinclude speaker_speak-response.msg.html

(cl:defclass <speaker_speak-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:fixnum
    :initform 0))
)

(cl:defclass speaker_speak-response (<speaker_speak-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <speaker_speak-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'speaker_speak-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<speaker_speak-response> is deprecated: use webots_ros-srv:speaker_speak-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <speaker_speak-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:success-val is deprecated.  Use webots_ros-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <speaker_speak-response>) ostream)
  "Serializes a message object of type '<speaker_speak-response>"
  (cl:let* ((signed (cl:slot-value msg 'success)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <speaker_speak-response>) istream)
  "Deserializes a message object of type '<speaker_speak-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'success) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<speaker_speak-response>)))
  "Returns string type for a service object of type '<speaker_speak-response>"
  "webots_ros/speaker_speakResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'speaker_speak-response)))
  "Returns string type for a service object of type 'speaker_speak-response"
  "webots_ros/speaker_speakResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<speaker_speak-response>)))
  "Returns md5sum for a message object of type '<speaker_speak-response>"
  "bc987d1a1839d594218b7c1d6a77ba5e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'speaker_speak-response)))
  "Returns md5sum for a message object of type 'speaker_speak-response"
  "bc987d1a1839d594218b7c1d6a77ba5e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<speaker_speak-response>)))
  "Returns full string definition for message of type '<speaker_speak-response>"
  (cl:format cl:nil "int8 success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'speaker_speak-response)))
  "Returns full string definition for message of type 'speaker_speak-response"
  (cl:format cl:nil "int8 success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <speaker_speak-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <speaker_speak-response>))
  "Converts a ROS message object to a list"
  (cl:list 'speaker_speak-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'speaker_speak)))
  'speaker_speak-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'speaker_speak)))
  'speaker_speak-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'speaker_speak)))
  "Returns string type for a service object of type '<speaker_speak>"
  "webots_ros/speaker_speak")