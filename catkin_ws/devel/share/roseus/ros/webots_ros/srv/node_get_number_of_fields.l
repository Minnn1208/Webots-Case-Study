;; Auto-generated. Do not edit!


(when (boundp 'webots_ros::node_get_number_of_fields)
  (if (not (find-package "WEBOTS_ROS"))
    (make-package "WEBOTS_ROS"))
  (shadow 'node_get_number_of_fields (find-package "WEBOTS_ROS")))
(unless (find-package "WEBOTS_ROS::NODE_GET_NUMBER_OF_FIELDS")
  (make-package "WEBOTS_ROS::NODE_GET_NUMBER_OF_FIELDS"))
(unless (find-package "WEBOTS_ROS::NODE_GET_NUMBER_OF_FIELDSREQUEST")
  (make-package "WEBOTS_ROS::NODE_GET_NUMBER_OF_FIELDSREQUEST"))
(unless (find-package "WEBOTS_ROS::NODE_GET_NUMBER_OF_FIELDSRESPONSE")
  (make-package "WEBOTS_ROS::NODE_GET_NUMBER_OF_FIELDSRESPONSE"))

(in-package "ROS")





(defclass webots_ros::node_get_number_of_fieldsRequest
  :super ros::object
  :slots (_node _proto ))

(defmethod webots_ros::node_get_number_of_fieldsRequest
  (:init
   (&key
    ((:node __node) 0)
    ((:proto __proto) nil)
    )
   (send-super :init)
   (setq _node (round __node))
   (setq _proto __proto)
   self)
  (:node
   (&optional __node)
   (if __node (setq _node __node)) _node)
  (:proto
   (&optional (__proto :null))
   (if (not (eq __proto :null)) (setq _proto __proto)) _proto)
  (:serialization-length
   ()
   (+
    ;; uint64 _node
    8
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
   ;; bool _proto
     (setq _proto (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass webots_ros::node_get_number_of_fieldsResponse
  :super ros::object
  :slots (_value ))

(defmethod webots_ros::node_get_number_of_fieldsResponse
  (:init
   (&key
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _value (round __value))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; int32 _value
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _value
       (write-long _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _value
     (setq _value (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass webots_ros::node_get_number_of_fields
  :super ros::object
  :slots ())

(setf (get webots_ros::node_get_number_of_fields :md5sum-) "921bd6384f46ac8733931a50b9739877")
(setf (get webots_ros::node_get_number_of_fields :datatype-) "webots_ros/node_get_number_of_fields")
(setf (get webots_ros::node_get_number_of_fields :request) webots_ros::node_get_number_of_fieldsRequest)
(setf (get webots_ros::node_get_number_of_fields :response) webots_ros::node_get_number_of_fieldsResponse)

(defmethod webots_ros::node_get_number_of_fieldsRequest
  (:response () (instance webots_ros::node_get_number_of_fieldsResponse :init)))

(setf (get webots_ros::node_get_number_of_fieldsRequest :md5sum-) "921bd6384f46ac8733931a50b9739877")
(setf (get webots_ros::node_get_number_of_fieldsRequest :datatype-) "webots_ros/node_get_number_of_fieldsRequest")
(setf (get webots_ros::node_get_number_of_fieldsRequest :definition-)
      "uint64 node
bool proto
---
int32 value

")

(setf (get webots_ros::node_get_number_of_fieldsResponse :md5sum-) "921bd6384f46ac8733931a50b9739877")
(setf (get webots_ros::node_get_number_of_fieldsResponse :datatype-) "webots_ros/node_get_number_of_fieldsResponse")
(setf (get webots_ros::node_get_number_of_fieldsResponse :definition-)
      "uint64 node
bool proto
---
int32 value

")



(provide :webots_ros/node_get_number_of_fields "921bd6384f46ac8733931a50b9739877")


