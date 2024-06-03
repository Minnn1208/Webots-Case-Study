;; Auto-generated. Do not edit!


(when (boundp 'webots_demo::set_bool)
  (if (not (find-package "WEBOTS_DEMO"))
    (make-package "WEBOTS_DEMO"))
  (shadow 'set_bool (find-package "WEBOTS_DEMO")))
(unless (find-package "WEBOTS_DEMO::SET_BOOL")
  (make-package "WEBOTS_DEMO::SET_BOOL"))
(unless (find-package "WEBOTS_DEMO::SET_BOOLREQUEST")
  (make-package "WEBOTS_DEMO::SET_BOOLREQUEST"))
(unless (find-package "WEBOTS_DEMO::SET_BOOLRESPONSE")
  (make-package "WEBOTS_DEMO::SET_BOOLRESPONSE"))

(in-package "ROS")





(defclass webots_demo::set_boolRequest
  :super ros::object
  :slots (_value ))

(defmethod webots_demo::set_boolRequest
  (:init
   (&key
    ((:value __value) nil)
    )
   (send-super :init)
   (setq _value __value)
   self)
  (:value
   (&optional (__value :null))
   (if (not (eq __value :null)) (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; bool _value
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _value
       (if _value (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _value
     (setq _value (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass webots_demo::set_boolResponse
  :super ros::object
  :slots (_success ))

(defmethod webots_demo::set_boolResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass webots_demo::set_bool
  :super ros::object
  :slots ())

(setf (get webots_demo::set_bool :md5sum-) "24a0f9fd764459b7e35d04a0dd83dd11")
(setf (get webots_demo::set_bool :datatype-) "webots_demo/set_bool")
(setf (get webots_demo::set_bool :request) webots_demo::set_boolRequest)
(setf (get webots_demo::set_bool :response) webots_demo::set_boolResponse)

(defmethod webots_demo::set_boolRequest
  (:response () (instance webots_demo::set_boolResponse :init)))

(setf (get webots_demo::set_boolRequest :md5sum-) "24a0f9fd764459b7e35d04a0dd83dd11")
(setf (get webots_demo::set_boolRequest :datatype-) "webots_demo/set_boolRequest")
(setf (get webots_demo::set_boolRequest :definition-)
      "bool value
---
bool success

")

(setf (get webots_demo::set_boolResponse :md5sum-) "24a0f9fd764459b7e35d04a0dd83dd11")
(setf (get webots_demo::set_boolResponse :datatype-) "webots_demo/set_boolResponse")
(setf (get webots_demo::set_boolResponse :definition-)
      "bool value
---
bool success

")



(provide :webots_demo/set_bool "24a0f9fd764459b7e35d04a0dd83dd11")


