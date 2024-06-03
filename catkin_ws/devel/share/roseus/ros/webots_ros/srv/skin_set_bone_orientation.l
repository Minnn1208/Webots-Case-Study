;; Auto-generated. Do not edit!


(when (boundp 'webots_ros::skin_set_bone_orientation)
  (if (not (find-package "WEBOTS_ROS"))
    (make-package "WEBOTS_ROS"))
  (shadow 'skin_set_bone_orientation (find-package "WEBOTS_ROS")))
(unless (find-package "WEBOTS_ROS::SKIN_SET_BONE_ORIENTATION")
  (make-package "WEBOTS_ROS::SKIN_SET_BONE_ORIENTATION"))
(unless (find-package "WEBOTS_ROS::SKIN_SET_BONE_ORIENTATIONREQUEST")
  (make-package "WEBOTS_ROS::SKIN_SET_BONE_ORIENTATIONREQUEST"))
(unless (find-package "WEBOTS_ROS::SKIN_SET_BONE_ORIENTATIONRESPONSE")
  (make-package "WEBOTS_ROS::SKIN_SET_BONE_ORIENTATIONRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass webots_ros::skin_set_bone_orientationRequest
  :super ros::object
  :slots (_index _orientation _absolute ))

(defmethod webots_ros::skin_set_bone_orientationRequest
  (:init
   (&key
    ((:index __index) 0)
    ((:orientation __orientation) (instance geometry_msgs::Quaternion :init))
    ((:absolute __absolute) nil)
    )
   (send-super :init)
   (setq _index (round __index))
   (setq _orientation __orientation)
   (setq _absolute __absolute)
   self)
  (:index
   (&optional __index)
   (if __index (setq _index __index)) _index)
  (:orientation
   (&rest __orientation)
   (if (keywordp (car __orientation))
       (send* _orientation __orientation)
     (progn
       (if __orientation (setq _orientation (car __orientation)))
       _orientation)))
  (:absolute
   (&optional (__absolute :null))
   (if (not (eq __absolute :null)) (setq _absolute __absolute)) _absolute)
  (:serialization-length
   ()
   (+
    ;; int32 _index
    4
    ;; geometry_msgs/Quaternion _orientation
    (send _orientation :serialization-length)
    ;; bool _absolute
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _index
       (write-long _index s)
     ;; geometry_msgs/Quaternion _orientation
       (send _orientation :serialize s)
     ;; bool _absolute
       (if _absolute (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _index
     (setq _index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Quaternion _orientation
     (send _orientation :deserialize buf ptr-) (incf ptr- (send _orientation :serialization-length))
   ;; bool _absolute
     (setq _absolute (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass webots_ros::skin_set_bone_orientationResponse
  :super ros::object
  :slots (_success ))

(defmethod webots_ros::skin_set_bone_orientationResponse
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
    ;; int32 _success
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _success
       (write-long _success s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _success
     (setq _success (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass webots_ros::skin_set_bone_orientation
  :super ros::object
  :slots ())

(setf (get webots_ros::skin_set_bone_orientation :md5sum-) "3902caf1e5bc44580e05f53048f6318b")
(setf (get webots_ros::skin_set_bone_orientation :datatype-) "webots_ros/skin_set_bone_orientation")
(setf (get webots_ros::skin_set_bone_orientation :request) webots_ros::skin_set_bone_orientationRequest)
(setf (get webots_ros::skin_set_bone_orientation :response) webots_ros::skin_set_bone_orientationResponse)

(defmethod webots_ros::skin_set_bone_orientationRequest
  (:response () (instance webots_ros::skin_set_bone_orientationResponse :init)))

(setf (get webots_ros::skin_set_bone_orientationRequest :md5sum-) "3902caf1e5bc44580e05f53048f6318b")
(setf (get webots_ros::skin_set_bone_orientationRequest :datatype-) "webots_ros/skin_set_bone_orientationRequest")
(setf (get webots_ros::skin_set_bone_orientationRequest :definition-)
      "int32 index
geometry_msgs/Quaternion orientation
bool absolute

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
int32 success

")

(setf (get webots_ros::skin_set_bone_orientationResponse :md5sum-) "3902caf1e5bc44580e05f53048f6318b")
(setf (get webots_ros::skin_set_bone_orientationResponse :datatype-) "webots_ros/skin_set_bone_orientationResponse")
(setf (get webots_ros::skin_set_bone_orientationResponse :definition-)
      "int32 index
geometry_msgs/Quaternion orientation
bool absolute

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
int32 success

")



(provide :webots_ros/skin_set_bone_orientation "3902caf1e5bc44580e05f53048f6318b")


