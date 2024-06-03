;; Auto-generated. Do not edit!


(when (boundp 'webots_ros::field_get_node)
  (if (not (find-package "WEBOTS_ROS"))
    (make-package "WEBOTS_ROS"))
  (shadow 'field_get_node (find-package "WEBOTS_ROS")))
(unless (find-package "WEBOTS_ROS::FIELD_GET_NODE")
  (make-package "WEBOTS_ROS::FIELD_GET_NODE"))
(unless (find-package "WEBOTS_ROS::FIELD_GET_NODEREQUEST")
  (make-package "WEBOTS_ROS::FIELD_GET_NODEREQUEST"))
(unless (find-package "WEBOTS_ROS::FIELD_GET_NODERESPONSE")
  (make-package "WEBOTS_ROS::FIELD_GET_NODERESPONSE"))

(in-package "ROS")





(defclass webots_ros::field_get_nodeRequest
  :super ros::object
  :slots (_field _index ))

(defmethod webots_ros::field_get_nodeRequest
  (:init
   (&key
    ((:field __field) 0)
    ((:index __index) 0)
    )
   (send-super :init)
   (setq _field (round __field))
   (setq _index (round __index))
   self)
  (:field
   (&optional __field)
   (if __field (setq _field __field)) _field)
  (:index
   (&optional __index)
   (if __index (setq _index __index)) _index)
  (:serialization-length
   ()
   (+
    ;; uint64 _field
    8
    ;; int32 _index
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint64 _field
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _field (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _field) (= (length (_field . bv)) 2)) ;; bignum
              (write-long (ash (elt (_field . bv) 0) 0) s)
              (write-long (ash (elt (_field . bv) 1) -1) s))
             ((and (class _field) (= (length (_field . bv)) 1)) ;; big1
              (write-long (elt (_field . bv) 0) s)
              (write-long (if (>= _field 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _field s)(write-long (if (>= _field 0) 0 #xffffffff) s)))
     ;; int32 _index
       (write-long _index s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint64 _field
     
#+(or :alpha :irix6 :x86_64)
      (setf _field (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _field (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int32 _index
     (setq _index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass webots_ros::field_get_nodeResponse
  :super ros::object
  :slots (_node ))

(defmethod webots_ros::field_get_nodeResponse
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

(defclass webots_ros::field_get_node
  :super ros::object
  :slots ())

(setf (get webots_ros::field_get_node :md5sum-) "c17cafc0118b2cdcc4a632463f436156")
(setf (get webots_ros::field_get_node :datatype-) "webots_ros/field_get_node")
(setf (get webots_ros::field_get_node :request) webots_ros::field_get_nodeRequest)
(setf (get webots_ros::field_get_node :response) webots_ros::field_get_nodeResponse)

(defmethod webots_ros::field_get_nodeRequest
  (:response () (instance webots_ros::field_get_nodeResponse :init)))

(setf (get webots_ros::field_get_nodeRequest :md5sum-) "c17cafc0118b2cdcc4a632463f436156")
(setf (get webots_ros::field_get_nodeRequest :datatype-) "webots_ros/field_get_nodeRequest")
(setf (get webots_ros::field_get_nodeRequest :definition-)
      "uint64 field
int32 index
---
uint64 node

")

(setf (get webots_ros::field_get_nodeResponse :md5sum-) "c17cafc0118b2cdcc4a632463f436156")
(setf (get webots_ros::field_get_nodeResponse :datatype-) "webots_ros/field_get_nodeResponse")
(setf (get webots_ros::field_get_nodeResponse :definition-)
      "uint64 field
int32 index
---
uint64 node

")



(provide :webots_ros/field_get_node "c17cafc0118b2cdcc4a632463f436156")


