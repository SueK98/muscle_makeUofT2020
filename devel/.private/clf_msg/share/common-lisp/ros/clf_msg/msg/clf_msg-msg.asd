
(cl:in-package :asdf)

(defsystem "clf_msg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Frame_unit_data" :depends-on ("_package_Frame_unit_data"))
    (:file "_package_Frame_unit_data" :depends-on ("_package"))
  ))