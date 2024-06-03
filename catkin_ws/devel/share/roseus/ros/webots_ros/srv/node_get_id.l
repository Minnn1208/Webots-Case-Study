;; Auto-generated. Do not edit!


(when (boundp 'webots_ros::node_get_id)
  (if (not (find-package "WEBOTS_ROS"))
    (make-package "WEBOTS_ROS"))
  (shadow 'node_get_id (find-package "WEBOTS_ROS")))
(unless (find-package "WEBOTS_ROS::NODE_GET_ID")
  (make-package "WEBOTS_ROS::NODE_GET_ID"))
(unless (find-package "WEBOTS_ROS::NODE_GET_IDREQUEST")
  (make-package "WEBOTS_ROS::NODE_GET_IDREQUEST"))
(unless (find-package "WEBOTS_ROS::NODE_GET_IDRESPONSE")
  (make-package "WEBOTS_ROS::NODE_GET_IDRESPONSE"))

(in-package "ROS")





(defclass webots_ros::node_get_idRequest
  :super ros::object
  :slots (_node ))

(defmethod webots_ros::node_get_idRequest
  (:init
   (&key
    ((:node __node) 0)
    )
   (send-super :init)
   (setq _node (round __node))
   self)
  (:node
   (&optional __node)
   (if __node (setq _node __node)) _node)
  (:serialization-length
   ()
   (+
    ;; uint64 _node
    8
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
   ;;
   self)
  )

(defclass webots_ros::node_get_idResponse
  :super ros::object
  :slots (_id ))

(defmethod webots_ros::node_get_idResponse
  (:init
   (&key
    ((:id __id) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass webots_ros::node_get_id
  :super ros::object
  :slots ())

(setf (get webots_ros::node_get_id :md5sum-) "16a06b427b76c7c64b73962f4f092416")
(setf (get webots_ros::node_get_id :datatype-) "webots_ros/node_get_id")
(setf (get webots_ros::node_get_id :request) webots_ros::node_get_idRequest)
(setf (get webots_ros::node_get_id :response) webots_ros::node_get_idResponse)

(defmethod webots_ros::node_get_idRequest
  (:response () (instance webots_ros::node_get_idResponse :init)))

(setf (get webots_ros::node_get_idRequest :md5sum-) "16a06b427b76c7c64b73962f4f092416")
(setf (get webots_ros::node_get_idRequest :datatype-) "webots_ros/node_get_idRequest")
(setf (get webots_ros::node_get_idRequest :definition-)
      "uint64 node
---
int32 id

")

(setf (get webots_ros::node_get_idResponse :md5sum-) "16a06b427b76c7c64b73962f4f092416")
(setf (get webots_ros::node_get_idResponse :datatype-) "webots_ros/node_get_idResponse")
(setf (get webots_ros::node_get_idResponse :definition-)
      "uint64 node
---
int32 id

")



(provide :webots_ros/node_get_id "16a06b427b76c7c64b73962f4f092416")


