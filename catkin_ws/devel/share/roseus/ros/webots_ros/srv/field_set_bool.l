;; Auto-generated. Do not edit!


(when (boundp 'webots_ros::field_set_bool)
  (if (not (find-package "WEBOTS_ROS"))
    (make-package "WEBOTS_ROS"))
  (shadow 'field_set_bool (find-package "WEBOTS_ROS")))
(unless (find-package "WEBOTS_ROS::FIELD_SET_BOOL")
  (make-package "WEBOTS_ROS::FIELD_SET_BOOL"))
(unless (find-package "WEBOTS_ROS::FIELD_SET_BOOLREQUEST")
  (make-package "WEBOTS_ROS::FIELD_SET_BOOLREQUEST"))
(unless (find-package "WEBOTS_ROS::FIELD_SET_BOOLRESPONSE")
  (make-package "WEBOTS_ROS::FIELD_SET_BOOLRESPONSE"))

(in-package "ROS")





(defclass webots_ros::field_set_boolRequest
  :super ros::object
  :slots (_field _index _value ))

(defmethod webots_ros::field_set_boolRequest
  (:init
   (&key
    ((:field __field) 0)
    ((:index __index) 0)
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _field (round __field))
   (setq _index (round __index))
   (setq _value (round __value))
   self)
  (:field
   (&optional __field)
   (if __field (setq _field __field)) _field)
  (:index
   (&optional __index)
   (if __index (setq _index __index)) _index)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; uint64 _field
    8
    ;; int32 _index
    4
    ;; uint8 _value
    1
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
     ;; uint8 _value
       (write-byte _value s)
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
   ;; uint8 _value
     (setq _value (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass webots_ros::field_set_boolResponse
  :super ros::object
  :slots (_success ))

(defmethod webots_ros::field_set_boolResponse
  (:init
   (&key
    ((:success __success) 0)
    )
   (send-super :init)
   (setq _success (round __success))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; int32 _success
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _success
       (write-long _success s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _success
     (setq _success (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass webots_ros::field_set_bool
  :super ros::object
  :slots ())

(setf (get webots_ros::field_set_bool :md5sum-) "7a9b164ddc41cfd8469ce0cd504f469e")
(setf (get webots_ros::field_set_bool :datatype-) "webots_ros/field_set_bool")
(setf (get webots_ros::field_set_bool :request) webots_ros::field_set_boolRequest)
(setf (get webots_ros::field_set_bool :response) webots_ros::field_set_boolResponse)

(defmethod webots_ros::field_set_boolRequest
  (:response () (instance webots_ros::field_set_boolResponse :init)))

(setf (get webots_ros::field_set_boolRequest :md5sum-) "7a9b164ddc41cfd8469ce0cd504f469e")
(setf (get webots_ros::field_set_boolRequest :datatype-) "webots_ros/field_set_boolRequest")
(setf (get webots_ros::field_set_boolRequest :definition-)
      "uint64 field
int32 index
uint8 value
---
int32 success

")

(setf (get webots_ros::field_set_boolResponse :md5sum-) "7a9b164ddc41cfd8469ce0cd504f469e")
(setf (get webots_ros::field_set_boolResponse :datatype-) "webots_ros/field_set_boolResponse")
(setf (get webots_ros::field_set_boolResponse :definition-)
      "uint64 field
int32 index
uint8 value
---
int32 success

")



(provide :webots_ros/field_set_bool "7a9b164ddc41cfd8469ce0cd504f469e")


