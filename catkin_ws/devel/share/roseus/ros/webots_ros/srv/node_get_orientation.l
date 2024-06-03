;; Auto-generated. Do not edit!


(when (boundp 'webots_ros::node_get_orientation)
  (if (not (find-package "WEBOTS_ROS"))
    (make-package "WEBOTS_ROS"))
  (shadow 'node_get_orientation (find-package "WEBOTS_ROS")))
(unless (find-package "WEBOTS_ROS::NODE_GET_ORIENTATION")
  (make-package "WEBOTS_ROS::NODE_GET_ORIENTATION"))
(unless (find-package "WEBOTS_ROS::NODE_GET_ORIENTATIONREQUEST")
  (make-package "WEBOTS_ROS::NODE_GET_ORIENTATIONREQUEST"))
(unless (find-package "WEBOTS_ROS::NODE_GET_ORIENTATIONRESPONSE")
  (make-package "WEBOTS_ROS::NODE_GET_ORIENTATIONRESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass webots_ros::node_get_orientationRequest
  :super ros::object
  :slots (_node ))

(defmethod webots_ros::node_get_orientationRequest
  (:init
   (&key
    ((:node __node) 0)
    )
   (send-super :init)
   (setq _node (round __node))
   self)
  (:node
   (&optional __node)
   (if __node (setq _node __node)) _node)
  (:serialization-length
   ()
   (+
    ;; uint64 _node
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
   ;;
   self)
  )

(defclass webots_ros::node_get_orientationResponse
  :super ros::object
  :slots (_orientation ))

(defmethod webots_ros::node_get_orientationResponse
  (:init
   (&key
    ((:orientation __orientation) (instance geometry_msgs::Quaternion :init))
    )
   (send-super :init)
   (setq _orientation __orientation)
   self)
  (:orientation
   (&rest __orientation)
   (if (keywordp (car __orientation))
       (send* _orientation __orientation)
     (progn
       (if __orientation (setq _orientation (car __orientation)))
       _orientation)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Quaternion _orientation
    (send _orientation :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Quaternion _orientation
       (send _orientation :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Quaternion _orientation
     (send _orientation :deserialize buf ptr-) (incf ptr- (send _orientation :serialization-length))
   ;;
   self)
  )

(defclass webots_ros::node_get_orientation
  :super ros::object
  :slots ())

(setf (get webots_ros::node_get_orientation :md5sum-) "0ee7131d7182bae6debc79ddfcc90ddd")
(setf (get webots_ros::node_get_orientation :datatype-) "webots_ros/node_get_orientation")
(setf (get webots_ros::node_get_orientation :request) webots_ros::node_get_orientationRequest)
(setf (get webots_ros::node_get_orientation :response) webots_ros::node_get_orientationResponse)

(defmethod webots_ros::node_get_orientationRequest
  (:response () (instance webots_ros::node_get_orientationResponse :init)))

(setf (get webots_ros::node_get_orientationRequest :md5sum-) "0ee7131d7182bae6debc79ddfcc90ddd")
(setf (get webots_ros::node_get_orientationRequest :datatype-) "webots_ros/node_get_orientationRequest")
(setf (get webots_ros::node_get_orientationRequest :definition-)
      "uint64 node
---
geometry_msgs/Quaternion orientation


================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")

(setf (get webots_ros::node_get_orientationResponse :md5sum-) "0ee7131d7182bae6debc79ddfcc90ddd")
(setf (get webots_ros::node_get_orientationResponse :datatype-) "webots_ros/node_get_orientationResponse")
(setf (get webots_ros::node_get_orientationResponse :definition-)
      "uint64 node
---
geometry_msgs/Quaternion orientation


================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")



(provide :webots_ros/node_get_orientation "0ee7131d7182bae6debc79ddfcc90ddd")


