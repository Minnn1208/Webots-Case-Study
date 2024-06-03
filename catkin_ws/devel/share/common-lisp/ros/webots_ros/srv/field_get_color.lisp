; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude field_get_color-request.msg.html

(cl:defclass <field_get_color-request> (roslisp-msg-protocol:ros-message)
  ((field
    :reader field
    :initarg :field
    :type cl:integer
    :initform 0)
   (index
    :reader index
    :initarg :index
    :type cl:integer
    :initform 0))
)

(cl:defclass field_get_color-request (<field_get_color-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <field_get_color-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'field_get_color-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<field_get_color-request> is deprecated: use webots_ros-srv:field_get_color-request instead.")))

(cl:ensure-generic-function 'field-val :lambda-list '(m))
(cl:defmethod field-val ((m <field_get_color-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:field-val is deprecated.  Use webots_ros-srv:field instead.")
  (field m))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <field_get_color-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:index-val is deprecated.  Use webots_ros-srv:index instead.")
  (index m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <field_get_color-request>) ostream)
  "Serializes a message object of type '<field_get_color-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'field)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'field)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'field)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'field)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'field)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'field)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'field)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'field)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <field_get_color-request>) istream)
  "Deserializes a message object of type '<field_get_color-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'field)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'field)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'field)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'field)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'field)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'field)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'field)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'field)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'index) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<field_get_color-request>)))
  "Returns string type for a service object of type '<field_get_color-request>"
  "webots_ros/field_get_colorRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'field_get_color-request)))
  "Returns string type for a service object of type 'field_get_color-request"
  "webots_ros/field_get_colorRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<field_get_color-request>)))
  "Returns md5sum for a message object of type '<field_get_color-request>"
  "4920aae633f7f96feac03b4ce89984d5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'field_get_color-request)))
  "Returns md5sum for a message object of type 'field_get_color-request"
  "4920aae633f7f96feac03b4ce89984d5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<field_get_color-request>)))
  "Returns full string definition for message of type '<field_get_color-request>"
  (cl:format cl:nil "uint64 field~%int32 index~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'field_get_color-request)))
  "Returns full string definition for message of type 'field_get_color-request"
  (cl:format cl:nil "uint64 field~%int32 index~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <field_get_color-request>))
  (cl:+ 0
     8
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <field_get_color-request>))
  "Converts a ROS message object to a list"
  (cl:list 'field_get_color-request
    (cl:cons ':field (field msg))
    (cl:cons ':index (index msg))
))
;//! \htmlinclude field_get_color-response.msg.html

(cl:defclass <field_get_color-response> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type std_msgs-msg:ColorRGBA
    :initform (cl:make-instance 'std_msgs-msg:ColorRGBA)))
)

(cl:defclass field_get_color-response (<field_get_color-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <field_get_color-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'field_get_color-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<field_get_color-response> is deprecated: use webots_ros-srv:field_get_color-response instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <field_get_color-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:value-val is deprecated.  Use webots_ros-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <field_get_color-response>) ostream)
  "Serializes a message object of type '<field_get_color-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'value) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <field_get_color-response>) istream)
  "Deserializes a message object of type '<field_get_color-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'value) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<field_get_color-response>)))
  "Returns string type for a service object of type '<field_get_color-response>"
  "webots_ros/field_get_colorResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'field_get_color-response)))
  "Returns string type for a service object of type 'field_get_color-response"
  "webots_ros/field_get_colorResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<field_get_color-response>)))
  "Returns md5sum for a message object of type '<field_get_color-response>"
  "4920aae633f7f96feac03b4ce89984d5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'field_get_color-response)))
  "Returns md5sum for a message object of type 'field_get_color-response"
  "4920aae633f7f96feac03b4ce89984d5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<field_get_color-response>)))
  "Returns full string definition for message of type '<field_get_color-response>"
  (cl:format cl:nil "std_msgs/ColorRGBA value~%~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'field_get_color-response)))
  "Returns full string definition for message of type 'field_get_color-response"
  (cl:format cl:nil "std_msgs/ColorRGBA value~%~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <field_get_color-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'value))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <field_get_color-response>))
  "Converts a ROS message object to a list"
  (cl:list 'field_get_color-response
    (cl:cons ':value (value msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'field_get_color)))
  'field_get_color-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'field_get_color)))
  'field_get_color-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'field_get_color)))
  "Returns string type for a service object of type '<field_get_color>"
  "webots_ros/field_get_color")