; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude skin_get_bone_position-request.msg.html

(cl:defclass <skin_get_bone_position-request> (roslisp-msg-protocol:ros-message)
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

(cl:defclass skin_get_bone_position-request (<skin_get_bone_position-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <skin_get_bone_position-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'skin_get_bone_position-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<skin_get_bone_position-request> is deprecated: use webots_ros-srv:skin_get_bone_position-request instead.")))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <skin_get_bone_position-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:index-val is deprecated.  Use webots_ros-srv:index instead.")
  (index m))

(cl:ensure-generic-function 'absolute-val :lambda-list '(m))
(cl:defmethod absolute-val ((m <skin_get_bone_position-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:absolute-val is deprecated.  Use webots_ros-srv:absolute instead.")
  (absolute m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <skin_get_bone_position-request>) ostream)
  "Serializes a message object of type '<skin_get_bone_position-request>"
  (cl:let* ((signed (cl:slot-value msg 'index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'absolute) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <skin_get_bone_position-request>) istream)
  "Deserializes a message object of type '<skin_get_bone_position-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'index) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'absolute) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<skin_get_bone_position-request>)))
  "Returns string type for a service object of type '<skin_get_bone_position-request>"
  "webots_ros/skin_get_bone_positionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'skin_get_bone_position-request)))
  "Returns string type for a service object of type 'skin_get_bone_position-request"
  "webots_ros/skin_get_bone_positionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<skin_get_bone_position-request>)))
  "Returns md5sum for a message object of type '<skin_get_bone_position-request>"
  "c9870aedfb26769e03d175a5a34b1ff2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'skin_get_bone_position-request)))
  "Returns md5sum for a message object of type 'skin_get_bone_position-request"
  "c9870aedfb26769e03d175a5a34b1ff2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<skin_get_bone_position-request>)))
  "Returns full string definition for message of type '<skin_get_bone_position-request>"
  (cl:format cl:nil "int32 index~%bool absolute~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'skin_get_bone_position-request)))
  "Returns full string definition for message of type 'skin_get_bone_position-request"
  (cl:format cl:nil "int32 index~%bool absolute~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <skin_get_bone_position-request>))
  (cl:+ 0
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <skin_get_bone_position-request>))
  "Converts a ROS message object to a list"
  (cl:list 'skin_get_bone_position-request
    (cl:cons ':index (index msg))
    (cl:cons ':absolute (absolute msg))
))
;//! \htmlinclude skin_get_bone_position-response.msg.html

(cl:defclass <skin_get_bone_position-response> (roslisp-msg-protocol:ros-message)
  ((position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass skin_get_bone_position-response (<skin_get_bone_position-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <skin_get_bone_position-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'skin_get_bone_position-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<skin_get_bone_position-response> is deprecated: use webots_ros-srv:skin_get_bone_position-response instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <skin_get_bone_position-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:position-val is deprecated.  Use webots_ros-srv:position instead.")
  (position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <skin_get_bone_position-response>) ostream)
  "Serializes a message object of type '<skin_get_bone_position-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <skin_get_bone_position-response>) istream)
  "Deserializes a message object of type '<skin_get_bone_position-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<skin_get_bone_position-response>)))
  "Returns string type for a service object of type '<skin_get_bone_position-response>"
  "webots_ros/skin_get_bone_positionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'skin_get_bone_position-response)))
  "Returns string type for a service object of type 'skin_get_bone_position-response"
  "webots_ros/skin_get_bone_positionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<skin_get_bone_position-response>)))
  "Returns md5sum for a message object of type '<skin_get_bone_position-response>"
  "c9870aedfb26769e03d175a5a34b1ff2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'skin_get_bone_position-response)))
  "Returns md5sum for a message object of type 'skin_get_bone_position-response"
  "c9870aedfb26769e03d175a5a34b1ff2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<skin_get_bone_position-response>)))
  "Returns full string definition for message of type '<skin_get_bone_position-response>"
  (cl:format cl:nil "geometry_msgs/Point position~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'skin_get_bone_position-response)))
  "Returns full string definition for message of type 'skin_get_bone_position-response"
  (cl:format cl:nil "geometry_msgs/Point position~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <skin_get_bone_position-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <skin_get_bone_position-response>))
  "Converts a ROS message object to a list"
  (cl:list 'skin_get_bone_position-response
    (cl:cons ':position (position msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'skin_get_bone_position)))
  'skin_get_bone_position-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'skin_get_bone_position)))
  'skin_get_bone_position-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'skin_get_bone_position)))
  "Returns string type for a service object of type '<skin_get_bone_position>"
  "webots_ros/skin_get_bone_position")