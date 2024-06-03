;; Auto-generated. Do not edit!


(when (boundp 'webots_ros::display_draw_oval)
  (if (not (find-package "WEBOTS_ROS"))
    (make-package "WEBOTS_ROS"))
  (shadow 'display_draw_oval (find-package "WEBOTS_ROS")))
(unless (find-package "WEBOTS_ROS::DISPLAY_DRAW_OVAL")
  (make-package "WEBOTS_ROS::DISPLAY_DRAW_OVAL"))
(unless (find-package "WEBOTS_ROS::DISPLAY_DRAW_OVALREQUEST")
  (make-package "WEBOTS_ROS::DISPLAY_DRAW_OVALREQUEST"))
(unless (find-package "WEBOTS_ROS::DISPLAY_DRAW_OVALRESPONSE")
  (make-package "WEBOTS_ROS::DISPLAY_DRAW_OVALRESPONSE"))

(in-package "ROS")





(defclass webots_ros::display_draw_ovalRequest
  :super ros::object
  :slots (_cx _cy _a _b ))

(defmethod webots_ros::display_draw_ovalRequest
  (:init
   (&key
    ((:cx __cx) 0)
    ((:cy __cy) 0)
    ((:a __a) 0)
    ((:b __b) 0)
    )
   (send-super :init)
   (setq _cx (round __cx))
   (setq _cy (round __cy))
   (setq _a (round __a))
   (setq _b (round __b))
   self)
  (:cx
   (&optional __cx)
   (if __cx (setq _cx __cx)) _cx)
  (:cy
   (&optional __cy)
   (if __cy (setq _cy __cy)) _cy)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:serialization-length
   ()
   (+
    ;; int32 _cx
    4
    ;; int32 _cy
    4
    ;; int32 _a
    4
    ;; int32 _b
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _cx
       (write-long _cx s)
     ;; int32 _cy
       (write-long _cy s)
     ;; int32 _a
       (write-long _a s)
     ;; int32 _b
       (write-long _b s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _cx
     (setq _cx (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _cy
     (setq _cy (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _a
     (setq _a (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _b
     (setq _b (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass webots_ros::display_draw_ovalResponse
  :super ros::object
  :slots (_success ))

(defmethod webots_ros::display_draw_ovalResponse
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

(defclass webots_ros::display_draw_oval
  :super ros::object
  :slots ())

(setf (get webots_ros::display_draw_oval :md5sum-) "257804d9f2e4639bae589e190802d29f")
(setf (get webots_ros::display_draw_oval :datatype-) "webots_ros/display_draw_oval")
(setf (get webots_ros::display_draw_oval :request) webots_ros::display_draw_ovalRequest)
(setf (get webots_ros::display_draw_oval :response) webots_ros::display_draw_ovalResponse)

(defmethod webots_ros::display_draw_ovalRequest
  (:response () (instance webots_ros::display_draw_ovalResponse :init)))

(setf (get webots_ros::display_draw_ovalRequest :md5sum-) "257804d9f2e4639bae589e190802d29f")
(setf (get webots_ros::display_draw_ovalRequest :datatype-) "webots_ros/display_draw_ovalRequest")
(setf (get webots_ros::display_draw_ovalRequest :definition-)
      "int32 cx
int32 cy
int32 a
int32 b
---
int8 success

")

(setf (get webots_ros::display_draw_ovalResponse :md5sum-) "257804d9f2e4639bae589e190802d29f")
(setf (get webots_ros::display_draw_ovalResponse :datatype-) "webots_ros/display_draw_ovalResponse")
(setf (get webots_ros::display_draw_ovalResponse :definition-)
      "int32 cx
int32 cy
int32 a
int32 b
---
int8 success

")



(provide :webots_ros/display_draw_oval "257804d9f2e4639bae589e190802d29f")


