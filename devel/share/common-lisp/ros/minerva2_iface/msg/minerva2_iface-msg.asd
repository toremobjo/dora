
(cl:in-package :asdf)

(defsystem "minerva2_iface-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Forcevector" :depends-on ("_package_Forcevector"))
    (:file "_package_Forcevector" :depends-on ("_package"))
    (:file "Mtipro" :depends-on ("_package_Mtipro"))
    (:file "_package_Mtipro" :depends-on ("_package"))
    (:file "Navipac" :depends-on ("_package_Navipac"))
    (:file "_package_Navipac" :depends-on ("_package"))
  ))