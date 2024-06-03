;; Auto-generated. Do not edit!


(when (boundp 'webots_ros::RecognitionObject)
  (if (not (find-package "WEBOTS_ROS"))
    (make-package "WEBOTS_ROS"))
  (shadow 'RecognitionObject (find-package "WEBOTS_ROS")))
(unless (find-package "WEBOTS_ROS::RECOGNITIONOBJECT")
  (make-package "WEBOTS_ROS::RECOGNITIONOBJECT"))

(in-package "ROS")
;;//! \htmlinclude RecognitionObject.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass webots_ros::RecognitionObject
  :super ros::object
  :slots (_position _orientation _position_on_image _size_on_image _number_of_colors _colors _model ))

(defmethod webots_ros::RecognitionObject
  (:init
   (&key
    ((:position __position) (instance geometry_msgs::Vector3 :init))
    ((:orientation __orientation) (instance geometry_msgs::Quaternion :init))
    ((:position_on_image __position_on_image) (instance geometry_msgs::Vector3 :init))
    ((:size_on_image __size_on_image) (instance geometry_msgs::Vector3 :init))
    ((:number_of_colors __number_of_colors) 0)
    ((:colors __colors) ())
    ((:model __model) "")
    )
   (send-super :init)
   (setq _position __position)
   (setq _orientation __orientation)
   (setq _position_on_image __position_on_image)
   (setq _size_on_image __size_on_image)
   (setq _number_of_colors (round __number_of_colors))
   (setq _colors __colors)
   (setq _model (string __model))
   self)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:orientation
   (&rest __orientation)
   (if (keywordp (car __orientation))
       (send* _orientation __orientation)
     (progn
       (if __orientation (setq _orientation (car __orientation)))
       _orientation)))
  (:position_on_image
   (&rest __position_on_image)
   (if (keywordp (car __position_on_image))
       (send* _position_on_image __position_on_image)
     (progn
       (if __position_on_image (setq _position_on_image (car __position_on_image)))
       _position_on_image)))
  (:size_on_image
   (&rest __size_on_image)
   (if (keywordp (car __size_on_image))
       (send* _size_on_image __size_on_image)
     (progn
       (if __size_on_image (setq _size_on_image (car __size_on_image)))
       _size_on_image)))
  (:number_of_colors
   (&optional __number_of_colors)
   (if __number_of_colors (setq _number_of_colors __number_of_colors)) _number_of_colors)
  (:colors
   (&rest __colors)
   (if (keywordp (car __colors))
       (send* _colors __colors)
     (progn
       (if __colors (setq _colors (car __colors)))
       _colors)))
  (:model
   (&optional __model)
   (if __model (setq _model __model)) _model)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Vector3 _position
    (send _position :serialization-length)
    ;; geometry_msgs/Quaternion _orientation
    (send _orientation :serialization-length)
    ;; geometry_msgs/Vector3 _position_on_image
    (send _position_on_image :serialization-length)
    ;; geometry_msgs/Vector3 _size_on_image
    (send _size_on_image :serialization-length)
    ;; int32 _number_of_colors
    4
    ;; geometry_msgs/Vector3[] _colors
    (apply #'+ (send-all _colors :serialization-length)) 4
    ;; string _model
    4 (length _model)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Vector3 _position
       (send _position :serialize s)
     ;; geometry_msgs/Quaternion _orientation
       (send _orientation :serialize s)
     ;; geometry_msgs/Vector3 _position_on_image
       (send _position_on_image :serialize s)
     ;; geometry_msgs/Vector3 _size_on_image
       (send _size_on_image :serialize s)
     ;; int32 _number_of_colors
       (write-long _number_of_colors s)
     ;; geometry_msgs/Vector3[] _colors
     (write-long (length _colors) s)
     (dolist (elem _colors)
       (send elem :serialize s)
       )
     ;; string _model
       (write-long (length _model) s) (princ _model s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Vector3 _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; geometry_msgs/Quaternion _orientation
     (send _orientation :deserialize buf ptr-) (incf ptr- (send _orientation :serialization-length))
   ;; geometry_msgs/Vector3 _position_on_image
     (send _position_on_image :deserialize buf ptr-) (incf ptr- (send _position_on_image :serialization-length))
   ;; geometry_msgs/Vector3 _size_on_image
     (send _size_on_image :deserialize buf ptr-) (incf ptr- (send _size_on_image :serialization-length))
   ;; int32 _number_of_colors
     (setq _number_of_colors (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Vector3[] _colors
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _colors (let (r) (dotimes (i n) (push (instance geometry_msgs::Vector3 :init) r)) r))
     (dolist (elem- _colors)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string _model
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _model (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get webots_ros::RecognitionObject :md5sum-) "d1a091cfdf9ce6628a657e03f119442a")
(setf (get webots_ros::RecognitionObject :datatype-) "webots_ros/RecognitionObject")
(setf (get webots_ros::RecognitionObject :definition-)
      "geometry_msgs/Vector3 position
geometry_msgs/Quaternion orientation
geometry_msgs/Vector3 position_on_image
geometry_msgs/Vector3 size_on_image
int32 number_of_colors
geometry_msgs/Vector3[] colors
string model

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
float64 z
================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :webots_ros/RecognitionObject "d1a091cfdf9ce6628a657e03f119442a")


