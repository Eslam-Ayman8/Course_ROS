
(cl:in-package :asdf)

(defsystem "light_robot-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "complx" :depends-on ("_package_complx"))
    (:file "_package_complx" :depends-on ("_package"))
  ))