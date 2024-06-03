;; Auto-generated. Do not edit!


(when (boundp 'webots_ros::field_get_string)
  (if (not (find-package "WEBOTS_ROS"))
    (make-package "WEBOTS_ROS"))
  (shadow 'field_get_string (find-package "WEBOTS_ROS")))
(unless (find-package "WEBOTS_ROS::FIELD_GET_STRING")
  (make-package "WEBOTS_ROS::FIELD_GET_STRING"))
(unless (find-package "WEBOTS_ROS::FIELD_GET_STRINGREQUEST")
  (make-package "WEBOTS_ROS::FIELD_GET_STRINGREQUEST"))
(unless (find-package "WEBOTS_ROS::FIELD_GET_STRINGRESPONSE")
  (make-package "WEBOTS_ROS::FIELD_GET_STRINGRESPONSE"))

(in-package "ROS")





(defclass webots_ros::field_get_stringRequest
  :super ros::object
  :slots (_field _index ))

(defmethod webots_ros::field_get_stringRequest
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

(defclass webots_ros::field_get_stringResponse
  :super ros::object
  :slots (_value ))

(defmethod webots_ros::field_get_stringResponse
  (:init
   (&key
    ((:value __value) "")
    )
   (send-super :init)
   (setq _value (string __value))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; string _value
    4 (length _value)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _value
       (write-long (length _value) s) (princ _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _value
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _value (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass webots_ros::field_get_string
  :super ros::object
  :slots ())

(setf (get webots_ros::field_get_string :md5sum-) "a1926692206ecc55a7a2d2564a578c89")
(setf (get webots_ros::field_get_string :datatype-) "webots_ros/field_get_string")
(setf (get webots_ros::field_get_string :request) webots_ros::field_get_stringRequest)
(setf (get webots_ros::field_get_string :response) webots_ros::field_get_stringResponse)

(defmethod webots_ros::field_get_stringRequest
  (:response () (instance webots_ros::field_get_stringResponse :init)))

(setf (get webots_ros::field_get_stringRequest :md5sum-) "a1926692206ecc55a7a2d2564a578c89")
(setf (get webots_ros::field_get_stringRequest :datatype-) "webots_ros/field_get_stringRequest")
(setf (get webots_ros::field_get_stringRequest :definition-)
      "uint64 field
int32 index
---
string value

")

(setf (get webots_ros::field_get_stringResponse :md5sum-) "a1926692206ecc55a7a2d2564a578c89")
(setf (get webots_ros::field_get_stringResponse :datatype-) "webots_ros/field_get_stringResponse")
(setf (get webots_ros::field_get_stringResponse :definition-)
      "uint64 field
int32 index
---
string value

")



(provide :webots_ros/field_get_string "a1926692206ecc55a7a2d2564a578c89")


