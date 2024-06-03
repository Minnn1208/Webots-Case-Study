; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude node_set_velocity-request.msg.html

(cl:defclass <node_set_velocity-request> (roslisp-msg-protocol:ros-message)
  ((node
    :reader node
    :initarg :node
    :type cl:integer
    :initform 0)
   (velocity
    :reader velocity
    :initarg :velocity
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist)))
)

(cl:defclass node_set_velocity-request (<node_set_velocity-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <node_set_velocity-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'node_set_velocity-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<node_set_velocity-request> is deprecated: use webots_ros-srv:node_set_velocity-request instead.")))

(cl:ensure-generic-function 'node-val :lambda-list '(m))
(cl:defmethod node-val ((m <node_set_velocity-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:node-val is deprecated.  Use webots_ros-srv:node instead.")
  (node m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <node_set_velocity-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:velocity-val is deprecated.  Use webots_ros-srv:velocity instead.")
  (velocity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <node_set_velocity-request>) ostream)
  "Serializes a message object of type '<node_set_velocity-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'node)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <node_set_velocity-request>) istream)
  "Deserializes a message object of type '<node_set_velocity-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'node)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<node_set_velocity-request>)))
  "Returns string type for a service object of type '<node_set_velocity-request>"
  "webots_ros/node_set_velocityRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node_set_velocity-request)))
  "Returns string type for a service object of type 'node_set_velocity-request"
  "webots_ros/node_set_velocityRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<node_set_velocity-request>)))
  "Returns md5sum for a message object of type '<node_set_velocity-request>"
  "bbe5d1dd420b6f268ed5aee8db339832")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'node_set_velocity-request)))
  "Returns md5sum for a message object of type 'node_set_velocity-request"
  "bbe5d1dd420b6f268ed5aee8db339832")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<node_set_velocity-request>)))
  "Returns full string definition for message of type '<node_set_velocity-request>"
  (cl:format cl:nil "uint64 node~%geometry_msgs/Twist velocity~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'node_set_velocity-request)))
  "Returns full string definition for message of type 'node_set_velocity-request"
  (cl:format cl:nil "uint64 node~%geometry_msgs/Twist velocity~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <node_set_velocity-request>))
  (cl:+ 0
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <node_set_velocity-request>))
  "Converts a ROS message object to a list"
  (cl:list 'node_set_velocity-request
    (cl:cons ':node (node msg))
    (cl:cons ':velocity (velocity msg))
))
;//! \htmlinclude node_set_velocity-response.msg.html

(cl:defclass <node_set_velocity-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:integer
    :initform 0))
)

(cl:defclass node_set_velocity-response (<node_set_velocity-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <node_set_velocity-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'node_set_velocity-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<node_set_velocity-response> is deprecated: use webots_ros-srv:node_set_velocity-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <node_set_velocity-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:success-val is deprecated.  Use webots_ros-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <node_set_velocity-response>) ostream)
  "Serializes a message object of type '<node_set_velocity-response>"
  (cl:let* ((signed (cl:slot-value msg 'success)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <node_set_velocity-response>) istream)
  "Deserializes a message object of type '<node_set_velocity-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'success) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<node_set_velocity-response>)))
  "Returns string type for a service object of type '<node_set_velocity-response>"
  "webots_ros/node_set_velocityResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node_set_velocity-response)))
  "Returns string type for a service object of type 'node_set_velocity-response"
  "webots_ros/node_set_velocityResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<node_set_velocity-response>)))
  "Returns md5sum for a message object of type '<node_set_velocity-response>"
  "bbe5d1dd420b6f268ed5aee8db339832")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'node_set_velocity-response)))
  "Returns md5sum for a message object of type 'node_set_velocity-response"
  "bbe5d1dd420b6f268ed5aee8db339832")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<node_set_velocity-response>)))
  "Returns full string definition for message of type '<node_set_velocity-response>"
  (cl:format cl:nil "int32 success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'node_set_velocity-response)))
  "Returns full string definition for message of type 'node_set_velocity-response"
  (cl:format cl:nil "int32 success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <node_set_velocity-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <node_set_velocity-response>))
  "Converts a ROS message object to a list"
  (cl:list 'node_set_velocity-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'node_set_velocity)))
  'node_set_velocity-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'node_set_velocity)))
  'node_set_velocity-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node_set_velocity)))
  "Returns string type for a service object of type '<node_set_velocity>"
  "webots_ros/node_set_velocity")