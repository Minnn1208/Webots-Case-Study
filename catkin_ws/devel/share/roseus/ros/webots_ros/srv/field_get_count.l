;; Auto-generated. Do not edit!


(when (boundp 'webots_ros::field_get_count)
  (if (not (find-package "WEBOTS_ROS"))
    (make-package "WEBOTS_ROS"))
  (shadow 'field_get_count (find-package "WEBOTS_ROS")))
(unless (find-package "WEBOTS_ROS::FIELD_GET_COUNT")
  (make-package "WEBOTS_ROS::FIELD_GET_COUNT"))
(unless (find-package "WEBOTS_ROS::FIELD_GET_COUNTREQUEST")
  (make-package "WEBOTS_ROS::FIELD_GET_COUNTREQUEST"))
(unless (find-package "WEBOTS_ROS::FIELD_GET_COUNTRESPONSE")
  (make-package "WEBOTS_ROS::FIELD_GET_COUNTRESPONSE"))

(in-package "ROS")





(defclass webots_ros::field_get_countRequest
  :super ros::object
  :slots (_field ))

(defmethod webots_ros::field_get_countRequest
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

(defclass webots_ros::field_get_countResponse
  :super ros::object
  :slots (_count ))

(defmethod webots_ros::field_get_countResponse
  (:init
   (&key
    ((:count __count) 0)
    )
   (send-super :init)
   (setq _count (round __count))
   self)
  (:count
   (&optional __count)
   (if __count (setq _count __count)) _count)
  (:serialization-length
   ()
   (+
    ;; int32 _count
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _count
       (write-long _count s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _count
     (setq _count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass webots_ros::field_get_count
  :super ros::object
  :slots ())

(setf (get webots_ros::field_get_count :md5sum-) "3e2de6f1a76fa011e87122941131671e")
(setf (get webots_ros::field_get_count :datatype-) "webots_ros/field_get_count")
(setf (get webots_ros::field_get_count :request) webots_ros::field_get_countRequest)
(setf (get webots_ros::field_get_count :response) webots_ros::field_get_countResponse)

(defmethod webots_ros::field_get_countRequest
  (:response () (instance webots_ros::field_get_countResponse :init)))

(setf (get webots_ros::field_get_countRequest :md5sum-) "3e2de6f1a76fa011e87122941131671e")
(setf (get webots_ros::field_get_countRequest :datatype-) "webots_ros/field_get_countRequest")
(setf (get webots_ros::field_get_countRequest :definition-)
      "uint64 field
---
int32 count

")

(setf (get webots_ros::field_get_countResponse :md5sum-) "3e2de6f1a76fa011e87122941131671e")
(setf (get webots_ros::field_get_countResponse :datatype-) "webots_ros/field_get_countResponse")
(setf (get webots_ros::field_get_countResponse :definition-)
      "uint64 field
---
int32 count

")



(provide :webots_ros/field_get_count "3e2de6f1a76fa011e87122941131671e")


