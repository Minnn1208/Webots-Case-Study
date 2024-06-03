; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude node_get_velocity-request.msg.html

(cl:defclass <node_get_velocity-request> (roslisp-msg-protocol:ros-message)
  ((node
    :reader node
    :initarg :node
    :type cl:integer
    :initform 0))
)

(cl:defclass node_get_velocity-request (<node_get_velocity-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <node_get_velocity-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'node_get_velocity-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<node_get_velocity-request> is deprecated: use webots_ros-srv:node_get_velocity-request instead.")))

(cl:ensure-generic-function 'node-val :lambda-list '(m))
(cl:defmethod node-val ((m <node_get_velocity-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:node-val is deprecated.  Use webots_ros-srv:node instead.")
  (node m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <node_get_velocity-request>) ostream)
  "Serializes a message object of type '<node_get_velocity-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'node)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <node_get_velocity-request>) istream)
  "Deserializes a message object of type '<node_get_velocity-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'node)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<node_get_velocity-request>)))
  "Returns string type for a service object of type '<node_get_velocity-request>"
  "webots_ros/node_get_velocityRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node_get_velocity-request)))
  "Returns string type for a service object of type 'node_get_velocity-request"
  "webots_ros/node_get_velocityRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<node_get_velocity-request>)))
  "Returns md5sum for a message object of type '<node_get_velocity-request>"
  "f50dcf3848a1b2dce54e5fbe9ff12eac")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'node_get_velocity-request)))
  "Returns md5sum for a message object of type 'node_get_velocity-request"
  "f50dcf3848a1b2dce54e5fbe9ff12eac")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<node_get_velocity-request>)))
  "Returns full string definition for message of type '<node_get_velocity-request>"
  (cl:format cl:nil "uint64 node~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'node_get_velocity-request)))
  "Returns full string definition for message of type 'node_get_velocity-request"
  (cl:format cl:nil "uint64 node~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <node_get_velocity-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <node_get_velocity-request>))
  "Converts a ROS message object to a list"
  (cl:list 'node_get_velocity-request
    (cl:cons ':node (node msg))
))
;//! \htmlinclude node_get_velocity-response.msg.html

(cl:defclass <node_get_velocity-response> (roslisp-msg-protocol:ros-message)
  ((velocity
    :reader velocity
    :initarg :velocity
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist)))
)

(cl:defclass node_get_velocity-response (<node_get_velocity-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <node_get_velocity-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'node_get_velocity-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<node_get_velocity-response> is deprecated: use webots_ros-srv:node_get_velocity-response instead.")))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <node_get_velocity-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:velocity-val is deprecated.  Use webots_ros-srv:velocity instead.")
  (velocity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <node_get_velocity-response>) ostream)
  "Serializes a message object of type '<node_get_velocity-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <node_get_velocity-response>) istream)
  "Deserializes a message object of type '<node_get_velocity-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<node_get_velocity-response>)))
  "Returns string type for a service object of type '<node_get_velocity-response>"
  "webots_ros/node_get_velocityResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node_get_velocity-response)))
  "Returns string type for a service object of type 'node_get_velocity-response"
  "webots_ros/node_get_velocityResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<node_get_velocity-response>)))
  "Returns md5sum for a message object of type '<node_get_velocity-response>"
  "f50dcf3848a1b2dce54e5fbe9ff12eac")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'node_get_velocity-response)))
  "Returns md5sum for a message object of type 'node_get_velocity-response"
  "f50dcf3848a1b2dce54e5fbe9ff12eac")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<node_get_velocity-response>)))
  "Returns full string definition for message of type '<node_get_velocity-response>"
  (cl:format cl:nil "geometry_msgs/Twist velocity~%~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'node_get_velocity-response)))
  "Returns full string definition for message of type 'node_get_velocity-response"
  (cl:format cl:nil "geometry_msgs/Twist velocity~%~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <node_get_velocity-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <node_get_velocity-response>))
  "Converts a ROS message object to a list"
  (cl:list 'node_get_velocity-response
    (cl:cons ':velocity (velocity msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'node_get_velocity)))
  'node_get_velocity-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'node_get_velocity)))
  'node_get_velocity-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node_get_velocity)))
  "Returns string type for a service object of type '<node_get_velocity>"
  "webots_ros/node_get_velocity")