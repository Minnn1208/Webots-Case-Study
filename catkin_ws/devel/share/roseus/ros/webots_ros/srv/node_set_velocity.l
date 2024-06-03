;; Auto-generated. Do not edit!


(when (boundp 'webots_ros::node_set_velocity)
  (if (not (find-package "WEBOTS_ROS"))
    (make-package "WEBOTS_ROS"))
  (shadow 'node_set_velocity (find-package "WEBOTS_ROS")))
(unless (find-package "WEBOTS_ROS::NODE_SET_VELOCITY")
  (make-package "WEBOTS_ROS::NODE_SET_VELOCITY"))
(unless (find-package "WEBOTS_ROS::NODE_SET_VELOCITYREQUEST")
  (make-package "WEBOTS_ROS::NODE_SET_VELOCITYREQUEST"))
(unless (find-package "WEBOTS_ROS::NODE_SET_VELOCITYRESPONSE")
  (make-package "WEBOTS_ROS::NODE_SET_VELOCITYRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass webots_ros::node_set_velocityRequest
  :super ros::object
  :slots (_node _velocity ))

(defmethod webots_ros::node_set_velocityRequest
  (:init
   (&key
    ((:node __node) 0)
    ((:velocity __velocity) (instance geometry_msgs::Twist :init))
    )
   (send-super :init)
   (setq _node (round __node))
   (setq _velocity __velocity)
   self)
  (:node
   (&optional __node)
   (if __node (setq _node __node)) _node)
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:serialization-length
   ()
   (+
    ;; uint64 _node
    8
    ;; geometry_msgs/Twist _velocity
    (send _velocity :serialization-length)
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
     ;; geometry_msgs/Twist _velocity
       (send _velocity :serialize s)
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
   ;; geometry_msgs/Twist _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;;
   self)
  )

(defclass webots_ros::node_set_velocityResponse
  :super ros::object
  :slots (_success ))

(defmethod webots_ros::node_set_velocityResponse
  (:init
   (&key
    ((:success __success) 0)
    )
   (send-super :init)
   (setq _success (round __success))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; int32 _success
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _success
       (write-long _success s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _success
     (setq _success (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass webots_ros::node_set_velocity
  :super ros::object
  :slots ())

(setf (get webots_ros::node_set_velocity :md5sum-) "bbe5d1dd420b6f268ed5aee8db339832")
(setf (get webots_ros::node_set_velocity :datatype-) "webots_ros/node_set_velocity")
(setf (get webots_ros::node_set_velocity :request) webots_ros::node_set_velocityRequest)
(setf (get webots_ros::node_set_velocity :response) webots_ros::node_set_velocityResponse)

(defmethod webots_ros::node_set_velocityRequest
  (:response () (instance webots_ros::node_set_velocityResponse :init)))

(setf (get webots_ros::node_set_velocityRequest :md5sum-) "bbe5d1dd420b6f268ed5aee8db339832")
(setf (get webots_ros::node_set_velocityRequest :datatype-) "webots_ros/node_set_velocityRequest")
(setf (get webots_ros::node_set_velocityRequest :definition-)
      "uint64 node
geometry_msgs/Twist velocity

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

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
---
int32 success

")

(setf (get webots_ros::node_set_velocityResponse :md5sum-) "bbe5d1dd420b6f268ed5aee8db339832")
(setf (get webots_ros::node_set_velocityResponse :datatype-) "webots_ros/node_set_velocityResponse")
(setf (get webots_ros::node_set_velocityResponse :definition-)
      "uint64 node
geometry_msgs/Twist velocity

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

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
---
int32 success

")



(provide :webots_ros/node_set_velocity "bbe5d1dd420b6f268ed5aee8db339832")


