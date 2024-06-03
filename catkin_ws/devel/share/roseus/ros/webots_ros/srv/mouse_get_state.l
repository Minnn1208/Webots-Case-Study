;; Auto-generated. Do not edit!


(when (boundp 'webots_ros::mouse_get_state)
  (if (not (find-package "WEBOTS_ROS"))
    (make-package "WEBOTS_ROS"))
  (shadow 'mouse_get_state (find-package "WEBOTS_ROS")))
(unless (find-package "WEBOTS_ROS::MOUSE_GET_STATE")
  (make-package "WEBOTS_ROS::MOUSE_GET_STATE"))
(unless (find-package "WEBOTS_ROS::MOUSE_GET_STATEREQUEST")
  (make-package "WEBOTS_ROS::MOUSE_GET_STATEREQUEST"))
(unless (find-package "WEBOTS_ROS::MOUSE_GET_STATERESPONSE")
  (make-package "WEBOTS_ROS::MOUSE_GET_STATERESPONSE"))

(in-package "ROS")





(defclass webots_ros::mouse_get_stateRequest
  :super ros::object
  :slots (_ask ))

(defmethod webots_ros::mouse_get_stateRequest
  (:init
   (&key
    ((:ask __ask) 0)
    )
   (send-super :init)
   (setq _ask (round __ask))
   self)
  (:ask
   (&optional __ask)
   (if __ask (setq _ask __ask)) _ask)
  (:serialization-length
   ()
   (+
    ;; uint8 _ask
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _ask
       (write-byte _ask s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _ask
     (setq _ask (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass webots_ros::mouse_get_stateResponse
  :super ros::object
  :slots (_left _middle _right _u _v _x _y _z ))

(defmethod webots_ros::mouse_get_stateResponse
  (:init
   (&key
    ((:left __left) 0)
    ((:middle __middle) 0)
    ((:right __right) 0)
    ((:u __u) 0.0)
    ((:v __v) 0.0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    )
   (send-super :init)
   (setq _left (round __left))
   (setq _middle (round __middle))
   (setq _right (round __right))
   (setq _u (float __u))
   (setq _v (float __v))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   self)
  (:left
   (&optional __left)
   (if __left (setq _left __left)) _left)
  (:middle
   (&optional __middle)
   (if __middle (setq _middle __middle)) _middle)
  (:right
   (&optional __right)
   (if __right (setq _right __right)) _right)
  (:u
   (&optional __u)
   (if __u (setq _u __u)) _u)
  (:v
   (&optional __v)
   (if __v (setq _v __v)) _v)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:serialization-length
   ()
   (+
    ;; uint8 _left
    1
    ;; uint8 _middle
    1
    ;; uint8 _right
    1
    ;; float64 _u
    8
    ;; float64 _v
    8
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _z
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _left
       (write-byte _left s)
     ;; uint8 _middle
       (write-byte _middle s)
     ;; uint8 _right
       (write-byte _right s)
     ;; float64 _u
       (sys::poke _u (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _v
       (sys::poke _v (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z
       (sys::poke _z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _left
     (setq _left (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _middle
     (setq _middle (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _right
     (setq _right (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _u
     (setq _u (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _v
     (setq _v (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z
     (setq _z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass webots_ros::mouse_get_state
  :super ros::object
  :slots ())

(setf (get webots_ros::mouse_get_state :md5sum-) "f4314fc92ab9c1f74ef71e42c0634a99")
(setf (get webots_ros::mouse_get_state :datatype-) "webots_ros/mouse_get_state")
(setf (get webots_ros::mouse_get_state :request) webots_ros::mouse_get_stateRequest)
(setf (get webots_ros::mouse_get_state :response) webots_ros::mouse_get_stateResponse)

(defmethod webots_ros::mouse_get_stateRequest
  (:response () (instance webots_ros::mouse_get_stateResponse :init)))

(setf (get webots_ros::mouse_get_stateRequest :md5sum-) "f4314fc92ab9c1f74ef71e42c0634a99")
(setf (get webots_ros::mouse_get_stateRequest :datatype-) "webots_ros/mouse_get_stateRequest")
(setf (get webots_ros::mouse_get_stateRequest :definition-)
      "uint8 ask
---
uint8 left
uint8 middle
uint8 right
float64 u
float64 v
float64 x
float64 y
float64 z

")

(setf (get webots_ros::mouse_get_stateResponse :md5sum-) "f4314fc92ab9c1f74ef71e42c0634a99")
(setf (get webots_ros::mouse_get_stateResponse :datatype-) "webots_ros/mouse_get_stateResponse")
(setf (get webots_ros::mouse_get_stateResponse :definition-)
      "uint8 ask
---
uint8 left
uint8 middle
uint8 right
float64 u
float64 v
float64 x
float64 y
float64 z

")



(provide :webots_ros/mouse_get_state "f4314fc92ab9c1f74ef71e42c0634a99")


