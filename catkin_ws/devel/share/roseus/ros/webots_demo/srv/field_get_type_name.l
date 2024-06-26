;; Auto-generated. Do not edit!


(when (boundp 'webots_demo::field_get_type_name)
  (if (not (find-package "WEBOTS_DEMO"))
    (make-package "WEBOTS_DEMO"))
  (shadow 'field_get_type_name (find-package "WEBOTS_DEMO")))
(unless (find-package "WEBOTS_DEMO::FIELD_GET_TYPE_NAME")
  (make-package "WEBOTS_DEMO::FIELD_GET_TYPE_NAME"))
(unless (find-package "WEBOTS_DEMO::FIELD_GET_TYPE_NAMEREQUEST")
  (make-package "WEBOTS_DEMO::FIELD_GET_TYPE_NAMEREQUEST"))
(unless (find-package "WEBOTS_DEMO::FIELD_GET_TYPE_NAMERESPONSE")
  (make-package "WEBOTS_DEMO::FIELD_GET_TYPE_NAMERESPONSE"))

(in-package "ROS")





(defclass webots_demo::field_get_type_nameRequest
  :super ros::object
  :slots (_field ))

(defmethod webots_demo::field_get_type_nameRequest
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

(defclass webots_demo::field_get_type_nameResponse
  :super ros::object
  :slots (_name ))

(defmethod webots_demo::field_get_type_nameResponse
  (:init
   (&key
    ((:name __name) "")
    )
   (send-super :init)
   (setq _name (string __name))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass webots_demo::field_get_type_name
  :super ros::object
  :slots ())

(setf (get webots_demo::field_get_type_name :md5sum-) "5a98464d3ca05386300217ec41ec161f")
(setf (get webots_demo::field_get_type_name :datatype-) "webots_demo/field_get_type_name")
(setf (get webots_demo::field_get_type_name :request) webots_demo::field_get_type_nameRequest)
(setf (get webots_demo::field_get_type_name :response) webots_demo::field_get_type_nameResponse)

(defmethod webots_demo::field_get_type_nameRequest
  (:response () (instance webots_demo::field_get_type_nameResponse :init)))

(setf (get webots_demo::field_get_type_nameRequest :md5sum-) "5a98464d3ca05386300217ec41ec161f")
(setf (get webots_demo::field_get_type_nameRequest :datatype-) "webots_demo/field_get_type_nameRequest")
(setf (get webots_demo::field_get_type_nameRequest :definition-)
      "uint64 field
---
string name

")

(setf (get webots_demo::field_get_type_nameResponse :md5sum-) "5a98464d3ca05386300217ec41ec161f")
(setf (get webots_demo::field_get_type_nameResponse :datatype-) "webots_demo/field_get_type_nameResponse")
(setf (get webots_demo::field_get_type_nameResponse :definition-)
      "uint64 field
---
string name

")



(provide :webots_demo/field_get_type_name "5a98464d3ca05386300217ec41ec161f")


