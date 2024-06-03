;; Auto-generated. Do not edit!


(when (boundp 'webots_demo::Goalname)
  (if (not (find-package "WEBOTS_DEMO"))
    (make-package "WEBOTS_DEMO"))
  (shadow 'Goalname (find-package "WEBOTS_DEMO")))
(unless (find-package "WEBOTS_DEMO::GOALNAME")
  (make-package "WEBOTS_DEMO::GOALNAME"))

(in-package "ROS")
;;//! \htmlinclude Goalname.msg.html


(defclass webots_demo::Goalname
  :super ros::object
  :slots (_goal_name ))

(defmethod webots_demo::Goalname
  (:init
   (&key
    ((:goal_name __goal_name) "")
    )
   (send-super :init)
   (setq _goal_name (string __goal_name))
   self)
  (:goal_name
   (&optional __goal_name)
   (if __goal_name (setq _goal_name __goal_name)) _goal_name)
  (:serialization-length
   ()
   (+
    ;; string _goal_name
    4 (length _goal_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _goal_name
       (write-long (length _goal_name) s) (princ _goal_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _goal_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _goal_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get webots_demo::Goalname :md5sum-) "254bb0d4018de3d871badc783fa8b12a")
(setf (get webots_demo::Goalname :datatype-) "webots_demo/Goalname")
(setf (get webots_demo::Goalname :definition-)
      "string goal_name
")



(provide :webots_demo/Goalname "254bb0d4018de3d871badc783fa8b12a")


