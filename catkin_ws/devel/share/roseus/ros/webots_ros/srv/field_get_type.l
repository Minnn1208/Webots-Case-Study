;; Auto-generated. Do not edit!


(when (boundp 'webots_ros::field_get_type)
  (if (not (find-package "WEBOTS_ROS"))
    (make-package "WEBOTS_ROS"))
  (shadow 'field_get_type (find-package "WEBOTS_ROS")))
(unless (find-package "WEBOTS_ROS::FIELD_GET_TYPE")
  (make-package "WEBOTS_ROS::FIELD_GET_TYPE"))
(unless (find-package "WEBOTS_ROS::FIELD_GET_TYPEREQUEST")
  (make-package "WEBOTS_ROS::FIELD_GET_TYPEREQUEST"))
(unless (find-package "WEBOTS_ROS::FIELD_GET_TYPERESPONSE")
  (make-package "WEBOTS_ROS::FIELD_GET_TYPERESPONSE"))

(in-package "ROS")





(defclass webots_ros::field_get_typeRequest
  :super ros::object
  :slots (_field ))

(defmethod webots_ros::field_get_typeRequest
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

(defclass webots_ros::field_get_typeResponse
  :super ros::object
  :slots (_type ))

(defmethod webots_ros::field_get_typeResponse
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

(defclass webots_ros::field_get_type
  :super ros::object
  :slots ())

(setf (get webots_ros::field_get_type :md5sum-) "0455d6401eca2603b986dbfe1a1e17b4")
(setf (get webots_ros::field_get_type :datatype-) "webots_ros/field_get_type")
(setf (get webots_ros::field_get_type :request) webots_ros::field_get_typeRequest)
(setf (get webots_ros::field_get_type :response) webots_ros::field_get_typeResponse)

(defmethod webots_ros::field_get_typeRequest
  (:response () (instance webots_ros::field_get_typeResponse :init)))

(setf (get webots_ros::field_get_typeRequest :md5sum-) "0455d6401eca2603b986dbfe1a1e17b4")
(setf (get webots_ros::field_get_typeRequest :datatype-) "webots_ros/field_get_typeRequest")
(setf (get webots_ros::field_get_typeRequest :definition-)
      "uint64 field
---
int32 type

")

(setf (get webots_ros::field_get_typeResponse :md5sum-) "0455d6401eca2603b986dbfe1a1e17b4")
(setf (get webots_ros::field_get_typeResponse :datatype-) "webots_ros/field_get_typeResponse")
(setf (get webots_ros::field_get_typeResponse :definition-)
      "uint64 field
---
int32 type

")



(provide :webots_ros/field_get_type "0455d6401eca2603b986dbfe1a1e17b4")


