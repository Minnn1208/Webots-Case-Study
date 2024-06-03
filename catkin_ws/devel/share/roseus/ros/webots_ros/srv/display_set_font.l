;; Auto-generated. Do not edit!


(when (boundp 'webots_ros::display_set_font)
  (if (not (find-package "WEBOTS_ROS"))
    (make-package "WEBOTS_ROS"))
  (shadow 'display_set_font (find-package "WEBOTS_ROS")))
(unless (find-package "WEBOTS_ROS::DISPLAY_SET_FONT")
  (make-package "WEBOTS_ROS::DISPLAY_SET_FONT"))
(unless (find-package "WEBOTS_ROS::DISPLAY_SET_FONTREQUEST")
  (make-package "WEBOTS_ROS::DISPLAY_SET_FONTREQUEST"))
(unless (find-package "WEBOTS_ROS::DISPLAY_SET_FONTRESPONSE")
  (make-package "WEBOTS_ROS::DISPLAY_SET_FONTRESPONSE"))

(in-package "ROS")





(defclass webots_ros::display_set_fontRequest
  :super ros::object
  :slots (_font _size _antiAliasing ))

(defmethod webots_ros::display_set_fontRequest
  (:init
   (&key
    ((:font __font) "")
    ((:size __size) 0)
    ((:antiAliasing __antiAliasing) 0)
    )
   (send-super :init)
   (setq _font (string __font))
   (setq _size (round __size))
   (setq _antiAliasing (round __antiAliasing))
   self)
  (:font
   (&optional __font)
   (if __font (setq _font __font)) _font)
  (:size
   (&optional __size)
   (if __size (setq _size __size)) _size)
  (:antiAliasing
   (&optional __antiAliasing)
   (if __antiAliasing (setq _antiAliasing __antiAliasing)) _antiAliasing)
  (:serialization-length
   ()
   (+
    ;; string _font
    4 (length _font)
    ;; int32 _size
    4
    ;; uint8 _antiAliasing
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _font
       (write-long (length _font) s) (princ _font s)
     ;; int32 _size
       (write-long _size s)
     ;; uint8 _antiAliasing
       (write-byte _antiAliasing s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _font
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _font (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _size
     (setq _size (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _antiAliasing
     (setq _antiAliasing (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass webots_ros::display_set_fontResponse
  :super ros::object
  :slots (_success ))

(defmethod webots_ros::display_set_fontResponse
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

(defclass webots_ros::display_set_font
  :super ros::object
  :slots ())

(setf (get webots_ros::display_set_font :md5sum-) "78ff6c1f16d92deedcc7d16bd2cddfbf")
(setf (get webots_ros::display_set_font :datatype-) "webots_ros/display_set_font")
(setf (get webots_ros::display_set_font :request) webots_ros::display_set_fontRequest)
(setf (get webots_ros::display_set_font :response) webots_ros::display_set_fontResponse)

(defmethod webots_ros::display_set_fontRequest
  (:response () (instance webots_ros::display_set_fontResponse :init)))

(setf (get webots_ros::display_set_fontRequest :md5sum-) "78ff6c1f16d92deedcc7d16bd2cddfbf")
(setf (get webots_ros::display_set_fontRequest :datatype-) "webots_ros/display_set_fontRequest")
(setf (get webots_ros::display_set_fontRequest :definition-)
      "string font
int32 size
uint8 antiAliasing
---
int8 success

")

(setf (get webots_ros::display_set_fontResponse :md5sum-) "78ff6c1f16d92deedcc7d16bd2cddfbf")
(setf (get webots_ros::display_set_fontResponse :datatype-) "webots_ros/display_set_fontResponse")
(setf (get webots_ros::display_set_fontResponse :definition-)
      "string font
int32 size
uint8 antiAliasing
---
int8 success

")



(provide :webots_ros/display_set_font "78ff6c1f16d92deedcc7d16bd2cddfbf")


