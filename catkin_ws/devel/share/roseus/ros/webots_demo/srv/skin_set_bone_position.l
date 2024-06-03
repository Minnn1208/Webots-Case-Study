;; Auto-generated. Do not edit!


(when (boundp 'webots_demo::skin_set_bone_position)
  (if (not (find-package "WEBOTS_DEMO"))
    (make-package "WEBOTS_DEMO"))
  (shadow 'skin_set_bone_position (find-package "WEBOTS_DEMO")))
(unless (find-package "WEBOTS_DEMO::SKIN_SET_BONE_POSITION")
  (make-package "WEBOTS_DEMO::SKIN_SET_BONE_POSITION"))
(unless (find-package "WEBOTS_DEMO::SKIN_SET_BONE_POSITIONREQUEST")
  (make-package "WEBOTS_DEMO::SKIN_SET_BONE_POSITIONREQUEST"))
(unless (find-package "WEBOTS_DEMO::SKIN_SET_BONE_POSITIONRESPONSE")
  (make-package "WEBOTS_DEMO::SKIN_SET_BONE_POSITIONRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass webots_demo::skin_set_bone_positionRequest
  :super ros::object
  :slots (_index _position _absolute ))

(defmethod webots_demo::skin_set_bone_positionRequest
  (:init
   (&key
    ((:index __index) 0)
    ((:position __position) (instance geometry_msgs::Vector3 :init))
    ((:absolute __absolute) nil)
    )
   (send-super :init)
   (setq _index (round __index))
   (setq _position __position)
   (setq _absolute __absolute)
   self)
  (:index
   (&optional __index)
   (if __index (setq _index __index)) _index)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:absolute
   (&optional (__absolute :null))
   (if (not (eq __absolute :null)) (setq _absolute __absolute)) _absolute)
  (:serialization-length
   ()
   (+
    ;; int32 _index
    4
    ;; geometry_msgs/Vector3 _position
    (send _position :serialization-length)
    ;; bool _absolute
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _index
       (write-long _index s)
     ;; geometry_msgs/Vector3 _position
       (send _position :serialize s)
     ;; bool _absolute
       (if _absolute (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _index
     (setq _index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Vector3 _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; bool _absolute
     (setq _absolute (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass webots_demo::skin_set_bone_positionResponse
  :super ros::object
  :slots (_success ))

(defmethod webots_demo::skin_set_bone_positionResponse
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

(defclass webots_demo::skin_set_bone_position
  :super ros::object
  :slots ())

(setf (get webots_demo::skin_set_bone_position :md5sum-) "f009d6c1aead25b455139f2460ea63da")
(setf (get webots_demo::skin_set_bone_position :datatype-) "webots_demo/skin_set_bone_position")
(setf (get webots_demo::skin_set_bone_position :request) webots_demo::skin_set_bone_positionRequest)
(setf (get webots_demo::skin_set_bone_position :response) webots_demo::skin_set_bone_positionResponse)

(defmethod webots_demo::skin_set_bone_positionRequest
  (:response () (instance webots_demo::skin_set_bone_positionResponse :init)))

(setf (get webots_demo::skin_set_bone_positionRequest :md5sum-) "f009d6c1aead25b455139f2460ea63da")
(setf (get webots_demo::skin_set_bone_positionRequest :datatype-) "webots_demo/skin_set_bone_positionRequest")
(setf (get webots_demo::skin_set_bone_positionRequest :definition-)
      "int32 index
geometry_msgs/Vector3 position
bool absolute

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
---
int32 success

")

(setf (get webots_demo::skin_set_bone_positionResponse :md5sum-) "f009d6c1aead25b455139f2460ea63da")
(setf (get webots_demo::skin_set_bone_positionResponse :datatype-) "webots_demo/skin_set_bone_positionResponse")
(setf (get webots_demo::skin_set_bone_positionResponse :definition-)
      "int32 index
geometry_msgs/Vector3 position
bool absolute

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
---
int32 success

")



(provide :webots_demo/skin_set_bone_position "f009d6c1aead25b455139f2460ea63da")


