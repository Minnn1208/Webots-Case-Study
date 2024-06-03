;; Auto-generated. Do not edit!


(when (boundp 'webots_ros::display_draw_line)
  (if (not (find-package "WEBOTS_ROS"))
    (make-package "WEBOTS_ROS"))
  (shadow 'display_draw_line (find-package "WEBOTS_ROS")))
(unless (find-package "WEBOTS_ROS::DISPLAY_DRAW_LINE")
  (make-package "WEBOTS_ROS::DISPLAY_DRAW_LINE"))
(unless (find-package "WEBOTS_ROS::DISPLAY_DRAW_LINEREQUEST")
  (make-package "WEBOTS_ROS::DISPLAY_DRAW_LINEREQUEST"))
(unless (find-package "WEBOTS_ROS::DISPLAY_DRAW_LINERESPONSE")
  (make-package "WEBOTS_ROS::DISPLAY_DRAW_LINERESPONSE"))

(in-package "ROS")





(defclass webots_ros::display_draw_lineRequest
  :super ros::object
  :slots (_x1 _y1 _x2 _y2 ))

(defmethod webots_ros::display_draw_lineRequest
  (:init
   (&key
    ((:x1 __x1) 0)
    ((:y1 __y1) 0)
    ((:x2 __x2) 0)
    ((:y2 __y2) 0)
    )
   (send-super :init)
   (setq _x1 (round __x1))
   (setq _y1 (round __y1))
   (setq _x2 (round __x2))
   (setq _y2 (round __y2))
   self)
  (:x1
   (&optional __x1)
   (if __x1 (setq _x1 __x1)) _x1)
  (:y1
   (&optional __y1)
   (if __y1 (setq _y1 __y1)) _y1)
  (:x2
   (&optional __x2)
   (if __x2 (setq _x2 __x2)) _x2)
  (:y2
   (&optional __y2)
   (if __y2 (setq _y2 __y2)) _y2)
  (:serialization-length
   ()
   (+
    ;; int32 _x1
    4
    ;; int32 _y1
    4
    ;; int32 _x2
    4
    ;; int32 _y2
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _x1
       (write-long _x1 s)
     ;; int32 _y1
       (write-long _y1 s)
     ;; int32 _x2
       (write-long _x2 s)
     ;; int32 _y2
       (write-long _y2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _x1
     (setq _x1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _y1
     (setq _y1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _x2
     (setq _x2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _y2
     (setq _y2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass webots_ros::display_draw_lineResponse
  :super ros::object
  :slots (_success ))

(defmethod webots_ros::display_draw_lineResponse
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

(defclass webots_ros::display_draw_line
  :super ros::object
  :slots ())

(setf (get webots_ros::display_draw_line :md5sum-) "67df0d281bcb1579baa48d1202f84ebe")
(setf (get webots_ros::display_draw_line :datatype-) "webots_ros/display_draw_line")
(setf (get webots_ros::display_draw_line :request) webots_ros::display_draw_lineRequest)
(setf (get webots_ros::display_draw_line :response) webots_ros::display_draw_lineResponse)

(defmethod webots_ros::display_draw_lineRequest
  (:response () (instance webots_ros::display_draw_lineResponse :init)))

(setf (get webots_ros::display_draw_lineRequest :md5sum-) "67df0d281bcb1579baa48d1202f84ebe")
(setf (get webots_ros::display_draw_lineRequest :datatype-) "webots_ros/display_draw_lineRequest")
(setf (get webots_ros::display_draw_lineRequest :definition-)
      "int32 x1
int32 y1
int32 x2
int32 y2
---
int8 success

")

(setf (get webots_ros::display_draw_lineResponse :md5sum-) "67df0d281bcb1579baa48d1202f84ebe")
(setf (get webots_ros::display_draw_lineResponse :datatype-) "webots_ros/display_draw_lineResponse")
(setf (get webots_ros::display_draw_lineResponse :definition-)
      "int32 x1
int32 y1
int32 x2
int32 y2
---
int8 success

")



(provide :webots_ros/display_draw_line "67df0d281bcb1579baa48d1202f84ebe")


