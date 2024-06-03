;; Auto-generated. Do not edit!


(when (boundp 'webots_ros::ContactPoint)
  (if (not (find-package "WEBOTS_ROS"))
    (make-package "WEBOTS_ROS"))
  (shadow 'ContactPoint (find-package "WEBOTS_ROS")))
(unless (find-package "WEBOTS_ROS::CONTACTPOINT")
  (make-package "WEBOTS_ROS::CONTACTPOINT"))

(in-package "ROS")
;;//! \htmlinclude ContactPoint.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass webots_ros::ContactPoint
  :super ros::object
  :slots (_point _node_id ))

(defmethod webots_ros::ContactPoint
  (:init
   (&key
    ((:point __point) (instance geometry_msgs::Point :init))
    ((:node_id __node_id) 0)
    )
   (send-super :init)
   (setq _point __point)
   (setq _node_id (round __node_id))
   self)
  (:point
   (&rest __point)
   (if (keywordp (car __point))
       (send* _point __point)
     (progn
       (if __point (setq _point (car __point)))
       _point)))
  (:node_id
   (&optional __node_id)
   (if __node_id (setq _node_id __node_id)) _node_id)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _point
    (send _point :serialization-length)
    ;; int32 _node_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _point
       (send _point :serialize s)
     ;; int32 _node_id
       (write-long _node_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _point
     (send _point :deserialize buf ptr-) (incf ptr- (send _point :serialization-length))
   ;; int32 _node_id
     (setq _node_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get webots_ros::ContactPoint :md5sum-) "c401f69a1503004a9e4aec8ae5ec3e17")
(setf (get webots_ros::ContactPoint :datatype-) "webots_ros/ContactPoint")
(setf (get webots_ros::ContactPoint :definition-)
      "geometry_msgs/Point point
int32 node_id

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :webots_ros/ContactPoint "c401f69a1503004a9e4aec8ae5ec3e17")


