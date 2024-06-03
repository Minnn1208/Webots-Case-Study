;; Auto-generated. Do not edit!


(when (boundp 'webots_ros::node_get_contact_points)
  (if (not (find-package "WEBOTS_ROS"))
    (make-package "WEBOTS_ROS"))
  (shadow 'node_get_contact_points (find-package "WEBOTS_ROS")))
(unless (find-package "WEBOTS_ROS::NODE_GET_CONTACT_POINTS")
  (make-package "WEBOTS_ROS::NODE_GET_CONTACT_POINTS"))
(unless (find-package "WEBOTS_ROS::NODE_GET_CONTACT_POINTSREQUEST")
  (make-package "WEBOTS_ROS::NODE_GET_CONTACT_POINTSREQUEST"))
(unless (find-package "WEBOTS_ROS::NODE_GET_CONTACT_POINTSRESPONSE")
  (make-package "WEBOTS_ROS::NODE_GET_CONTACT_POINTSRESPONSE"))

(in-package "ROS")





(defclass webots_ros::node_get_contact_pointsRequest
  :super ros::object
  :slots (_node _include_descendants ))

(defmethod webots_ros::node_get_contact_pointsRequest
  (:init
   (&key
    ((:node __node) 0)
    ((:include_descendants __include_descendants) nil)
    )
   (send-super :init)
   (setq _node (round __node))
   (setq _include_descendants __include_descendants)
   self)
  (:node
   (&optional __node)
   (if __node (setq _node __node)) _node)
  (:include_descendants
   (&optional (__include_descendants :null))
   (if (not (eq __include_descendants :null)) (setq _include_descendants __include_descendants)) _include_descendants)
  (:serialization-length
   ()
   (+
    ;; uint64 _node
    8
    ;; bool _include_descendants
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint64 _node
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _node (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _node) (= (length (_node . bv)) 2)) ;; bignum
              (write-long (ash (elt (_node . bv) 0) 0) s)
              (write-long (ash (elt (_node . bv) 1) -1) s))
             ((and (class _node) (= (length (_node . bv)) 1)) ;; big1
              (write-long (elt (_node . bv) 0) s)
              (write-long (if (>= _node 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _node s)(write-long (if (>= _node 0) 0 #xffffffff) s)))
     ;; bool _include_descendants
       (if _include_descendants (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint64 _node
     
#+(or :alpha :irix6 :x86_64)
      (setf _node (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _node (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; bool _include_descendants
     (setq _include_descendants (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass webots_ros::node_get_contact_pointsResponse
  :super ros::object
  :slots (_contact_points ))

(defmethod webots_ros::node_get_contact_pointsResponse
  (:init
   (&key
    ((:contact_points __contact_points) ())
    )
   (send-super :init)
   (setq _contact_points __contact_points)
   self)
  (:contact_points
   (&rest __contact_points)
   (if (keywordp (car __contact_points))
       (send* _contact_points __contact_points)
     (progn
       (if __contact_points (setq _contact_points (car __contact_points)))
       _contact_points)))
  (:serialization-length
   ()
   (+
    ;; webots_ros/ContactPoint[] _contact_points
    (apply #'+ (send-all _contact_points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; webots_ros/ContactPoint[] _contact_points
     (write-long (length _contact_points) s)
     (dolist (elem _contact_points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; webots_ros/ContactPoint[] _contact_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _contact_points (let (r) (dotimes (i n) (push (instance webots_ros::ContactPoint :init) r)) r))
     (dolist (elem- _contact_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass webots_ros::node_get_contact_points
  :super ros::object
  :slots ())

(setf (get webots_ros::node_get_contact_points :md5sum-) "2b8ca1a0f35ff5c1915577923081855f")
(setf (get webots_ros::node_get_contact_points :datatype-) "webots_ros/node_get_contact_points")
(setf (get webots_ros::node_get_contact_points :request) webots_ros::node_get_contact_pointsRequest)
(setf (get webots_ros::node_get_contact_points :response) webots_ros::node_get_contact_pointsResponse)

(defmethod webots_ros::node_get_contact_pointsRequest
  (:response () (instance webots_ros::node_get_contact_pointsResponse :init)))

(setf (get webots_ros::node_get_contact_pointsRequest :md5sum-) "2b8ca1a0f35ff5c1915577923081855f")
(setf (get webots_ros::node_get_contact_pointsRequest :datatype-) "webots_ros/node_get_contact_pointsRequest")
(setf (get webots_ros::node_get_contact_pointsRequest :definition-)
      "uint64 node
bool include_descendants
---
webots_ros/ContactPoint[] contact_points


================================================================================
MSG: webots_ros/ContactPoint
geometry_msgs/Point point
int32 node_id

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")

(setf (get webots_ros::node_get_contact_pointsResponse :md5sum-) "2b8ca1a0f35ff5c1915577923081855f")
(setf (get webots_ros::node_get_contact_pointsResponse :datatype-) "webots_ros/node_get_contact_pointsResponse")
(setf (get webots_ros::node_get_contact_pointsResponse :definition-)
      "uint64 node
bool include_descendants
---
webots_ros/ContactPoint[] contact_points


================================================================================
MSG: webots_ros/ContactPoint
geometry_msgs/Point point
int32 node_id

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")



(provide :webots_ros/node_get_contact_points "2b8ca1a0f35ff5c1915577923081855f")


