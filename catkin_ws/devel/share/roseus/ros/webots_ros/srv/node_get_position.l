;; Auto-generated. Do not edit!


(when (boundp 'webots_ros::node_get_position)
  (if (not (find-package "WEBOTS_ROS"))
    (make-package "WEBOTS_ROS"))
  (shadow 'node_get_position (find-package "WEBOTS_ROS")))
(unless (find-package "WEBOTS_ROS::NODE_GET_POSITION")
  (make-package "WEBOTS_ROS::NODE_GET_POSITION"))
(unless (find-package "WEBOTS_ROS::NODE_GET_POSITIONREQUEST")
  (make-package "WEBOTS_ROS::NODE_GET_POSITIONREQUEST"))
(unless (find-package "WEBOTS_ROS::NODE_GET_POSITIONRESPONSE")
  (make-package "WEBOTS_ROS::NODE_GET_POSITIONRESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass webots_ros::node_get_positionRequest
  :super ros::object
  :slots (_node ))

(defmethod webots_ros::node_get_positionRequest
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

(defclass webots_ros::node_get_positionResponse
  :super ros::object
  :slots (_position ))

(defmethod webots_ros::node_get_positionResponse
  (:init
   (&key
    ((:position __position) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _position __position)
   self)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _position
       (send _position :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;;
   self)
  )

(defclass webots_ros::node_get_position
  :super ros::object
  :slots ())

(setf (get webots_ros::node_get_position :md5sum-) "a7fd7bab623637fe72e0ee179149fc41")
(setf (get webots_ros::node_get_position :datatype-) "webots_ros/node_get_position")
(setf (get webots_ros::node_get_position :request) webots_ros::node_get_positionRequest)
(setf (get webots_ros::node_get_position :response) webots_ros::node_get_positionResponse)

(defmethod webots_ros::node_get_positionRequest
  (:response () (instance webots_ros::node_get_positionResponse :init)))

(setf (get webots_ros::node_get_positionRequest :md5sum-) "a7fd7bab623637fe72e0ee179149fc41")
(setf (get webots_ros::node_get_positionRequest :datatype-) "webots_ros/node_get_positionRequest")
(setf (get webots_ros::node_get_positionRequest :definition-)
      "uint64 node
---
geometry_msgs/Point position


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")

(setf (get webots_ros::node_get_positionResponse :md5sum-) "a7fd7bab623637fe72e0ee179149fc41")
(setf (get webots_ros::node_get_positionResponse :datatype-) "webots_ros/node_get_positionResponse")
(setf (get webots_ros::node_get_positionResponse :definition-)
      "uint64 node
---
geometry_msgs/Point position


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")



(provide :webots_ros/node_get_position "a7fd7bab623637fe72e0ee179149fc41")


