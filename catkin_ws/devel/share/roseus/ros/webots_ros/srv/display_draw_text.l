;; Auto-generated. Do not edit!


(when (boundp 'webots_ros::display_draw_text)
  (if (not (find-package "WEBOTS_ROS"))
    (make-package "WEBOTS_ROS"))
  (shadow 'display_draw_text (find-package "WEBOTS_ROS")))
(unless (find-package "WEBOTS_ROS::DISPLAY_DRAW_TEXT")
  (make-package "WEBOTS_ROS::DISPLAY_DRAW_TEXT"))
(unless (find-package "WEBOTS_ROS::DISPLAY_DRAW_TEXTREQUEST")
  (make-package "WEBOTS_ROS::DISPLAY_DRAW_TEXTREQUEST"))
(unless (find-package "WEBOTS_ROS::DISPLAY_DRAW_TEXTRESPONSE")
  (make-package "WEBOTS_ROS::DISPLAY_DRAW_TEXTRESPONSE"))

(in-package "ROS")





(defclass webots_ros::display_draw_textRequest
  :super ros::object
  :slots (_text _x _y ))

(defmethod webots_ros::display_draw_textRequest
  (:init
   (&key
    ((:text __text) "")
    ((:x __x) 0)
    ((:y __y) 0)
    )
   (send-super :init)
   (setq _text (string __text))
   (setq _x (round __x))
   (setq _y (round __y))
   self)
  (:text
   (&optional __text)
   (if __text (setq _text __text)) _text)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; string _text
    4 (length _text)
    ;; int32 _x
    4
    ;; int32 _y
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _text
       (write-long (length _text) s) (princ _text s)
     ;; int32 _x
       (write-long _x s)
     ;; int32 _y
       (write-long _y s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _text
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _text (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _x
     (setq _x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _y
     (setq _y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass webots_ros::display_draw_textResponse
  :super ros::object
  :slots (_success ))

(defmethod webots_ros::display_draw_textResponse
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

(defclass webots_ros::display_draw_text
  :super ros::object
  :slots ())

(setf (get webots_ros::display_draw_text :md5sum-) "b82c6acdec67a202bbbbd0b3aba5aa0c")
(setf (get webots_ros::display_draw_text :datatype-) "webots_ros/display_draw_text")
(setf (get webots_ros::display_draw_text :request) webots_ros::display_draw_textRequest)
(setf (get webots_ros::display_draw_text :response) webots_ros::display_draw_textResponse)

(defmethod webots_ros::display_draw_textRequest
  (:response () (instance webots_ros::display_draw_textResponse :init)))

(setf (get webots_ros::display_draw_textRequest :md5sum-) "b82c6acdec67a202bbbbd0b3aba5aa0c")
(setf (get webots_ros::display_draw_textRequest :datatype-) "webots_ros/display_draw_textRequest")
(setf (get webots_ros::display_draw_textRequest :definition-)
      "string text
int32 x
int32 y
---
int8 success

")

(setf (get webots_ros::display_draw_textResponse :md5sum-) "b82c6acdec67a202bbbbd0b3aba5aa0c")
(setf (get webots_ros::display_draw_textResponse :datatype-) "webots_ros/display_draw_textResponse")
(setf (get webots_ros::display_draw_textResponse :definition-)
      "string text
int32 x
int32 y
---
int8 success

")



(provide :webots_ros/display_draw_text "b82c6acdec67a202bbbbd0b3aba5aa0c")


