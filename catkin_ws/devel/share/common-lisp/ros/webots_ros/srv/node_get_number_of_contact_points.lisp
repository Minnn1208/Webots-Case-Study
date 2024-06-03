; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude node_get_number_of_contact_points-request.msg.html

(cl:defclass <node_get_number_of_contact_points-request> (roslisp-msg-protocol:ros-message)
  ((node
    :reader node
    :initarg :node
    :type cl:integer
    :initform 0)
   (includeDescendants
    :reader includeDescendants
    :initarg :includeDescendants
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass node_get_number_of_contact_points-request (<node_get_number_of_contact_points-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <node_get_number_of_contact_points-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'node_get_number_of_contact_points-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<node_get_number_of_contact_points-request> is deprecated: use webots_ros-srv:node_get_number_of_contact_points-request instead.")))

(cl:ensure-generic-function 'node-val :lambda-list '(m))
(cl:defmethod node-val ((m <node_get_number_of_contact_points-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:node-val is deprecated.  Use webots_ros-srv:node instead.")
  (node m))

(cl:ensure-generic-function 'includeDescendants-val :lambda-list '(m))
(cl:defmethod includeDescendants-val ((m <node_get_number_of_contact_points-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:includeDescendants-val is deprecated.  Use webots_ros-srv:includeDescendants instead.")
  (includeDescendants m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <node_get_number_of_contact_points-request>) ostream)
  "Serializes a message object of type '<node_get_number_of_contact_points-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'includeDescendants) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <node_get_number_of_contact_points-request>) istream)
  "Deserializes a message object of type '<node_get_number_of_contact_points-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'includeDescendants) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<node_get_number_of_contact_points-request>)))
  "Returns string type for a service object of type '<node_get_number_of_contact_points-request>"
  "webots_ros/node_get_number_of_contact_pointsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node_get_number_of_contact_points-request)))
  "Returns string type for a service object of type 'node_get_number_of_contact_points-request"
  "webots_ros/node_get_number_of_contact_pointsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<node_get_number_of_contact_points-request>)))
  "Returns md5sum for a message object of type '<node_get_number_of_contact_points-request>"
  "50947605d2f8a029d23873d02662ef1b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'node_get_number_of_contact_points-request)))
  "Returns md5sum for a message object of type 'node_get_number_of_contact_points-request"
  "50947605d2f8a029d23873d02662ef1b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<node_get_number_of_contact_points-request>)))
  "Returns full string definition for message of type '<node_get_number_of_contact_points-request>"
  (cl:format cl:nil "uint64 node~%bool includeDescendants~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'node_get_number_of_contact_points-request)))
  "Returns full string definition for message of type 'node_get_number_of_contact_points-request"
  (cl:format cl:nil "uint64 node~%bool includeDescendants~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <node_get_number_of_contact_points-request>))
  (cl:+ 0
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <node_get_number_of_contact_points-request>))
  "Converts a ROS message object to a list"
  (cl:list 'node_get_number_of_contact_points-request
    (cl:cons ':node (node msg))
    (cl:cons ':includeDescendants (includeDescendants msg))
))
;//! \htmlinclude node_get_number_of_contact_points-response.msg.html

(cl:defclass <node_get_number_of_contact_points-response> (roslisp-msg-protocol:ros-message)
  ((numberOfContactPoints
    :reader numberOfContactPoints
    :initarg :numberOfContactPoints
    :type cl:integer
    :initform 0))
)

(cl:defclass node_get_number_of_contact_points-response (<node_get_number_of_contact_points-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <node_get_number_of_contact_points-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'node_get_number_of_contact_points-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<node_get_number_of_contact_points-response> is deprecated: use webots_ros-srv:node_get_number_of_contact_points-response instead.")))

(cl:ensure-generic-function 'numberOfContactPoints-val :lambda-list '(m))
(cl:defmethod numberOfContactPoints-val ((m <node_get_number_of_contact_points-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:numberOfContactPoints-val is deprecated.  Use webots_ros-srv:numberOfContactPoints instead.")
  (numberOfContactPoints m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <node_get_number_of_contact_points-response>) ostream)
  "Serializes a message object of type '<node_get_number_of_contact_points-response>"
  (cl:let* ((signed (cl:slot-value msg 'numberOfContactPoints)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <node_get_number_of_contact_points-response>) istream)
  "Deserializes a message object of type '<node_get_number_of_contact_points-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'numberOfContactPoints) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<node_get_number_of_contact_points-response>)))
  "Returns string type for a service object of type '<node_get_number_of_contact_points-response>"
  "webots_ros/node_get_number_of_contact_pointsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node_get_number_of_contact_points-response)))
  "Returns string type for a service object of type 'node_get_number_of_contact_points-response"
  "webots_ros/node_get_number_of_contact_pointsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<node_get_number_of_contact_points-response>)))
  "Returns md5sum for a message object of type '<node_get_number_of_contact_points-response>"
  "50947605d2f8a029d23873d02662ef1b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'node_get_number_of_contact_points-response)))
  "Returns md5sum for a message object of type 'node_get_number_of_contact_points-response"
  "50947605d2f8a029d23873d02662ef1b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<node_get_number_of_contact_points-response>)))
  "Returns full string definition for message of type '<node_get_number_of_contact_points-response>"
  (cl:format cl:nil "int32 numberOfContactPoints~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'node_get_number_of_contact_points-response)))
  "Returns full string definition for message of type 'node_get_number_of_contact_points-response"
  (cl:format cl:nil "int32 numberOfContactPoints~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <node_get_number_of_contact_points-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <node_get_number_of_contact_points-response>))
  "Converts a ROS message object to a list"
  (cl:list 'node_get_number_of_contact_points-response
    (cl:cons ':numberOfContactPoints (numberOfContactPoints msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'node_get_number_of_contact_points)))
  'node_get_number_of_contact_points-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'node_get_number_of_contact_points)))
  'node_get_number_of_contact_points-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node_get_number_of_contact_points)))
  "Returns string type for a service object of type '<node_get_number_of_contact_points>"
  "webots_ros/node_get_number_of_contact_points")