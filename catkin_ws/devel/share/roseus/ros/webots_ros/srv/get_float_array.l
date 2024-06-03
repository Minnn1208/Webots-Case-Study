;; Auto-generated. Do not edit!


(when (boundp 'webots_ros::get_float_array)
  (if (not (find-package "WEBOTS_ROS"))
    (make-package "WEBOTS_ROS"))
  (shadow 'get_float_array (find-package "WEBOTS_ROS")))
(unless (find-package "WEBOTS_ROS::GET_FLOAT_ARRAY")
  (make-package "WEBOTS_ROS::GET_FLOAT_ARRAY"))
(unless (find-package "WEBOTS_ROS::GET_FLOAT_ARRAYREQUEST")
  (make-package "WEBOTS_ROS::GET_FLOAT_ARRAYREQUEST"))
(unless (find-package "WEBOTS_ROS::GET_FLOAT_ARRAYRESPONSE")
  (make-package "WEBOTS_ROS::GET_FLOAT_ARRAYRESPONSE"))

(in-package "ROS")





(defclass webots_ros::get_float_arrayRequest
  :super ros::object
  :slots (_ask ))

(defmethod webots_ros::get_float_arrayRequest
  (:init
   (&key
    ((:ask __ask) nil)
    )
   (send-super :init)
   (setq _ask __ask)
   self)
  (:ask
   (&optional (__ask :null))
   (if (not (eq __ask :null)) (setq _ask __ask)) _ask)
  (:serialization-length
   ()
   (+
    ;; bool _ask
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _ask
       (if _ask (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _ask
     (setq _ask (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass webots_ros::get_float_arrayResponse
  :super ros::object
  :slots (_value ))

(defmethod webots_ros::get_float_arrayResponse
  (:init
   (&key
    ((:value __value) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _value __value)
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; float64[] _value
    (* 8    (length _value)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _value
     (write-long (length _value) s)
     (dotimes (i (length _value))
       (sys::poke (elt _value i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _value
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _value (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _value i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass webots_ros::get_float_array
  :super ros::object
  :slots ())

(setf (get webots_ros::get_float_array :md5sum-) "7aae320d0f914d7069b041ff192847e1")
(setf (get webots_ros::get_float_array :datatype-) "webots_ros/get_float_array")
(setf (get webots_ros::get_float_array :request) webots_ros::get_float_arrayRequest)
(setf (get webots_ros::get_float_array :response) webots_ros::get_float_arrayResponse)

(defmethod webots_ros::get_float_arrayRequest
  (:response () (instance webots_ros::get_float_arrayResponse :init)))

(setf (get webots_ros::get_float_arrayRequest :md5sum-) "7aae320d0f914d7069b041ff192847e1")
(setf (get webots_ros::get_float_arrayRequest :datatype-) "webots_ros/get_float_arrayRequest")
(setf (get webots_ros::get_float_arrayRequest :definition-)
      "bool ask
---
float64[] value

")

(setf (get webots_ros::get_float_arrayResponse :md5sum-) "7aae320d0f914d7069b041ff192847e1")
(setf (get webots_ros::get_float_arrayResponse :datatype-) "webots_ros/get_float_arrayResponse")
(setf (get webots_ros::get_float_arrayResponse :definition-)
      "bool ask
---
float64[] value

")



(provide :webots_ros/get_float_array "7aae320d0f914d7069b041ff192847e1")


