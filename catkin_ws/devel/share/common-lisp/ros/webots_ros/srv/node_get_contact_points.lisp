; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude node_get_contact_points-request.msg.html

(cl:defclass <node_get_contact_points-request> (roslisp-msg-protocol:ros-message)
  ((node
    :reader node
    :initarg :node
    :type cl:integer
    :initform 0)
   (include_descendants
    :reader include_descendants
    :initarg :include_descendants
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass node_get_contact_points-request (<node_get_contact_points-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <node_get_contact_points-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'node_get_contact_points-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<node_get_contact_points-request> is deprecated: use webots_ros-srv:node_get_contact_points-request instead.")))

(cl:ensure-generic-function 'node-val :lambda-list '(m))
(cl:defmethod node-val ((m <node_get_contact_points-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:node-val is deprecated.  Use webots_ros-srv:node instead.")
  (node m))

(cl:ensure-generic-function 'include_descendants-val :lambda-list '(m))
(cl:defmethod include_descendants-val ((m <node_get_contact_points-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:include_descendants-val is deprecated.  Use webots_ros-srv:include_descendants instead.")
  (include_descendants m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <node_get_contact_points-request>) ostream)
  "Serializes a message object of type '<node_get_contact_points-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'include_descendants) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <node_get_contact_points-request>) istream)
  "Deserializes a message object of type '<node_get_contact_points-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'include_descendants) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<node_get_contact_points-request>)))
  "Returns string type for a service object of type '<node_get_contact_points-request>"
  "webots_ros/node_get_contact_pointsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node_get_contact_points-request)))
  "Returns string type for a service object of type 'node_get_contact_points-request"
  "webots_ros/node_get_contact_pointsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<node_get_contact_points-request>)))
  "Returns md5sum for a message object of type '<node_get_contact_points-request>"
  "2b8ca1a0f35ff5c1915577923081855f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'node_get_contact_points-request)))
  "Returns md5sum for a message object of type 'node_get_contact_points-request"
  "2b8ca1a0f35ff5c1915577923081855f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<node_get_contact_points-request>)))
  "Returns full string definition for message of type '<node_get_contact_points-request>"
  (cl:format cl:nil "uint64 node~%bool include_descendants~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'node_get_contact_points-request)))
  "Returns full string definition for message of type 'node_get_contact_points-request"
  (cl:format cl:nil "uint64 node~%bool include_descendants~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <node_get_contact_points-request>))
  (cl:+ 0
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <node_get_contact_points-request>))
  "Converts a ROS message object to a list"
  (cl:list 'node_get_contact_points-request
    (cl:cons ':node (node msg))
    (cl:cons ':include_descendants (include_descendants msg))
))
;//! \htmlinclude node_get_contact_points-response.msg.html

(cl:defclass <node_get_contact_points-response> (roslisp-msg-protocol:ros-message)
  ((contact_points
    :reader contact_points
    :initarg :contact_points
    :type (cl:vector webots_ros-msg:ContactPoint)
   :initform (cl:make-array 0 :element-type 'webots_ros-msg:ContactPoint :initial-element (cl:make-instance 'webots_ros-msg:ContactPoint))))
)

(cl:defclass node_get_contact_points-response (<node_get_contact_points-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <node_get_contact_points-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'node_get_contact_points-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<node_get_contact_points-response> is deprecated: use webots_ros-srv:node_get_contact_points-response instead.")))

(cl:ensure-generic-function 'contact_points-val :lambda-list '(m))
(cl:defmethod contact_points-val ((m <node_get_contact_points-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:contact_points-val is deprecated.  Use webots_ros-srv:contact_points instead.")
  (contact_points m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <node_get_contact_points-response>) ostream)
  "Serializes a message object of type '<node_get_contact_points-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'contact_points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'contact_points))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <node_get_contact_points-response>) istream)
  "Deserializes a message object of type '<node_get_contact_points-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'contact_points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'contact_points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'webots_ros-msg:ContactPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<node_get_contact_points-response>)))
  "Returns string type for a service object of type '<node_get_contact_points-response>"
  "webots_ros/node_get_contact_pointsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node_get_contact_points-response)))
  "Returns string type for a service object of type 'node_get_contact_points-response"
  "webots_ros/node_get_contact_pointsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<node_get_contact_points-response>)))
  "Returns md5sum for a message object of type '<node_get_contact_points-response>"
  "2b8ca1a0f35ff5c1915577923081855f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'node_get_contact_points-response)))
  "Returns md5sum for a message object of type 'node_get_contact_points-response"
  "2b8ca1a0f35ff5c1915577923081855f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<node_get_contact_points-response>)))
  "Returns full string definition for message of type '<node_get_contact_points-response>"
  (cl:format cl:nil "webots_ros/ContactPoint[] contact_points~%~%~%================================================================================~%MSG: webots_ros/ContactPoint~%geometry_msgs/Point point~%int32 node_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'node_get_contact_points-response)))
  "Returns full string definition for message of type 'node_get_contact_points-response"
  (cl:format cl:nil "webots_ros/ContactPoint[] contact_points~%~%~%================================================================================~%MSG: webots_ros/ContactPoint~%geometry_msgs/Point point~%int32 node_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <node_get_contact_points-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'contact_points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <node_get_contact_points-response>))
  "Converts a ROS message object to a list"
  (cl:list 'node_get_contact_points-response
    (cl:cons ':contact_points (contact_points msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'node_get_contact_points)))
  'node_get_contact_points-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'node_get_contact_points)))
  'node_get_contact_points-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node_get_contact_points)))
  "Returns string type for a service object of type '<node_get_contact_points>"
  "webots_ros/node_get_contact_points")