; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude gps_decimal_degrees_to_degrees_minutes_seconds-request.msg.html

(cl:defclass <gps_decimal_degrees_to_degrees_minutes_seconds-request> (roslisp-msg-protocol:ros-message)
  ((decimalDegrees
    :reader decimalDegrees
    :initarg :decimalDegrees
    :type cl:float
    :initform 0.0))
)

(cl:defclass gps_decimal_degrees_to_degrees_minutes_seconds-request (<gps_decimal_degrees_to_degrees_minutes_seconds-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <gps_decimal_degrees_to_degrees_minutes_seconds-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'gps_decimal_degrees_to_degrees_minutes_seconds-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<gps_decimal_degrees_to_degrees_minutes_seconds-request> is deprecated: use webots_ros-srv:gps_decimal_degrees_to_degrees_minutes_seconds-request instead.")))

(cl:ensure-generic-function 'decimalDegrees-val :lambda-list '(m))
(cl:defmethod decimalDegrees-val ((m <gps_decimal_degrees_to_degrees_minutes_seconds-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:decimalDegrees-val is deprecated.  Use webots_ros-srv:decimalDegrees instead.")
  (decimalDegrees m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <gps_decimal_degrees_to_degrees_minutes_seconds-request>) ostream)
  "Serializes a message object of type '<gps_decimal_degrees_to_degrees_minutes_seconds-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'decimalDegrees))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <gps_decimal_degrees_to_degrees_minutes_seconds-request>) istream)
  "Deserializes a message object of type '<gps_decimal_degrees_to_degrees_minutes_seconds-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'decimalDegrees) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<gps_decimal_degrees_to_degrees_minutes_seconds-request>)))
  "Returns string type for a service object of type '<gps_decimal_degrees_to_degrees_minutes_seconds-request>"
  "webots_ros/gps_decimal_degrees_to_degrees_minutes_secondsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'gps_decimal_degrees_to_degrees_minutes_seconds-request)))
  "Returns string type for a service object of type 'gps_decimal_degrees_to_degrees_minutes_seconds-request"
  "webots_ros/gps_decimal_degrees_to_degrees_minutes_secondsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<gps_decimal_degrees_to_degrees_minutes_seconds-request>)))
  "Returns md5sum for a message object of type '<gps_decimal_degrees_to_degrees_minutes_seconds-request>"
  "2911ee9051e401397c9b1e29a01f7ead")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'gps_decimal_degrees_to_degrees_minutes_seconds-request)))
  "Returns md5sum for a message object of type 'gps_decimal_degrees_to_degrees_minutes_seconds-request"
  "2911ee9051e401397c9b1e29a01f7ead")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<gps_decimal_degrees_to_degrees_minutes_seconds-request>)))
  "Returns full string definition for message of type '<gps_decimal_degrees_to_degrees_minutes_seconds-request>"
  (cl:format cl:nil "float32 decimalDegrees~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'gps_decimal_degrees_to_degrees_minutes_seconds-request)))
  "Returns full string definition for message of type 'gps_decimal_degrees_to_degrees_minutes_seconds-request"
  (cl:format cl:nil "float32 decimalDegrees~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <gps_decimal_degrees_to_degrees_minutes_seconds-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <gps_decimal_degrees_to_degrees_minutes_seconds-request>))
  "Converts a ROS message object to a list"
  (cl:list 'gps_decimal_degrees_to_degrees_minutes_seconds-request
    (cl:cons ':decimalDegrees (decimalDegrees msg))
))
;//! \htmlinclude gps_decimal_degrees_to_degrees_minutes_seconds-response.msg.html

(cl:defclass <gps_decimal_degrees_to_degrees_minutes_seconds-response> (roslisp-msg-protocol:ros-message)
  ((degreesMinutesSeconds
    :reader degreesMinutesSeconds
    :initarg :degreesMinutesSeconds
    :type cl:string
    :initform ""))
)

(cl:defclass gps_decimal_degrees_to_degrees_minutes_seconds-response (<gps_decimal_degrees_to_degrees_minutes_seconds-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <gps_decimal_degrees_to_degrees_minutes_seconds-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'gps_decimal_degrees_to_degrees_minutes_seconds-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<gps_decimal_degrees_to_degrees_minutes_seconds-response> is deprecated: use webots_ros-srv:gps_decimal_degrees_to_degrees_minutes_seconds-response instead.")))

(cl:ensure-generic-function 'degreesMinutesSeconds-val :lambda-list '(m))
(cl:defmethod degreesMinutesSeconds-val ((m <gps_decimal_degrees_to_degrees_minutes_seconds-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:degreesMinutesSeconds-val is deprecated.  Use webots_ros-srv:degreesMinutesSeconds instead.")
  (degreesMinutesSeconds m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <gps_decimal_degrees_to_degrees_minutes_seconds-response>) ostream)
  "Serializes a message object of type '<gps_decimal_degrees_to_degrees_minutes_seconds-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'degreesMinutesSeconds))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'degreesMinutesSeconds))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <gps_decimal_degrees_to_degrees_minutes_seconds-response>) istream)
  "Deserializes a message object of type '<gps_decimal_degrees_to_degrees_minutes_seconds-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'degreesMinutesSeconds) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'degreesMinutesSeconds) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<gps_decimal_degrees_to_degrees_minutes_seconds-response>)))
  "Returns string type for a service object of type '<gps_decimal_degrees_to_degrees_minutes_seconds-response>"
  "webots_ros/gps_decimal_degrees_to_degrees_minutes_secondsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'gps_decimal_degrees_to_degrees_minutes_seconds-response)))
  "Returns string type for a service object of type 'gps_decimal_degrees_to_degrees_minutes_seconds-response"
  "webots_ros/gps_decimal_degrees_to_degrees_minutes_secondsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<gps_decimal_degrees_to_degrees_minutes_seconds-response>)))
  "Returns md5sum for a message object of type '<gps_decimal_degrees_to_degrees_minutes_seconds-response>"
  "2911ee9051e401397c9b1e29a01f7ead")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'gps_decimal_degrees_to_degrees_minutes_seconds-response)))
  "Returns md5sum for a message object of type 'gps_decimal_degrees_to_degrees_minutes_seconds-response"
  "2911ee9051e401397c9b1e29a01f7ead")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<gps_decimal_degrees_to_degrees_minutes_seconds-response>)))
  "Returns full string definition for message of type '<gps_decimal_degrees_to_degrees_minutes_seconds-response>"
  (cl:format cl:nil "string degreesMinutesSeconds~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'gps_decimal_degrees_to_degrees_minutes_seconds-response)))
  "Returns full string definition for message of type 'gps_decimal_degrees_to_degrees_minutes_seconds-response"
  (cl:format cl:nil "string degreesMinutesSeconds~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <gps_decimal_degrees_to_degrees_minutes_seconds-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'degreesMinutesSeconds))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <gps_decimal_degrees_to_degrees_minutes_seconds-response>))
  "Converts a ROS message object to a list"
  (cl:list 'gps_decimal_degrees_to_degrees_minutes_seconds-response
    (cl:cons ':degreesMinutesSeconds (degreesMinutesSeconds msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'gps_decimal_degrees_to_degrees_minutes_seconds)))
  'gps_decimal_degrees_to_degrees_minutes_seconds-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'gps_decimal_degrees_to_degrees_minutes_seconds)))
  'gps_decimal_degrees_to_degrees_minutes_seconds-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'gps_decimal_degrees_to_degrees_minutes_seconds)))
  "Returns string type for a service object of type '<gps_decimal_degrees_to_degrees_minutes_seconds>"
  "webots_ros/gps_decimal_degrees_to_degrees_minutes_seconds")