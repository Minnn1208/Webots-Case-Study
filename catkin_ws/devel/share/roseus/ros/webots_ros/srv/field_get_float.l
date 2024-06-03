;; Auto-generated. Do not edit!


(when (boundp 'webots_ros::field_get_float)
  (if (not (find-package "WEBOTS_ROS"))
    (make-package "WEBOTS_ROS"))
  (shadow 'field_get_float (find-package "WEBOTS_ROS")))
(unless (find-package "WEBOTS_ROS::FIELD_GET_FLOAT")
  (make-package "WEBOTS_ROS::FIELD_GET_FLOAT"))
(unless (find-package "WEBOTS_ROS::FIELD_GET_FLOATREQUEST")
  (make-package "WEBOTS_ROS::FIELD_GET_FLOATREQUEST"))
(unless (find-package "WEBOTS_ROS::FIELD_GET_FLOATRESPONSE")
  (make-package "WEBOTS_ROS::FIELD_GET_FLOATRESPONSE"))

(in-package "ROS")





(defclass webots_ros::field_get_floatRequest
  :super ros::object
  :slots (_field _index ))

(defmethod webots_ros::field_get_floatRequest
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

(defclass webots_ros::field_get_floatResponse
  :super ros::object
  :slots (_value ))

(defmethod webots_ros::field_get_floatResponse
  (:init
   (&key
    ((:value __value) 0.0)
    )
   (send-super :init)
   (setq _value (float __value))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; float64 _value
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _value
       (sys::poke _value (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _value
     (setq _value (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass webots_ros::field_get_float
  :super ros::object
  :slots ())

(setf (get webots_ros::field_get_float :md5sum-) "c2cc517501b50e0a3d3b0ee8172ea3fb")
(setf (get webots_ros::field_get_float :datatype-) "webots_ros/field_get_float")
(setf (get webots_ros::field_get_float :request) webots_ros::field_get_floatRequest)
(setf (get webots_ros::field_get_float :response) webots_ros::field_get_floatResponse)

(defmethod webots_ros::field_get_floatRequest
  (:response () (instance webots_ros::field_get_floatResponse :init)))

(setf (get webots_ros::field_get_floatRequest :md5sum-) "c2cc517501b50e0a3d3b0ee8172ea3fb")
(setf (get webots_ros::field_get_floatRequest :datatype-) "webots_ros/field_get_floatRequest")
(setf (get webots_ros::field_get_floatRequest :definition-)
      "uint64 field
int32 index
---
float64 value

")

(setf (get webots_ros::field_get_floatResponse :md5sum-) "c2cc517501b50e0a3d3b0ee8172ea3fb")
(setf (get webots_ros::field_get_floatResponse :datatype-) "webots_ros/field_get_floatResponse")
(setf (get webots_ros::field_get_floatResponse :definition-)
      "uint64 field
int32 index
---
float64 value

")



(provide :webots_ros/field_get_float "c2cc517501b50e0a3d3b0ee8172ea3fb")


