
(cl:in-package :asdf)

(defsystem "billiards_planner-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :billiards_msgs-msg
)
  :components ((:file "_package")
    (:file "PlanOneShot" :depends-on ("_package_PlanOneShot"))
    (:file "_package_PlanOneShot" :depends-on ("_package"))
  ))