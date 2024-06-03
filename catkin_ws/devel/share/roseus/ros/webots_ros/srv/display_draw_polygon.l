;; Auto-generated. Do not edit!


(when (boundp 'webots_ros::display_draw_polygon)
  (if (not (find-package "WEBOTS_ROS"))
    (make-package "WEBOTS_ROS"))
  (shadow 'display_draw_polygon (find-package "WEBOTS_ROS")))
(unless (find-package "WEBOTS_ROS::DISPLAY_DRAW_POLYGON")
  (make-package "WEBOTS_ROS::DISPLAY_DRAW_POLYGON"))
(unless (find-package "WEBOTS_ROS::DISPLAY_DRAW_POLYGONREQUEST")
  (make-package "WEBOTS_ROS::DISPLAY_DRAW_POLYGONREQUEST"))
(unless (find-package "WEBOTS_ROS::DISPLAY_DRAW_POLYGONRESPONSE")
  (make-package "WEBOTS_ROS::DISPLAY_DRAW_POLYGONRESPONSE"))

(in-package "ROS")





(defclass webots_ros::display_draw_polygonRequest
  :super ros::object
  :slots (_x _y _size ))

(defmethod webots_ros::display_draw_polygonRequest
  (:init
   (&key
    ((:x __x) (make-array 0 :initial-element 0 :element-type :integer))
    ((:y __y) (make-array 0 :initial-element 0 :element-type :integer))
    ((:size __size) 0)
    )
   (send-super :init)
   (setq _x __x)
   (setq _y __y)
   (setq _size (round __size))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:size
   (&optional __size)
   (if __size (setq _size __size)) _size)
  (:serialization-length
   ()
   (+
    ;; int32[] _x
    (* 4    (length _x)) 4
    ;; int32[] _y
    (* 4    (length _y)) 4
    ;; int32 _size
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _x
     (write-long (length _x) s)
     (dotimes (i (length _x))
       (write-long (elt _x i) s)
       )
     ;; int32[] _y
     (write-long (length _y) s)
     (dotimes (i (length _y))
       (write-long (elt _y i) s)
       )
     ;; int32 _size
       (write-long _size s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _x
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _x (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _x i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _y
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _y (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _y i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32 _size
     (setq _size (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass webots_ros::display_draw_polygonResponse
  :super ros::object
  :slots (_success ))

(defmethod webots_ros::display_draw_polygonResponse
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

(defclass webots_ros::display_draw_polygon
  :super ros::object
  :slots ())

(setf (get webots_ros::display_draw_polygon :md5sum-) "dfa1f0ed4de4cc45db83bc60add40eb6")
(setf (get webots_ros::display_draw_polygon :datatype-) "webots_ros/display_draw_polygon")
(setf (get webots_ros::display_draw_polygon :request) webots_ros::display_draw_polygonRequest)
(setf (get webots_ros::display_draw_polygon :response) webots_ros::display_draw_polygonResponse)

(defmethod webots_ros::display_draw_polygonRequest
  (:response () (instance webots_ros::display_draw_polygonResponse :init)))

(setf (get webots_ros::display_draw_polygonRequest :md5sum-) "dfa1f0ed4de4cc45db83bc60add40eb6")
(setf (get webots_ros::display_draw_polygonRequest :datatype-) "webots_ros/display_draw_polygonRequest")
(setf (get webots_ros::display_draw_polygonRequest :definition-)
      "int32[] x
int32[] y
int32 size
---
int8 success

")

(setf (get webots_ros::display_draw_polygonResponse :md5sum-) "dfa1f0ed4de4cc45db83bc60add40eb6")
(setf (get webots_ros::display_draw_polygonResponse :datatype-) "webots_ros/display_draw_polygonResponse")
(setf (get webots_ros::display_draw_polygonResponse :definition-)
      "int32[] x
int32[] y
int32 size
---
int8 success

")



(provide :webots_ros/display_draw_polygon "dfa1f0ed4de4cc45db83bc60add40eb6")


