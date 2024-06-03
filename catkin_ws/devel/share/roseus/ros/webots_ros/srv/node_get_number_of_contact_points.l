;; Auto-generated. Do not edit!


(when (boundp 'webots_ros::node_get_number_of_contact_points)
  (if (not (find-package "WEBOTS_ROS"))
    (make-package "WEBOTS_ROS"))
  (shadow 'node_get_number_of_contact_points (find-package "WEBOTS_ROS")))
(unless (find-package "WEBOTS_ROS::NODE_GET_NUMBER_OF_CONTACT_POINTS")
  (make-package "WEBOTS_ROS::NODE_GET_NUMBER_OF_CONTACT_POINTS"))
(unless (find-package "WEBOTS_ROS::NODE_GET_NUMBER_OF_CONTACT_POINTSREQUEST")
  (make-package "WEBOTS_ROS::NODE_GET_NUMBER_OF_CONTACT_POINTSREQUEST"))
(unless (find-package "WEBOTS_ROS::NODE_GET_NUMBER_OF_CONTACT_POINTSRESPONSE")
  (make-package "WEBOTS_ROS::NODE_GET_NUMBER_OF_CONTACT_POINTSRESPONSE"))

(in-package "ROS")





(defclass webots_ros::node_get_number_of_contact_pointsRequest
  :super ros::object
  :slots (_node _includeDescendants ))

(defmethod webots_ros::node_get_number_of_contact_pointsRequest
  (:init
   (&key
    ((:node __node) 0)
    ((:includeDescendants __includeDescendants) nil)
    )
   (send-super :init)
   (setq _node (round __node))
   (setq _includeDescendants __includeDescendants)
   self)
  (:node
   (&optional __node)
   (if __node (setq _node __node)) _node)
  (:includeDescendants
   (&optional (__includeDescendants :null))
   (if (not (eq __includeDescendants :null)) (setq _includeDescendants __includeDescendants)) _includeDescendants)
  (:serialization-length
   ()
   (+
    ;; uint64 _node
    8
    ;; bool _includeDescendants
    1
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
     ;; bool _includeDescendants
       (if _includeDescendants (write-byte -1 s) (write-byte 0 s))
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
   ;; bool _includeDescendants
     (setq _includeDescendants (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass webots_ros::node_get_number_of_contact_pointsResponse
  :super ros::object
  :slots (_numberOfContactPoints ))

(defmethod webots_ros::node_get_number_of_contact_pointsResponse
  (:init
   (&key
    ((:numberOfContactPoints __numberOfContactPoints) 0)
    )
   (send-super :init)
   (setq _numberOfContactPoints (round __numberOfContactPoints))
   self)
  (:numberOfContactPoints
   (&optional __numberOfContactPoints)
   (if __numberOfContactPoints (setq _numberOfContactPoints __numberOfContactPoints)) _numberOfContactPoints)
  (:serialization-length
   ()
   (+
    ;; int32 _numberOfContactPoints
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _numberOfContactPoints
       (write-long _numberOfContactPoints s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _numberOfContactPoints
     (setq _numberOfContactPoints (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass webots_ros::node_get_number_of_contact_points
  :super ros::object
  :slots ())

(setf (get webots_ros::node_get_number_of_contact_points :md5sum-) "50947605d2f8a029d23873d02662ef1b")
(setf (get webots_ros::node_get_number_of_contact_points :datatype-) "webots_ros/node_get_number_of_contact_points")
(setf (get webots_ros::node_get_number_of_contact_points :request) webots_ros::node_get_number_of_contact_pointsRequest)
(setf (get webots_ros::node_get_number_of_contact_points :response) webots_ros::node_get_number_of_contact_pointsResponse)

(defmethod webots_ros::node_get_number_of_contact_pointsRequest
  (:response () (instance webots_ros::node_get_number_of_contact_pointsResponse :init)))

(setf (get webots_ros::node_get_number_of_contact_pointsRequest :md5sum-) "50947605d2f8a029d23873d02662ef1b")
(setf (get webots_ros::node_get_number_of_contact_pointsRequest :datatype-) "webots_ros/node_get_number_of_contact_pointsRequest")
(setf (get webots_ros::node_get_number_of_contact_pointsRequest :definition-)
      "uint64 node
bool includeDescendants
---
int32 numberOfContactPoints

")

(setf (get webots_ros::node_get_number_of_contact_pointsResponse :md5sum-) "50947605d2f8a029d23873d02662ef1b")
(setf (get webots_ros::node_get_number_of_contact_pointsResponse :datatype-) "webots_ros/node_get_number_of_contact_pointsResponse")
(setf (get webots_ros::node_get_number_of_contact_pointsResponse :definition-)
      "uint64 node
bool includeDescendants
---
int32 numberOfContactPoints

")



(provide :webots_ros/node_get_number_of_contact_points "50947605d2f8a029d23873d02662ef1b")


