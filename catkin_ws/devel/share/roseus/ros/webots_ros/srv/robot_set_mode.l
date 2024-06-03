;; Auto-generated. Do not edit!


(when (boundp 'webots_ros::robot_set_mode)
  (if (not (find-package "WEBOTS_ROS"))
    (make-package "WEBOTS_ROS"))
  (shadow 'robot_set_mode (find-package "WEBOTS_ROS")))
(unless (find-package "WEBOTS_ROS::ROBOT_SET_MODE")
  (make-package "WEBOTS_ROS::ROBOT_SET_MODE"))
(unless (find-package "WEBOTS_ROS::ROBOT_SET_MODEREQUEST")
  (make-package "WEBOTS_ROS::ROBOT_SET_MODEREQUEST"))
(unless (find-package "WEBOTS_ROS::ROBOT_SET_MODERESPONSE")
  (make-package "WEBOTS_ROS::ROBOT_SET_MODERESPONSE"))

(in-package "ROS")





(defclass webots_ros::robot_set_modeRequest
  :super ros::object
  :slots (_arg _mode ))

(defmethod webots_ros::robot_set_modeRequest
  (:init
   (&key
    ((:arg __arg) (make-array 0 :initial-element 0 :element-type :integer))
    ((:mode __mode) 0)
    )
   (send-super :init)
   (setq _arg __arg)
   (setq _mode (round __mode))
   self)
  (:arg
   (&optional __arg)
   (if __arg (setq _arg __arg)) _arg)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:serialization-length
   ()
   (+
    ;; char[] _arg
    (* 1    (length _arg)) 4
    ;; int32 _mode
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; char[] _arg
     (write-long (length _arg) s)
     (dotimes (i (length _arg))
       (write-byte (elt _arg i) s)
       )
     ;; int32 _mode
       (write-long _mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; char[] _arg
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _arg (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _arg i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     ))
   ;; int32 _mode
     (setq _mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass webots_ros::robot_set_modeResponse
  :super ros::object
  :slots (_success ))

(defmethod webots_ros::robot_set_modeResponse
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

(defclass webots_ros::robot_set_mode
  :super ros::object
  :slots ())

(setf (get webots_ros::robot_set_mode :md5sum-) "ef8b4f277f1a6d92a8c4d6a68a3850de")
(setf (get webots_ros::robot_set_mode :datatype-) "webots_ros/robot_set_mode")
(setf (get webots_ros::robot_set_mode :request) webots_ros::robot_set_modeRequest)
(setf (get webots_ros::robot_set_mode :response) webots_ros::robot_set_modeResponse)

(defmethod webots_ros::robot_set_modeRequest
  (:response () (instance webots_ros::robot_set_modeResponse :init)))

(setf (get webots_ros::robot_set_modeRequest :md5sum-) "ef8b4f277f1a6d92a8c4d6a68a3850de")
(setf (get webots_ros::robot_set_modeRequest :datatype-) "webots_ros/robot_set_modeRequest")
(setf (get webots_ros::robot_set_modeRequest :definition-)
      "char[] arg
int32 mode
---
int8 success

")

(setf (get webots_ros::robot_set_modeResponse :md5sum-) "ef8b4f277f1a6d92a8c4d6a68a3850de")
(setf (get webots_ros::robot_set_modeResponse :datatype-) "webots_ros/robot_set_modeResponse")
(setf (get webots_ros::robot_set_modeResponse :definition-)
      "char[] arg
int32 mode
---
int8 success

")



(provide :webots_ros/robot_set_mode "ef8b4f277f1a6d92a8c4d6a68a3850de")


