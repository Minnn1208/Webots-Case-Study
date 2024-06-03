; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude lidar_get_frequency_info-request.msg.html

(cl:defclass <lidar_get_frequency_info-request> (roslisp-msg-protocol:ros-message)
  ((ask
    :reader ask
    :initarg :ask
    :type cl:fixnum
    :initform 0))
)

(cl:defclass lidar_get_frequency_info-request (<lidar_get_frequency_info-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <lidar_get_frequency_info-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'lidar_get_frequency_info-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<lidar_get_frequency_info-request> is deprecated: use webots_ros-srv:lidar_get_frequency_info-request instead.")))

(cl:ensure-generic-function 'ask-val :lambda-list '(m))
(cl:defmethod ask-val ((m <lidar_get_frequency_info-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:ask-val is deprecated.  Use webots_ros-srv:ask instead.")
  (ask m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <lidar_get_frequency_info-request>) ostream)
  "Serializes a message object of type '<lidar_get_frequency_info-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ask)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <lidar_get_frequency_info-request>) istream)
  "Deserializes a message object of type '<lidar_get_frequency_info-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ask)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<lidar_get_frequency_info-request>)))
  "Returns string type for a service object of type '<lidar_get_frequency_info-request>"
  "webots_ros/lidar_get_frequency_infoRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'lidar_get_frequency_info-request)))
  "Returns string type for a service object of type 'lidar_get_frequency_info-request"
  "webots_ros/lidar_get_frequency_infoRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<lidar_get_frequency_info-request>)))
  "Returns md5sum for a message object of type '<lidar_get_frequency_info-request>"
  "205acd1972da2259229a25bf7e756656")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'lidar_get_frequency_info-request)))
  "Returns md5sum for a message object of type 'lidar_get_frequency_info-request"
  "205acd1972da2259229a25bf7e756656")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<lidar_get_frequency_info-request>)))
  "Returns full string definition for message of type '<lidar_get_frequency_info-request>"
  (cl:format cl:nil "uint8 ask~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'lidar_get_frequency_info-request)))
  "Returns full string definition for message of type 'lidar_get_frequency_info-request"
  (cl:format cl:nil "uint8 ask~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <lidar_get_frequency_info-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <lidar_get_frequency_info-request>))
  "Converts a ROS message object to a list"
  (cl:list 'lidar_get_frequency_info-request
    (cl:cons ':ask (ask msg))
))
;//! \htmlinclude lidar_get_frequency_info-response.msg.html

(cl:defclass <lidar_get_frequency_info-response> (roslisp-msg-protocol:ros-message)
  ((frequency
    :reader frequency
    :initarg :frequency
    :type cl:float
    :initform 0.0)
   (minFrequency
    :reader minFrequency
    :initarg :minFrequency
    :type cl:float
    :initform 0.0)
   (maxFrequency
    :reader maxFrequency
    :initarg :maxFrequency
    :type cl:float
    :initform 0.0))
)

(cl:defclass lidar_get_frequency_info-response (<lidar_get_frequency_info-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <lidar_get_frequency_info-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'lidar_get_frequency_info-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<lidar_get_frequency_info-response> is deprecated: use webots_ros-srv:lidar_get_frequency_info-response instead.")))

(cl:ensure-generic-function 'frequency-val :lambda-list '(m))
(cl:defmethod frequency-val ((m <lidar_get_frequency_info-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:frequency-val is deprecated.  Use webots_ros-srv:frequency instead.")
  (frequency m))

(cl:ensure-generic-function 'minFrequency-val :lambda-list '(m))
(cl:defmethod minFrequency-val ((m <lidar_get_frequency_info-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:minFrequency-val is deprecated.  Use webots_ros-srv:minFrequency instead.")
  (minFrequency m))

(cl:ensure-generic-function 'maxFrequency-val :lambda-list '(m))
(cl:defmethod maxFrequency-val ((m <lidar_get_frequency_info-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:maxFrequency-val is deprecated.  Use webots_ros-srv:maxFrequency instead.")
  (maxFrequency m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <lidar_get_frequency_info-response>) ostream)
  "Serializes a message object of type '<lidar_get_frequency_info-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'frequency))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'minFrequency))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'maxFrequency))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <lidar_get_frequency_info-response>) istream)
  "Deserializes a message object of type '<lidar_get_frequency_info-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'frequency) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'minFrequency) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'maxFrequency) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<lidar_get_frequency_info-response>)))
  "Returns string type for a service object of type '<lidar_get_frequency_info-response>"
  "webots_ros/lidar_get_frequency_infoResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'lidar_get_frequency_info-response)))
  "Returns string type for a service object of type 'lidar_get_frequency_info-response"
  "webots_ros/lidar_get_frequency_infoResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<lidar_get_frequency_info-response>)))
  "Returns md5sum for a message object of type '<lidar_get_frequency_info-response>"
  "205acd1972da2259229a25bf7e756656")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'lidar_get_frequency_info-response)))
  "Returns md5sum for a message object of type 'lidar_get_frequency_info-response"
  "205acd1972da2259229a25bf7e756656")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<lidar_get_frequency_info-response>)))
  "Returns full string definition for message of type '<lidar_get_frequency_info-response>"
  (cl:format cl:nil "float64 frequency~%float64 minFrequency~%float64 maxFrequency~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'lidar_get_frequency_info-response)))
  "Returns full string definition for message of type 'lidar_get_frequency_info-response"
  (cl:format cl:nil "float64 frequency~%float64 minFrequency~%float64 maxFrequency~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <lidar_get_frequency_info-response>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <lidar_get_frequency_info-response>))
  "Converts a ROS message object to a list"
  (cl:list 'lidar_get_frequency_info-response
    (cl:cons ':frequency (frequency msg))
    (cl:cons ':minFrequency (minFrequency msg))
    (cl:cons ':maxFrequency (maxFrequency msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'lidar_get_frequency_info)))
  'lidar_get_frequency_info-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'lidar_get_frequency_info)))
  'lidar_get_frequency_info-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'lidar_get_frequency_info)))
  "Returns string type for a service object of type '<lidar_get_frequency_info>"
  "webots_ros/lidar_get_frequency_info")