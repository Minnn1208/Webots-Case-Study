;; Auto-generated. Do not edit!


(when (boundp 'webots_ros::supervisor_set_label)
  (if (not (find-package "WEBOTS_ROS"))
    (make-package "WEBOTS_ROS"))
  (shadow 'supervisor_set_label (find-package "WEBOTS_ROS")))
(unless (find-package "WEBOTS_ROS::SUPERVISOR_SET_LABEL")
  (make-package "WEBOTS_ROS::SUPERVISOR_SET_LABEL"))
(unless (find-package "WEBOTS_ROS::SUPERVISOR_SET_LABELREQUEST")
  (make-package "WEBOTS_ROS::SUPERVISOR_SET_LABELREQUEST"))
(unless (find-package "WEBOTS_ROS::SUPERVISOR_SET_LABELRESPONSE")
  (make-package "WEBOTS_ROS::SUPERVISOR_SET_LABELRESPONSE"))

(in-package "ROS")





(defclass webots_ros::supervisor_set_labelRequest
  :super ros::object
  :slots (_id _label _xpos _ypos _size _color _transparency _font ))

(defmethod webots_ros::supervisor_set_labelRequest
  (:init
   (&key
    ((:id __id) 0)
    ((:label __label) "")
    ((:xpos __xpos) 0.0)
    ((:ypos __ypos) 0.0)
    ((:size __size) 0.0)
    ((:color __color) 0)
    ((:transparency __transparency) 0.0)
    ((:font __font) "")
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _label (string __label))
   (setq _xpos (float __xpos))
   (setq _ypos (float __ypos))
   (setq _size (float __size))
   (setq _color (round __color))
   (setq _transparency (float __transparency))
   (setq _font (string __font))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:label
   (&optional __label)
   (if __label (setq _label __label)) _label)
  (:xpos
   (&optional __xpos)
   (if __xpos (setq _xpos __xpos)) _xpos)
  (:ypos
   (&optional __ypos)
   (if __ypos (setq _ypos __ypos)) _ypos)
  (:size
   (&optional __size)
   (if __size (setq _size __size)) _size)
  (:color
   (&optional __color)
   (if __color (setq _color __color)) _color)
  (:transparency
   (&optional __transparency)
   (if __transparency (setq _transparency __transparency)) _transparency)
  (:font
   (&optional __font)
   (if __font (setq _font __font)) _font)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; string _label
    4 (length _label)
    ;; float64 _xpos
    8
    ;; float64 _ypos
    8
    ;; float64 _size
    8
    ;; int32 _color
    4
    ;; float64 _transparency
    8
    ;; string _font
    4 (length _font)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; string _label
       (write-long (length _label) s) (princ _label s)
     ;; float64 _xpos
       (sys::poke _xpos (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ypos
       (sys::poke _ypos (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _size
       (sys::poke _size (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _color
       (write-long _color s)
     ;; float64 _transparency
       (sys::poke _transparency (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _font
       (write-long (length _font) s) (princ _font s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _label
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _label (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _xpos
     (setq _xpos (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ypos
     (setq _ypos (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _size
     (setq _size (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _color
     (setq _color (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _transparency
     (setq _transparency (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _font
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _font (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass webots_ros::supervisor_set_labelResponse
  :super ros::object
  :slots (_success ))

(defmethod webots_ros::supervisor_set_labelResponse
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

(defclass webots_ros::supervisor_set_label
  :super ros::object
  :slots ())

(setf (get webots_ros::supervisor_set_label :md5sum-) "5ee78a04723ef11d3847c8d8c557058c")
(setf (get webots_ros::supervisor_set_label :datatype-) "webots_ros/supervisor_set_label")
(setf (get webots_ros::supervisor_set_label :request) webots_ros::supervisor_set_labelRequest)
(setf (get webots_ros::supervisor_set_label :response) webots_ros::supervisor_set_labelResponse)

(defmethod webots_ros::supervisor_set_labelRequest
  (:response () (instance webots_ros::supervisor_set_labelResponse :init)))

(setf (get webots_ros::supervisor_set_labelRequest :md5sum-) "5ee78a04723ef11d3847c8d8c557058c")
(setf (get webots_ros::supervisor_set_labelRequest :datatype-) "webots_ros/supervisor_set_labelRequest")
(setf (get webots_ros::supervisor_set_labelRequest :definition-)
      "int32 id
string label
float64 xpos
float64 ypos
float64 size
int32 color
float64 transparency
string font
---
int8 success

")

(setf (get webots_ros::supervisor_set_labelResponse :md5sum-) "5ee78a04723ef11d3847c8d8c557058c")
(setf (get webots_ros::supervisor_set_labelResponse :datatype-) "webots_ros/supervisor_set_labelResponse")
(setf (get webots_ros::supervisor_set_labelResponse :definition-)
      "int32 id
string label
float64 xpos
float64 ypos
float64 size
int32 color
float64 transparency
string font
---
int8 success

")



(provide :webots_ros/supervisor_set_label "5ee78a04723ef11d3847c8d8c557058c")


