; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude display_draw_polygon-request.msg.html

(cl:defclass <display_draw_polygon-request> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (y
    :reader y
    :initarg :y
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (size
    :reader size
    :initarg :size
    :type cl:integer
    :initform 0))
)

(cl:defclass display_draw_polygon-request (<display_draw_polygon-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <display_draw_polygon-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'display_draw_polygon-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<display_draw_polygon-request> is deprecated: use webots_ros-srv:display_draw_polygon-request instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <display_draw_polygon-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:x-val is deprecated.  Use webots_ros-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <display_draw_polygon-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:y-val is deprecated.  Use webots_ros-srv:y instead.")
  (y m))

(cl:ensure-generic-function 'size-val :lambda-list '(m))
(cl:defmethod size-val ((m <display_draw_polygon-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:size-val is deprecated.  Use webots_ros-srv:size instead.")
  (size m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <display_draw_polygon-request>) ostream)
  "Serializes a message object of type '<display_draw_polygon-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'x))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'y))
  (cl:let* ((signed (cl:slot-value msg 'size)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <display_draw_polygon-request>) istream)
  "Deserializes a message object of type '<display_draw_polygon-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'x) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'x)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'y) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'y)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'size) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<display_draw_polygon-request>)))
  "Returns string type for a service object of type '<display_draw_polygon-request>"
  "webots_ros/display_draw_polygonRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'display_draw_polygon-request)))
  "Returns string type for a service object of type 'display_draw_polygon-request"
  "webots_ros/display_draw_polygonRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<display_draw_polygon-request>)))
  "Returns md5sum for a message object of type '<display_draw_polygon-request>"
  "dfa1f0ed4de4cc45db83bc60add40eb6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'display_draw_polygon-request)))
  "Returns md5sum for a message object of type 'display_draw_polygon-request"
  "dfa1f0ed4de4cc45db83bc60add40eb6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<display_draw_polygon-request>)))
  "Returns full string definition for message of type '<display_draw_polygon-request>"
  (cl:format cl:nil "int32[] x~%int32[] y~%int32 size~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'display_draw_polygon-request)))
  "Returns full string definition for message of type 'display_draw_polygon-request"
  (cl:format cl:nil "int32[] x~%int32[] y~%int32 size~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <display_draw_polygon-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'x) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'y) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <display_draw_polygon-request>))
  "Converts a ROS message object to a list"
  (cl:list 'display_draw_polygon-request
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':size (size msg))
))
;//! \htmlinclude display_draw_polygon-response.msg.html

(cl:defclass <display_draw_polygon-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:fixnum
    :initform 0))
)

(cl:defclass display_draw_polygon-response (<display_draw_polygon-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <display_draw_polygon-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'display_draw_polygon-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<display_draw_polygon-response> is deprecated: use webots_ros-srv:display_draw_polygon-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <display_draw_polygon-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:success-val is deprecated.  Use webots_ros-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <display_draw_polygon-response>) ostream)
  "Serializes a message object of type '<display_draw_polygon-response>"
  (cl:let* ((signed (cl:slot-value msg 'success)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <display_draw_polygon-response>) istream)
  "Deserializes a message object of type '<display_draw_polygon-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'success) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<display_draw_polygon-response>)))
  "Returns string type for a service object of type '<display_draw_polygon-response>"
  "webots_ros/display_draw_polygonResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'display_draw_polygon-response)))
  "Returns string type for a service object of type 'display_draw_polygon-response"
  "webots_ros/display_draw_polygonResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<display_draw_polygon-response>)))
  "Returns md5sum for a message object of type '<display_draw_polygon-response>"
  "dfa1f0ed4de4cc45db83bc60add40eb6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'display_draw_polygon-response)))
  "Returns md5sum for a message object of type 'display_draw_polygon-response"
  "dfa1f0ed4de4cc45db83bc60add40eb6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<display_draw_polygon-response>)))
  "Returns full string definition for message of type '<display_draw_polygon-response>"
  (cl:format cl:nil "int8 success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'display_draw_polygon-response)))
  "Returns full string definition for message of type 'display_draw_polygon-response"
  (cl:format cl:nil "int8 success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <display_draw_polygon-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <display_draw_polygon-response>))
  "Converts a ROS message object to a list"
  (cl:list 'display_draw_polygon-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'display_draw_polygon)))
  'display_draw_polygon-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'display_draw_polygon)))
  'display_draw_polygon-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'display_draw_polygon)))
  "Returns string type for a service object of type '<display_draw_polygon>"
  "webots_ros/display_draw_polygon")