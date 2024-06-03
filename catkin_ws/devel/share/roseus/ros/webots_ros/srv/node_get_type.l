;; Auto-generated. Do not edit!


(when (boundp 'webots_ros::node_get_type)
  (if (not (find-package "WEBOTS_ROS"))
    (make-package "WEBOTS_ROS"))
  (shadow 'node_get_type (find-package "WEBOTS_ROS")))
(unless (find-package "WEBOTS_ROS::NODE_GET_TYPE")
  (make-package "WEBOTS_ROS::NODE_GET_TYPE"))
(unless (find-package "WEBOTS_ROS::NODE_GET_TYPEREQUEST")
  (make-package "WEBOTS_ROS::NODE_GET_TYPEREQUEST"))
(unless (find-package "WEBOTS_ROS::NODE_GET_TYPERESPONSE")
  (make-package "WEBOTS_ROS::NODE_GET_TYPERESPONSE"))

(in-package "ROS")





(defclass webots_ros::node_get_typeRequest
  :super ros::object
  :slots (_node ))

(defmethod webots_ros::node_get_typeRequest
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

(defclass webots_ros::node_get_typeResponse
  :super ros::object
  :slots (_type ))

(defmethod webots_ros::node_get_typeResponse
  (:init
   (&key
    ((:type __type) 0)
    )
   (send-super :init)
   (setq _type (round __type))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; int32 _type
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _type
       (write-long _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _type
     (setq _type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass webots_ros::node_get_type
  :super ros::object
  :slots ())

(setf (get webots_ros::node_get_type :md5sum-) "48b94f6c29e10052dd1b2a32f0d1feea")
(setf (get webots_ros::node_get_type :datatype-) "webots_ros/node_get_type")
(setf (get webots_ros::node_get_type :request) webots_ros::node_get_typeRequest)
(setf (get webots_ros::node_get_type :response) webots_ros::node_get_typeResponse)

(defmethod webots_ros::node_get_typeRequest
  (:response () (instance webots_ros::node_get_typeResponse :init)))

(setf (get webots_ros::node_get_typeRequest :md5sum-) "48b94f6c29e10052dd1b2a32f0d1feea")
(setf (get webots_ros::node_get_typeRequest :datatype-) "webots_ros/node_get_typeRequest")
(setf (get webots_ros::node_get_typeRequest :definition-)
      "uint64 node
---
int32 type

")

(setf (get webots_ros::node_get_typeResponse :md5sum-) "48b94f6c29e10052dd1b2a32f0d1feea")
(setf (get webots_ros::node_get_typeResponse :datatype-) "webots_ros/node_get_typeResponse")
(setf (get webots_ros::node_get_typeResponse :definition-)
      "uint64 node
---
int32 type

")



(provide :webots_ros/node_get_type "48b94f6c29e10052dd1b2a32f0d1feea")


