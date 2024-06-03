;; Auto-generated. Do not edit!


(when (boundp 'webots_ros::node_get_field)
  (if (not (find-package "WEBOTS_ROS"))
    (make-package "WEBOTS_ROS"))
  (shadow 'node_get_field (find-package "WEBOTS_ROS")))
(unless (find-package "WEBOTS_ROS::NODE_GET_FIELD")
  (make-package "WEBOTS_ROS::NODE_GET_FIELD"))
(unless (find-package "WEBOTS_ROS::NODE_GET_FIELDREQUEST")
  (make-package "WEBOTS_ROS::NODE_GET_FIELDREQUEST"))
(unless (find-package "WEBOTS_ROS::NODE_GET_FIELDRESPONSE")
  (make-package "WEBOTS_ROS::NODE_GET_FIELDRESPONSE"))

(in-package "ROS")





(defclass webots_ros::node_get_fieldRequest
  :super ros::object
  :slots (_node _fieldName _proto ))

(defmethod webots_ros::node_get_fieldRequest
  (:init
   (&key
    ((:node __node) 0)
    ((:fieldName __fieldName) "")
    ((:proto __proto) nil)
    )
   (send-super :init)
   (setq _node (round __node))
   (setq _fieldName (string __fieldName))
   (setq _proto __proto)
   self)
  (:node
   (&optional __node)
   (if __node (setq _node __node)) _node)
  (:fieldName
   (&optional __fieldName)
   (if __fieldName (setq _fieldName __fieldName)) _fieldName)
  (:proto
   (&optional (__proto :null))
   (if (not (eq __proto :null)) (setq _proto __proto)) _proto)
  (:serialization-length
   ()
   (+
    ;; uint64 _node
    8
    ;; string _fieldName
    4 (length _fieldName)
    ;; bool _proto
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
     ;; string _fieldName
       (write-long (length _fieldName) s) (princ _fieldName s)
     ;; bool _proto
       (if _proto (write-byte -1 s) (write-byte 0 s))
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
   ;; string _fieldName
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _fieldName (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _proto
     (setq _proto (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass webots_ros::node_get_fieldResponse
  :super ros::object
  :slots (_field ))

(defmethod webots_ros::node_get_fieldResponse
  (:init
   (&key
    ((:field __field) 0)
    )
   (send-super :init)
   (setq _field (round __field))
   self)
  (:field
   (&optional __field)
   (if __field (setq _field __field)) _field)
  (:serialization-length
   ()
   (+
    ;; uint64 _field
    8
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
   ;;
   self)
  )

(defclass webots_ros::node_get_field
  :super ros::object
  :slots ())

(setf (get webots_ros::node_get_field :md5sum-) "80105ddcb86dd98488ad3cf099686b86")
(setf (get webots_ros::node_get_field :datatype-) "webots_ros/node_get_field")
(setf (get webots_ros::node_get_field :request) webots_ros::node_get_fieldRequest)
(setf (get webots_ros::node_get_field :response) webots_ros::node_get_fieldResponse)

(defmethod webots_ros::node_get_fieldRequest
  (:response () (instance webots_ros::node_get_fieldResponse :init)))

(setf (get webots_ros::node_get_fieldRequest :md5sum-) "80105ddcb86dd98488ad3cf099686b86")
(setf (get webots_ros::node_get_fieldRequest :datatype-) "webots_ros/node_get_fieldRequest")
(setf (get webots_ros::node_get_fieldRequest :definition-)
      "uint64 node
string fieldName
bool proto
---
uint64 field

")

(setf (get webots_ros::node_get_fieldResponse :md5sum-) "80105ddcb86dd98488ad3cf099686b86")
(setf (get webots_ros::node_get_fieldResponse :datatype-) "webots_ros/node_get_fieldResponse")
(setf (get webots_ros::node_get_fieldResponse :definition-)
      "uint64 node
string fieldName
bool proto
---
uint64 field

")



(provide :webots_ros/node_get_field "80105ddcb86dd98488ad3cf099686b86")


