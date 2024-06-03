;; Auto-generated. Do not edit!


(when (boundp 'webots_ros::field_get_color)
  (if (not (find-package "WEBOTS_ROS"))
    (make-package "WEBOTS_ROS"))
  (shadow 'field_get_color (find-package "WEBOTS_ROS")))
(unless (find-package "WEBOTS_ROS::FIELD_GET_COLOR")
  (make-package "WEBOTS_ROS::FIELD_GET_COLOR"))
(unless (find-package "WEBOTS_ROS::FIELD_GET_COLORREQUEST")
  (make-package "WEBOTS_ROS::FIELD_GET_COLORREQUEST"))
(unless (find-package "WEBOTS_ROS::FIELD_GET_COLORRESPONSE")
  (make-package "WEBOTS_ROS::FIELD_GET_COLORRESPONSE"))

(in-package "ROS")



(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass webots_ros::field_get_colorRequest
  :super ros::object
  :slots (_field _index ))

(defmethod webots_ros::field_get_colorRequest
  (:init
   (&key
    ((:field __field) 0)
    ((:index __index) 0)
    )
   (send-super :init)
   (setq _field (round __field))
   (setq _index (round __index))
   self)
  (:field
   (&optional __field)
   (if __field (setq _field __field)) _field)
  (:index
   (&optional __index)
   (if __index (setq _index __index)) _index)
  (:serialization-length
   ()
   (+
    ;; uint64 _field
    8
    ;; int32 _index
    4
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
   ;;
   self)
  )

(defclass webots_ros::field_get_colorResponse
  :super ros::object
  :slots (_value ))

(defmethod webots_ros::field_get_colorResponse
  (:init
   (&key
    ((:value __value) (instance std_msgs::ColorRGBA :init))
    )
   (send-super :init)
   (setq _value __value)
   self)
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
    ;; std_msgs/ColorRGBA _value
    (send _value :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/ColorRGBA _value
       (send _value :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/ColorRGBA _value
     (send _value :deserialize buf ptr-) (incf ptr- (send _value :serialization-length))
   ;;
   self)
  )

(defclass webots_ros::field_get_color
  :super ros::object
  :slots ())

(setf (get webots_ros::field_get_color :md5sum-) "4920aae633f7f96feac03b4ce89984d5")
(setf (get webots_ros::field_get_color :datatype-) "webots_ros/field_get_color")
(setf (get webots_ros::field_get_color :request) webots_ros::field_get_colorRequest)
(setf (get webots_ros::field_get_color :response) webots_ros::field_get_colorResponse)

(defmethod webots_ros::field_get_colorRequest
  (:response () (instance webots_ros::field_get_colorResponse :init)))

(setf (get webots_ros::field_get_colorRequest :md5sum-) "4920aae633f7f96feac03b4ce89984d5")
(setf (get webots_ros::field_get_colorRequest :datatype-) "webots_ros/field_get_colorRequest")
(setf (get webots_ros::field_get_colorRequest :definition-)
      "uint64 field
int32 index
---
std_msgs/ColorRGBA value


================================================================================
MSG: std_msgs/ColorRGBA
float32 r
float32 g
float32 b
float32 a
")

(setf (get webots_ros::field_get_colorResponse :md5sum-) "4920aae633f7f96feac03b4ce89984d5")
(setf (get webots_ros::field_get_colorResponse :datatype-) "webots_ros/field_get_colorResponse")
(setf (get webots_ros::field_get_colorResponse :definition-)
      "uint64 field
int32 index
---
std_msgs/ColorRGBA value


================================================================================
MSG: std_msgs/ColorRGBA
float32 r
float32 g
float32 b
float32 a
")



(provide :webots_ros/field_get_color "4920aae633f7f96feac03b4ce89984d5")


