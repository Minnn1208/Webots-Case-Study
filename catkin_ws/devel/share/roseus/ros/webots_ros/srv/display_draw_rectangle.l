;; Auto-generated. Do not edit!


(when (boundp 'webots_ros::display_draw_rectangle)
  (if (not (find-package "WEBOTS_ROS"))
    (make-package "WEBOTS_ROS"))
  (shadow 'display_draw_rectangle (find-package "WEBOTS_ROS")))
(unless (find-package "WEBOTS_ROS::DISPLAY_DRAW_RECTANGLE")
  (make-package "WEBOTS_ROS::DISPLAY_DRAW_RECTANGLE"))
(unless (find-package "WEBOTS_ROS::DISPLAY_DRAW_RECTANGLEREQUEST")
  (make-package "WEBOTS_ROS::DISPLAY_DRAW_RECTANGLEREQUEST"))
(unless (find-package "WEBOTS_ROS::DISPLAY_DRAW_RECTANGLERESPONSE")
  (make-package "WEBOTS_ROS::DISPLAY_DRAW_RECTANGLERESPONSE"))

(in-package "ROS")





(defclass webots_ros::display_draw_rectangleRequest
  :super ros::object
  :slots (_x _y _width _height ))

(defmethod webots_ros::display_draw_rectangleRequest
  (:init
   (&key
    ((:x __x) 0)
    ((:y __y) 0)
    ((:width __width) 0)
    ((:height __height) 0)
    )
   (send-super :init)
   (setq _x (round __x))
   (setq _y (round __y))
   (setq _width (round __width))
   (setq _height (round __height))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:serialization-length
   ()
   (+
    ;; int32 _x
    4
    ;; int32 _y
    4
    ;; int32 _width
    4
    ;; int32 _height
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _x
       (write-long _x s)
     ;; int32 _y
       (write-long _y s)
     ;; int32 _width
       (write-long _width s)
     ;; int32 _height
       (write-long _height s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _x
     (setq _x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _y
     (setq _y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _width
     (setq _width (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _height
     (setq _height (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass webots_ros::display_draw_rectangleResponse
  :super ros::object
  :slots (_success ))

(defmethod webots_ros::display_draw_rectangleResponse
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

(defclass webots_ros::display_draw_rectangle
  :super ros::object
  :slots ())

(setf (get webots_ros::display_draw_rectangle :md5sum-) "f7d77dd6f16a5d7e8ba643de53791446")
(setf (get webots_ros::display_draw_rectangle :datatype-) "webots_ros/display_draw_rectangle")
(setf (get webots_ros::display_draw_rectangle :request) webots_ros::display_draw_rectangleRequest)
(setf (get webots_ros::display_draw_rectangle :response) webots_ros::display_draw_rectangleResponse)

(defmethod webots_ros::display_draw_rectangleRequest
  (:response () (instance webots_ros::display_draw_rectangleResponse :init)))

(setf (get webots_ros::display_draw_rectangleRequest :md5sum-) "f7d77dd6f16a5d7e8ba643de53791446")
(setf (get webots_ros::display_draw_rectangleRequest :datatype-) "webots_ros/display_draw_rectangleRequest")
(setf (get webots_ros::display_draw_rectangleRequest :definition-)
      "int32 x
int32 y
int32 width
int32 height
---
int8 success

")

(setf (get webots_ros::display_draw_rectangleResponse :md5sum-) "f7d77dd6f16a5d7e8ba643de53791446")
(setf (get webots_ros::display_draw_rectangleResponse :datatype-) "webots_ros/display_draw_rectangleResponse")
(setf (get webots_ros::display_draw_rectangleResponse :definition-)
      "int32 x
int32 y
int32 width
int32 height
---
int8 success

")



(provide :webots_ros/display_draw_rectangle "f7d77dd6f16a5d7e8ba643de53791446")


