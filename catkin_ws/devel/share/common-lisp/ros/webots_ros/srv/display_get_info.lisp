; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude display_get_info-request.msg.html

(cl:defclass <display_get_info-request> (roslisp-msg-protocol:ros-message)
  ((ask
    :reader ask
    :initarg :ask
    :type cl:fixnum
    :initform 0))
)

(cl:defclass display_get_info-request (<display_get_info-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <display_get_info-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'display_get_info-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<display_get_info-request> is deprecated: use webots_ros-srv:display_get_info-request instead.")))

(cl:ensure-generic-function 'ask-val :lambda-list '(m))
(cl:defmethod ask-val ((m <display_get_info-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:ask-val is deprecated.  Use webots_ros-srv:ask instead.")
  (ask m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <display_get_info-request>) ostream)
  "Serializes a message object of type '<display_get_info-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ask)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <display_get_info-request>) istream)
  "Deserializes a message object of type '<display_get_info-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ask)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<display_get_info-request>)))
  "Returns string type for a service object of type '<display_get_info-request>"
  "webots_ros/display_get_infoRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'display_get_info-request)))
  "Returns string type for a service object of type 'display_get_info-request"
  "webots_ros/display_get_infoRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<display_get_info-request>)))
  "Returns md5sum for a message object of type '<display_get_info-request>"
  "736b3f82840360427588839f7591782f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'display_get_info-request)))
  "Returns md5sum for a message object of type 'display_get_info-request"
  "736b3f82840360427588839f7591782f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<display_get_info-request>)))
  "Returns full string definition for message of type '<display_get_info-request>"
  (cl:format cl:nil "uint8 ask~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'display_get_info-request)))
  "Returns full string definition for message of type 'display_get_info-request"
  (cl:format cl:nil "uint8 ask~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <display_get_info-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <display_get_info-request>))
  "Converts a ROS message object to a list"
  (cl:list 'display_get_info-request
    (cl:cons ':ask (ask msg))
))
;//! \htmlinclude display_get_info-response.msg.html

(cl:defclass <display_get_info-response> (roslisp-msg-protocol:ros-message)
  ((width
    :reader width
    :initarg :width
    :type cl:integer
    :initform 0)
   (height
    :reader height
    :initarg :height
    :type cl:integer
    :initform 0))
)

(cl:defclass display_get_info-response (<display_get_info-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <display_get_info-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'display_get_info-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<display_get_info-response> is deprecated: use webots_ros-srv:display_get_info-response instead.")))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <display_get_info-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:width-val is deprecated.  Use webots_ros-srv:width instead.")
  (width m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <display_get_info-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:height-val is deprecated.  Use webots_ros-srv:height instead.")
  (height m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <display_get_info-response>) ostream)
  "Serializes a message object of type '<display_get_info-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'width)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'width)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'width)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'width)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'height)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'height)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'height)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'height)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <display_get_info-response>) istream)
  "Deserializes a message object of type '<display_get_info-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'height)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'height)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'height)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'height)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<display_get_info-response>)))
  "Returns string type for a service object of type '<display_get_info-response>"
  "webots_ros/display_get_infoResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'display_get_info-response)))
  "Returns string type for a service object of type 'display_get_info-response"
  "webots_ros/display_get_infoResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<display_get_info-response>)))
  "Returns md5sum for a message object of type '<display_get_info-response>"
  "736b3f82840360427588839f7591782f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'display_get_info-response)))
  "Returns md5sum for a message object of type 'display_get_info-response"
  "736b3f82840360427588839f7591782f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<display_get_info-response>)))
  "Returns full string definition for message of type '<display_get_info-response>"
  (cl:format cl:nil "uint32 width~%uint32 height~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'display_get_info-response)))
  "Returns full string definition for message of type 'display_get_info-response"
  (cl:format cl:nil "uint32 width~%uint32 height~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <display_get_info-response>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <display_get_info-response>))
  "Converts a ROS message object to a list"
  (cl:list 'display_get_info-response
    (cl:cons ':width (width msg))
    (cl:cons ':height (height msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'display_get_info)))
  'display_get_info-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'display_get_info)))
  'display_get_info-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'display_get_info)))
  "Returns string type for a service object of type '<display_get_info>"
  "webots_ros/display_get_info")