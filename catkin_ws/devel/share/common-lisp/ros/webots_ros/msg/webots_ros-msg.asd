
(cl:in-package :asdf)

(defsystem "webots_ros-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "BoolStamped" :depends-on ("_package_BoolStamped"))
    (:file "_package_BoolStamped" :depends-on ("_package"))
    (:file "ContactPoint" :depends-on ("_package_ContactPoint"))
    (:file "_package_ContactPoint" :depends-on ("_package"))
    (:file "Float64Stamped" :depends-on ("_package_Float64Stamped"))
    (:file "_package_Float64Stamped" :depends-on ("_package"))
    (:file "Int32Stamped" :depends-on ("_package_Int32Stamped"))
    (:file "_package_Int32Stamped" :depends-on ("_package"))
    (:file "Int8Stamped" :depends-on ("_package_Int8Stamped"))
    (:file "_package_Int8Stamped" :depends-on ("_package"))
    (:file "RadarTarget" :depends-on ("_package_RadarTarget"))
    (:file "_package_RadarTarget" :depends-on ("_package"))
    (:file "RecognitionObject" :depends-on ("_package_RecognitionObject"))
    (:file "_package_RecognitionObject" :depends-on ("_package"))
    (:file "RecognitionObjects" :depends-on ("_package_RecognitionObjects"))
    (:file "_package_RecognitionObjects" :depends-on ("_package"))
    (:file "StringStamped" :depends-on ("_package_StringStamped"))
    (:file "_package_StringStamped" :depends-on ("_package"))
  ))