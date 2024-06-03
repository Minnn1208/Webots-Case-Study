;; Auto-generated. Do not edit!


(when (boundp 'webots_ros::node_get_pose)
  (if (not (find-package "WEBOTS_ROS"))
    (make-package "WEBOTS_ROS"))
  (shadow 'node_get_pose (find-package "WEBOTS_ROS")))
(unless (find-package "WEBOTS_ROS::NODE_GET_POSE")
  (make-package "WEBOTS_ROS::NODE_GET_POSE"))
(unless (find-package "WEBOTS_ROS::NODE_GET_POSEREQUEST")
  (make-package "WEBOTS_ROS::NODE_GET_POSEREQUEST"))
(unless (find-package "WEBOTS_ROS::NODE_GET_POSERESPONSE")
  (make-package "WEBOTS_ROS::NODE_GET_POSERESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass webots_ros::node_get_poseRequest
  :super ros::object
  :slots (_node _from_node ))

(defmethod webots_ros::node_get_poseRequest
  (:init
   (&key
    ((:node __node) 0)
    ((:from_node __from_node) 0)
    )
   (send-super :init)
   (setq _node (round __node))
   (setq _from_node (round __from_node))
   self)
  (:node
   (&optional __node)
   (if __node (setq _node __node)) _node)
  (:from_node
   (&optional __from_node)
   (if __from_node (setq _from_node __from_node)) _from_node)
  (:serialization-length
   ()
   (+
    ;; uint64 _node
    8
    ;; uint64 _from_node
    8
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
     ;; uint64 _from_node
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _from_node (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _from_node) (= (length (_from_node . bv)) 2)) ;; bignum
              (write-long (ash (elt (_from_node . bv) 0) 0) s)
              (write-long (ash (elt (_from_node . bv) 1) -1) s))
             ((and (class _from_node) (= (length (_from_node . bv)) 1)) ;; big1
              (write-long (elt (_from_node . bv) 0) s)
              (write-long (if (>= _from_node 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _from_node s)(write-long (if (>= _from_node 0) 0 #xffffffff) s)))
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
   ;; uint64 _from_node
     
#+(or :alpha :irix6 :x86_64)
      (setf _from_node (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _from_node (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass webots_ros::node_get_poseResponse
  :super ros::object
  :slots (_pose ))

(defmethod webots_ros::node_get_poseResponse
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::Transform :init))
    )
   (send-super :init)
   (setq _pose __pose)
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Transform _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Transform _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Transform _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(defclass webots_ros::node_get_pose
  :super ros::object
  :slots ())

(setf (get webots_ros::node_get_pose :md5sum-) "c971ec247720786da5fd4aa095defd52")
(setf (get webots_ros::node_get_pose :datatype-) "webots_ros/node_get_pose")
(setf (get webots_ros::node_get_pose :request) webots_ros::node_get_poseRequest)
(setf (get webots_ros::node_get_pose :response) webots_ros::node_get_poseResponse)

(defmethod webots_ros::node_get_poseRequest
  (:response () (instance webots_ros::node_get_poseResponse :init)))

(setf (get webots_ros::node_get_poseRequest :md5sum-) "c971ec247720786da5fd4aa095defd52")
(setf (get webots_ros::node_get_poseRequest :datatype-) "webots_ros/node_get_poseRequest")
(setf (get webots_ros::node_get_poseRequest :definition-)
      "uint64 node
uint64 from_node
---
geometry_msgs/Transform pose


================================================================================
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")

(setf (get webots_ros::node_get_poseResponse :md5sum-) "c971ec247720786da5fd4aa095defd52")
(setf (get webots_ros::node_get_poseResponse :datatype-) "webots_ros/node_get_poseResponse")
(setf (get webots_ros::node_get_poseResponse :definition-)
      "uint64 node
uint64 from_node
---
geometry_msgs/Transform pose


================================================================================
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")



(provide :webots_ros/node_get_pose "c971ec247720786da5fd4aa095defd52")


