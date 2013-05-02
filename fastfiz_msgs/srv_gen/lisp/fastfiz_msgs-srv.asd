
(cl:in-package :asdf)

(defsystem "fastfiz_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :billiards_msgs-msg
               :fastfiz_msgs-msg
)
  :components ((:file "_package")
    (:file "SimulateShot" :depends-on ("_package_SimulateShot"))
    (:file "_package_SimulateShot" :depends-on ("_package"))
  ))