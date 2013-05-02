
(cl:in-package :asdf)

(defsystem "fastfiz_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :billiards_msgs-msg
)
  :components ((:file "_package")
    (:file "Event" :depends-on ("_package_Event"))
    (:file "_package_Event" :depends-on ("_package"))
    (:file "ShotParams" :depends-on ("_package_ShotParams"))
    (:file "_package_ShotParams" :depends-on ("_package"))
  ))