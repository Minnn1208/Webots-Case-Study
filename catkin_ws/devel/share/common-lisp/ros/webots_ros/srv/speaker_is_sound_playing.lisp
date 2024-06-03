; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude speaker_is_sound_playing-request.msg.html

(cl:defclass <speaker_is_sound_playing-request> (roslisp-msg-protocol:ros-message)
  ((sound
    :reader sound
    :initarg :sound
    :type cl:string
    :initform ""))
)

(cl:defclass speaker_is_sound_playing-request (<speaker_is_sound_playing-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <speaker_is_sound_playing-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'speaker_is_sound_playing-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<speaker_is_sound_playing-request> is deprecated: use webots_ros-srv:speaker_is_sound_playing-request instead.")))

(cl:ensure-generic-function 'sound-val :lambda-list '(m))
(cl:defmethod sound-val ((m <speaker_is_sound_playing-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:sound-val is deprecated.  Use webots_ros-srv:sound instead.")
  (sound m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <speaker_is_sound_playing-request>) ostream)
  "Serializes a message object of type '<speaker_is_sound_playing-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'sound))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'sound))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <speaker_is_sound_playing-request>) istream)
  "Deserializes a message object of type '<speaker_is_sound_playing-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sound) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'sound) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<speaker_is_sound_playing-request>)))
  "Returns string type for a service object of type '<speaker_is_sound_playing-request>"
  "webots_ros/speaker_is_sound_playingRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'speaker_is_sound_playing-request)))
  "Returns string type for a service object of type 'speaker_is_sound_playing-request"
  "webots_ros/speaker_is_sound_playingRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<speaker_is_sound_playing-request>)))
  "Returns md5sum for a message object of type '<speaker_is_sound_playing-request>"
  "5e90e3a791904b68b561b7067a8d366b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'speaker_is_sound_playing-request)))
  "Returns md5sum for a message object of type 'speaker_is_sound_playing-request"
  "5e90e3a791904b68b561b7067a8d366b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<speaker_is_sound_playing-request>)))
  "Returns full string definition for message of type '<speaker_is_sound_playing-request>"
  (cl:format cl:nil "string sound~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'speaker_is_sound_playing-request)))
  "Returns full string definition for message of type 'speaker_is_sound_playing-request"
  (cl:format cl:nil "string sound~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <speaker_is_sound_playing-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'sound))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <speaker_is_sound_playing-request>))
  "Converts a ROS message object to a list"
  (cl:list 'speaker_is_sound_playing-request
    (cl:cons ':sound (sound msg))
))
;//! \htmlinclude speaker_is_sound_playing-response.msg.html

(cl:defclass <speaker_is_sound_playing-response> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass speaker_is_sound_playing-response (<speaker_is_sound_playing-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <speaker_is_sound_playing-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'speaker_is_sound_playing-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<speaker_is_sound_playing-response> is deprecated: use webots_ros-srv:speaker_is_sound_playing-response instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <speaker_is_sound_playing-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:value-val is deprecated.  Use webots_ros-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <speaker_is_sound_playing-response>) ostream)
  "Serializes a message object of type '<speaker_is_sound_playing-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'value) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <speaker_is_sound_playing-response>) istream)
  "Deserializes a message object of type '<speaker_is_sound_playing-response>"
    (cl:setf (cl:slot-value msg 'value) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<speaker_is_sound_playing-response>)))
  "Returns string type for a service object of type '<speaker_is_sound_playing-response>"
  "webots_ros/speaker_is_sound_playingResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'speaker_is_sound_playing-response)))
  "Returns string type for a service object of type 'speaker_is_sound_playing-response"
  "webots_ros/speaker_is_sound_playingResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<speaker_is_sound_playing-response>)))
  "Returns md5sum for a message object of type '<speaker_is_sound_playing-response>"
  "5e90e3a791904b68b561b7067a8d366b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'speaker_is_sound_playing-response)))
  "Returns md5sum for a message object of type 'speaker_is_sound_playing-response"
  "5e90e3a791904b68b561b7067a8d366b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<speaker_is_sound_playing-response>)))
  "Returns full string definition for message of type '<speaker_is_sound_playing-response>"
  (cl:format cl:nil "bool value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'speaker_is_sound_playing-response)))
  "Returns full string definition for message of type 'speaker_is_sound_playing-response"
  (cl:format cl:nil "bool value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <speaker_is_sound_playing-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <speaker_is_sound_playing-response>))
  "Converts a ROS message object to a list"
  (cl:list 'speaker_is_sound_playing-response
    (cl:cons ':value (value msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'speaker_is_sound_playing)))
  'speaker_is_sound_playing-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'speaker_is_sound_playing)))
  'speaker_is_sound_playing-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'speaker_is_sound_playing)))
  "Returns string type for a service object of type '<speaker_is_sound_playing>"
  "webots_ros/speaker_is_sound_playing")