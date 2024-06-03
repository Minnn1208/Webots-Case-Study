;; Auto-generated. Do not edit!


(when (boundp 'webots_ros::pen_set_ink_color)
  (if (not (find-package "WEBOTS_ROS"))
    (make-package "WEBOTS_ROS"))
  (shadow 'pen_set_ink_color (find-package "WEBOTS_ROS")))
(unless (find-package "WEBOTS_ROS::PEN_SET_INK_COLOR")
  (make-package "WEBOTS_ROS::PEN_SET_INK_COLOR"))
(unless (find-package "WEBOTS_ROS::PEN_SET_INK_COLORREQUEST")
  (make-package "WEBOTS_ROS::PEN_SET_INK_COLORREQUEST"))
(unless (find-package "WEBOTS_ROS::PEN_SET_INK_COLORRESPONSE")
  (make-package "WEBOTS_ROS::PEN_SET_INK_COLORRESPONSE"))

(in-package "ROS")





(defclass webots_ros::pen_set_ink_colorRequest
  :super ros::object
  :slots (_color _density ))

(defmethod webots_ros::pen_set_ink_colorRequest
  (:init
   (&key
    ((:color __color) 0)
    ((:density __density) 0.0)
    )
   (send-super :init)
   (setq _color (round __color))
   (setq _density (float __density))
   self)
  (:color
   (&optional __color)
   (if __color (setq _color __color)) _color)
  (:density
   (&optional __density)
   (if __density (setq _density __density)) _density)
  (:serialization-length
   ()
   (+
    ;; int32 _color
    4
    ;; float64 _density
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _color
       (write-long _color s)
     ;; float64 _density
       (sys::poke _density (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _color
     (setq _color (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _density
     (setq _density (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass webots_ros::pen_set_ink_colorResponse
  :super ros::object
  :slots (_success ))

(defmethod webots_ros::pen_set_ink_colorResponse
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
    ;; int8 _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _success
       (write-byte _success s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _success
     (setq _success (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _success 127) (setq _success (- _success 256)))
   ;;
   self)
  )

(defclass webots_ros::pen_set_ink_color
  :super ros::object
  :slots ())

(setf (get webots_ros::pen_set_ink_color :md5sum-) "7fde2080d14960fbc22200121684eabf")
(setf (get webots_ros::pen_set_ink_color :datatype-) "webots_ros/pen_set_ink_color")
(setf (get webots_ros::pen_set_ink_color :request) webots_ros::pen_set_ink_colorRequest)
(setf (get webots_ros::pen_set_ink_color :response) webots_ros::pen_set_ink_colorResponse)

(defmethod webots_ros::pen_set_ink_colorRequest
  (:response () (instance webots_ros::pen_set_ink_colorResponse :init)))

(setf (get webots_ros::pen_set_ink_colorRequest :md5sum-) "7fde2080d14960fbc22200121684eabf")
(setf (get webots_ros::pen_set_ink_colorRequest :datatype-) "webots_ros/pen_set_ink_colorRequest")
(setf (get webots_ros::pen_set_ink_colorRequest :definition-)
      "int32 color
float64 density
---
int8 success

")

(setf (get webots_ros::pen_set_ink_colorResponse :md5sum-) "7fde2080d14960fbc22200121684eabf")
(setf (get webots_ros::pen_set_ink_colorResponse :datatype-) "webots_ros/pen_set_ink_colorResponse")
(setf (get webots_ros::pen_set_ink_colorResponse :definition-)
      "int32 color
float64 density
---
int8 success

")



(provide :webots_ros/pen_set_ink_color "7fde2080d14960fbc22200121684eabf")


