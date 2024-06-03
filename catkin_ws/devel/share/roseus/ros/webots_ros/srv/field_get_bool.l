;; Auto-generated. Do not edit!


(when (boundp 'webots_ros::field_get_bool)
  (if (not (find-package "WEBOTS_ROS"))
    (make-package "WEBOTS_ROS"))
  (shadow 'field_get_bool (find-package "WEBOTS_ROS")))
(unless (find-package "WEBOTS_ROS::FIELD_GET_BOOL")
  (make-package "WEBOTS_ROS::FIELD_GET_BOOL"))
(unless (find-package "WEBOTS_ROS::FIELD_GET_BOOLREQUEST")
  (make-package "WEBOTS_ROS::FIELD_GET_BOOLREQUEST"))
(unless (find-package "WEBOTS_ROS::FIELD_GET_BOOLRESPONSE")
  (make-package "WEBOTS_ROS::FIELD_GET_BOOLRESPONSE"))

(in-package "ROS")





(defclass webots_ros::field_get_boolRequest
  :super ros::object
  :slots (_field _index ))

(defmethod webots_ros::field_get_boolRequest
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

(defclass webots_ros::field_get_boolResponse
  :super ros::object
  :slots (_value ))

(defmethod webots_ros::field_get_boolResponse
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
    ;; uint8 _value
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _value
       (write-byte _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _value
     (setq _value (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass webots_ros::field_get_bool
  :super ros::object
  :slots ())

(setf (get webots_ros::field_get_bool :md5sum-) "24d7c18e96f008ad963cfb457ec58642")
(setf (get webots_ros::field_get_bool :datatype-) "webots_ros/field_get_bool")
(setf (get webots_ros::field_get_bool :request) webots_ros::field_get_boolRequest)
(setf (get webots_ros::field_get_bool :response) webots_ros::field_get_boolResponse)

(defmethod webots_ros::field_get_boolRequest
  (:response () (instance webots_ros::field_get_boolResponse :init)))

(setf (get webots_ros::field_get_boolRequest :md5sum-) "24d7c18e96f008ad963cfb457ec58642")
(setf (get webots_ros::field_get_boolRequest :datatype-) "webots_ros/field_get_boolRequest")
(setf (get webots_ros::field_get_boolRequest :definition-)
      "uint64 field
int32 index
---
uint8 value

")

(setf (get webots_ros::field_get_boolResponse :md5sum-) "24d7c18e96f008ad963cfb457ec58642")
(setf (get webots_ros::field_get_boolResponse :datatype-) "webots_ros/field_get_boolResponse")
(setf (get webots_ros::field_get_boolResponse :definition-)
      "uint64 field
int32 index
---
uint8 value

")



(provide :webots_ros/field_get_bool "24d7c18e96f008ad963cfb457ec58642")


