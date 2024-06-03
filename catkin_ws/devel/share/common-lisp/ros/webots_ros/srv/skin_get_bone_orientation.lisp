; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude skin_get_bone_orientation-request.msg.html

(cl:defclass <skin_get_bone_orientation-request> (roslisp-msg-protocol:ros-message)
  ((index
    :reader index
    :initarg :index
    :type cl:integer
    :initform 0)
   (absolute
    :reader absolute
    :initarg :absolute
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass skin_get_bone_orientation-request (<skin_get_bone_orientation-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <skin_get_bone_orientation-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'skin_get_bone_orientation-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<skin_get_bone_orientation-request> is deprecated: use webots_ros-srv:skin_get_bone_orientation-request instead.")))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <skin_get_bone_orientation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:index-val is deprecated.  Use webots_ros-srv:index instead.")
  (index m))

(cl:ensure-generic-function 'absolute-val :lambda-list '(m))
(cl:defmethod absolute-val ((m <skin_get_bone_orientation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:absolute-val is deprecated.  Use webots_ros-srv:absolute instead.")
  (absolute m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <skin_get_bone_orientation-request>) ostream)
  "Serializes a message object of type '<skin_get_bone_orientation-request>"
  (cl:let* ((signed (cl:slot-value msg 'index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'absolute) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <skin_get_bone_orientation-request>) istream)
  "Deserializes a message object of type '<skin_get_bone_orientation-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'index) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'absolute) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<skin_get_bone_orientation-request>)))
  "Returns string type for a service object of type '<skin_get_bone_orientation-request>"
  "webots_ros/skin_get_bone_orientationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'skin_get_bone_orientation-request)))
  "Returns string type for a service object of type 'skin_get_bone_orientation-request"
  "webots_ros/skin_get_bone_orientationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<skin_get_bone_orientation-request>)))
  "Returns md5sum for a message object of type '<skin_get_bone_orientation-request>"
  "f5889bc85962c2ea0f40d74e77b00b8b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'skin_get_bone_orientation-request)))
  "Returns md5sum for a message object of type 'skin_get_bone_orientation-request"
  "f5889bc85962c2ea0f40d74e77b00b8b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<skin_get_bone_orientation-request>)))
  "Returns full string definition for message of type '<skin_get_bone_orientation-request>"
  (cl:format cl:nil "int32 index~%bool absolute~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'skin_get_bone_orientation-request)))
  "Returns full string definition for message of type 'skin_get_bone_orientation-request"
  (cl:format cl:nil "int32 index~%bool absolute~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <skin_get_bone_orientation-request>))
  (cl:+ 0
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <skin_get_bone_orientation-request>))
  "Converts a ROS message object to a list"
  (cl:list 'skin_get_bone_orientation-request
    (cl:cons ':index (index msg))
    (cl:cons ':absolute (absolute msg))
))
;//! \htmlinclude skin_get_bone_orientation-response.msg.html

(cl:defclass <skin_get_bone_orientation-response> (roslisp-msg-protocol:ros-message)
  ((orientation
    :reader orientation
    :initarg :orientation
    :type geometry_msgs-msg:Quaternion
    :initform (cl:make-instance 'geometry_msgs-msg:Quaternion)))
)

(cl:defclass skin_get_bone_orientation-response (<skin_get_bone_orientation-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <skin_get_bone_orientation-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'skin_get_bone_orientation-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<skin_get_bone_orientation-response> is deprecated: use webots_ros-srv:skin_get_bone_orientation-response instead.")))

(cl:ensure-generic-function 'orientation-val :lambda-list '(m))
(cl:defmethod orientation-val ((m <skin_get_bone_orientation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:orientation-val is deprecated.  Use webots_ros-srv:orientation instead.")
  (orientation m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <skin_get_bone_orientation-response>) ostream)
  "Serializes a message object of type '<skin_get_bone_orientation-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'orientation) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <skin_get_bone_orientation-response>) istream)
  "Deserializes a message object of type '<skin_get_bone_orientation-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'orientation) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<skin_get_bone_orientation-response>)))
  "Returns string type for a service object of type '<skin_get_bone_orientation-response>"
  "webots_ros/skin_get_bone_orientationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'skin_get_bone_orientation-response)))
  "Returns string type for a service object of type 'skin_get_bone_orientation-response"
  "webots_ros/skin_get_bone_orientationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<skin_get_bone_orientation-response>)))
  "Returns md5sum for a message object of type '<skin_get_bone_orientation-response>"
  "f5889bc85962c2ea0f40d74e77b00b8b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'skin_get_bone_orientation-response)))
  "Returns md5sum for a message object of type 'skin_get_bone_orientation-response"
  "f5889bc85962c2ea0f40d74e77b00b8b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<skin_get_bone_orientation-response>)))
  "Returns full string definition for message of type '<skin_get_bone_orientation-response>"
  (cl:format cl:nil "geometry_msgs/Quaternion orientation~%~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'skin_get_bone_orientation-response)))
  "Returns full string definition for message of type 'skin_get_bone_orientation-response"
  (cl:format cl:nil "geometry_msgs/Quaternion orientation~%~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <skin_get_bone_orientation-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'orientation))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <skin_get_bone_orientation-response>))
  "Converts a ROS message object to a list"
  (cl:list 'skin_get_bone_orientation-response
    (cl:cons ':orientation (orientation msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'skin_get_bone_orientation)))
  'skin_get_bone_orientation-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'skin_get_bone_orientation)))
  'skin_get_bone_orientation-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'skin_get_bone_orientation)))
  "Returns string type for a service object of type '<skin_get_bone_orientation>"
  "webots_ros/skin_get_bone_orientation")