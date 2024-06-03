;; Auto-generated. Do not edit!


(when (boundp 'webots_ros::node_get_parent_node)
  (if (not (find-package "WEBOTS_ROS"))
    (make-package "WEBOTS_ROS"))
  (shadow 'node_get_parent_node (find-package "WEBOTS_ROS")))
(unless (find-package "WEBOTS_ROS::NODE_GET_PARENT_NODE")
  (make-package "WEBOTS_ROS::NODE_GET_PARENT_NODE"))
(unless (find-package "WEBOTS_ROS::NODE_GET_PARENT_NODEREQUEST")
  (make-package "WEBOTS_ROS::NODE_GET_PARENT_NODEREQUEST"))
(unless (find-package "WEBOTS_ROS::NODE_GET_PARENT_NODERESPONSE")
  (make-package "WEBOTS_ROS::NODE_GET_PARENT_NODERESPONSE"))

(in-package "ROS")





(defclass webots_ros::node_get_parent_nodeRequest
  :super ros::object
  :slots (_node ))

(defmethod webots_ros::node_get_parent_nodeRequest
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

(defclass webots_ros::node_get_parent_nodeResponse
  :super ros::object
  :slots (_node ))

(defmethod webots_ros::node_get_parent_nodeResponse
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

(defclass webots_ros::node_get_parent_node
  :super ros::object
  :slots ())

(setf (get webots_ros::node_get_parent_node :md5sum-) "818a5363f8ab50910f19b3cf3acc208b")
(setf (get webots_ros::node_get_parent_node :datatype-) "webots_ros/node_get_parent_node")
(setf (get webots_ros::node_get_parent_node :request) webots_ros::node_get_parent_nodeRequest)
(setf (get webots_ros::node_get_parent_node :response) webots_ros::node_get_parent_nodeResponse)

(defmethod webots_ros::node_get_parent_nodeRequest
  (:response () (instance webots_ros::node_get_parent_nodeResponse :init)))

(setf (get webots_ros::node_get_parent_nodeRequest :md5sum-) "818a5363f8ab50910f19b3cf3acc208b")
(setf (get webots_ros::node_get_parent_nodeRequest :datatype-) "webots_ros/node_get_parent_nodeRequest")
(setf (get webots_ros::node_get_parent_nodeRequest :definition-)
      "uint64 node
---
uint64 node

")

(setf (get webots_ros::node_get_parent_nodeResponse :md5sum-) "818a5363f8ab50910f19b3cf3acc208b")
(setf (get webots_ros::node_get_parent_nodeResponse :datatype-) "webots_ros/node_get_parent_nodeResponse")
(setf (get webots_ros::node_get_parent_nodeResponse :definition-)
      "uint64 node
---
uint64 node

")



(provide :webots_ros/node_get_parent_node "818a5363f8ab50910f19b3cf3acc208b")


