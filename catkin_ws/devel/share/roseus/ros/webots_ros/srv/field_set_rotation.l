;; Auto-generated. Do not edit!


(when (boundp 'webots_ros::field_set_rotation)
  (if (not (find-package "WEBOTS_ROS"))
    (make-package "WEBOTS_ROS"))
  (shadow 'field_set_rotation (find-package "WEBOTS_ROS")))
(unless (find-package "WEBOTS_ROS::FIELD_SET_ROTATION")
  (make-package "WEBOTS_ROS::FIELD_SET_ROTATION"))
(unless (find-package "WEBOTS_ROS::FIELD_SET_ROTATIONREQUEST")
  (make-package "WEBOTS_ROS::FIELD_SET_ROTATIONREQUEST"))
(unless (find-package "WEBOTS_ROS::FIELD_SET_ROTATIONRESPONSE")
  (make-package "WEBOTS_ROS::FIELD_SET_ROTATIONRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass webots_ros::field_set_rotationRequest
  :super ros::object
  :slots (_field _index _value ))

(defmethod webots_ros::field_set_rotationRequest
  (:init
   (&key
    ((:field __field) 0)
    ((:index __index) 0)
    ((:value __value) (instance geometry_msgs::Quaternion :init))
    )
   (send-super :init)
   (setq _field (round __field))
   (setq _index (round __index))
   (setq _value __value)
   self)
  (:field
   (&optional __field)
   (if __field (setq _field __field)) _field)
  (:index
   (&optional __index)
   (if __index (setq _index __index)) _index)
  (:value
   (&rest __value)
   (if (keywordp (car __value))
       (send* _value __value)
     (progn
       (if __value (setq _value (car __value)))
       _value)))
  (:serialization-length
   ()
   (+
    ;; uint64 _field
    8
    ;; int32 _index
    4
    ;; geometry_msgs/Quaternion _value
    (send _value :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint64 _field
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _field (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _field) (= (length (_field . bv)) 2)) ;; bignum
              (write-long (ash (elt (_field . bv) 0) 0) s)
              (write-long (ash (elt (_field . bv) 1) -1) s))
             ((and (class _field) (= (length (_field . bv)) 1)) ;; big1
              (write-long (elt (_field . bv) 0) s)
              (write-long (if (>= _field 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _field s)(write-long (if (>= _field 0) 0 #xffffffff) s)))
     ;; int32 _index
       (write-long _index s)
     ;; geometry_msgs/Quaternion _value
       (send _value :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint64 _field
     
#+(or :alpha :irix6 :x86_64)
      (setf _field (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _field (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int32 _index
     (setq _index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Quaternion _value
     (send _value :deserialize buf ptr-) (incf ptr- (send _value :serialization-length))
   ;;
   self)
  )

(defclass webots_ros::field_set_rotationResponse
  :super ros::object
  :slots (_success ))

(defmethod webots_ros::field_set_rotationResponse
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

(defclass webots_ros::field_set_rotation
  :super ros::object
  :slots ())

(setf (get webots_ros::field_set_rotation :md5sum-) "f7b9003dace87295f2b9eb1dc57c4294")
(setf (get webots_ros::field_set_rotation :datatype-) "webots_ros/field_set_rotation")
(setf (get webots_ros::field_set_rotation :request) webots_ros::field_set_rotationRequest)
(setf (get webots_ros::field_set_rotation :response) webots_ros::field_set_rotationResponse)

(defmethod webots_ros::field_set_rotationRequest
  (:response () (instance webots_ros::field_set_rotationResponse :init)))

(setf (get webots_ros::field_set_rotationRequest :md5sum-) "f7b9003dace87295f2b9eb1dc57c4294")
(setf (get webots_ros::field_set_rotationRequest :datatype-) "webots_ros/field_set_rotationRequest")
(setf (get webots_ros::field_set_rotationRequest :definition-)
      "uint64 field
int32 index
geometry_msgs/Quaternion value

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

(setf (get webots_ros::field_set_rotationResponse :md5sum-) "f7b9003dace87295f2b9eb1dc57c4294")
(setf (get webots_ros::field_set_rotationResponse :datatype-) "webots_ros/field_set_rotationResponse")
(setf (get webots_ros::field_set_rotationResponse :definition-)
      "uint64 field
int32 index
geometry_msgs/Quaternion value

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



(provide :webots_ros/field_set_rotation "f7b9003dace87295f2b9eb1dc57c4294")


