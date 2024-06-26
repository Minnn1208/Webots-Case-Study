;; Auto-generated. Do not edit!


(when (boundp 'webots_demo::node_get_contact_point)
  (if (not (find-package "WEBOTS_DEMO"))
    (make-package "WEBOTS_DEMO"))
  (shadow 'node_get_contact_point (find-package "WEBOTS_DEMO")))
(unless (find-package "WEBOTS_DEMO::NODE_GET_CONTACT_POINT")
  (make-package "WEBOTS_DEMO::NODE_GET_CONTACT_POINT"))
(unless (find-package "WEBOTS_DEMO::NODE_GET_CONTACT_POINTREQUEST")
  (make-package "WEBOTS_DEMO::NODE_GET_CONTACT_POINTREQUEST"))
(unless (find-package "WEBOTS_DEMO::NODE_GET_CONTACT_POINTRESPONSE")
  (make-package "WEBOTS_DEMO::NODE_GET_CONTACT_POINTRESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass webots_demo::node_get_contact_pointRequest
  :super ros::object
  :slots (_node _index ))

(defmethod webots_demo::node_get_contact_pointRequest
  (:init
   (&key
    ((:node __node) 0)
    ((:index __index) 0)
    )
   (send-super :init)
   (setq _node (round __node))
   (setq _index (round __index))
   self)
  (:node
   (&optional __node)
   (if __node (setq _node __node)) _node)
  (:index
   (&optional __index)
   (if __index (setq _index __index)) _index)
  (:serialization-length
   ()
   (+
    ;; uint64 _node
    8
    ;; int32 _index
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint64 _node
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _node (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _node) (= (length (_node . bv)) 2)) ;; bignum
              (write-long (ash (elt (_node . bv) 0) 0) s)
              (write-long (ash (elt (_node . bv) 1) -1) s))
             ((and (class _node) (= (length (_node . bv)) 1)) ;; big1
              (write-long (elt (_node . bv) 0) s)
              (write-long (if (>= _node 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _node s)(write-long (if (>= _node 0) 0 #xffffffff) s)))
     ;; int32 _index
       (write-long _index s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint64 _node
     
#+(or :alpha :irix6 :x86_64)
      (setf _node (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _node (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(defclass webots_demo::node_get_contact_pointResponse
  :super ros::object
  :slots (_point ))

(defmethod webots_demo::node_get_contact_pointResponse
  (:init
   (&key
    ((:point __point) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _point __point)
   self)
  (:point
   (&rest __point)
   (if (keywordp (car __point))
       (send* _point __point)
     (progn
       (if __point (setq _point (car __point)))
       _point)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _point
    (send _point :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _point
       (send _point :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _point
     (send _point :deserialize buf ptr-) (incf ptr- (send _point :serialization-length))
   ;;
   self)
  )

(defclass webots_demo::node_get_contact_point
  :super ros::object
  :slots ())

(setf (get webots_demo::node_get_contact_point :md5sum-) "d85a7c32d5696fcbf69df9280ddce70d")
(setf (get webots_demo::node_get_contact_point :datatype-) "webots_demo/node_get_contact_point")
(setf (get webots_demo::node_get_contact_point :request) webots_demo::node_get_contact_pointRequest)
(setf (get webots_demo::node_get_contact_point :response) webots_demo::node_get_contact_pointResponse)

(defmethod webots_demo::node_get_contact_pointRequest
  (:response () (instance webots_demo::node_get_contact_pointResponse :init)))

(setf (get webots_demo::node_get_contact_pointRequest :md5sum-) "d85a7c32d5696fcbf69df9280ddce70d")
(setf (get webots_demo::node_get_contact_pointRequest :datatype-) "webots_demo/node_get_contact_pointRequest")
(setf (get webots_demo::node_get_contact_pointRequest :definition-)
      "uint64 node
int32 index
---
geometry_msgs/Point point


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")

(setf (get webots_demo::node_get_contact_pointResponse :md5sum-) "d85a7c32d5696fcbf69df9280ddce70d")
(setf (get webots_demo::node_get_contact_pointResponse :datatype-) "webots_demo/node_get_contact_pointResponse")
(setf (get webots_demo::node_get_contact_pointResponse :definition-)
      "uint64 node
int32 index
---
geometry_msgs/Point point


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")



(provide :webots_demo/node_get_contact_point "d85a7c32d5696fcbf69df9280ddce70d")


