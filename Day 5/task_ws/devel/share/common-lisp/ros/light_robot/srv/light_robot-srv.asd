
(cl:in-package :asdf)

(defsystem "light_robot-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "textmessage" :depends-on ("_package_textmessage"))
    (:file "_package_textmessage" :depends-on ("_package"))
  ))