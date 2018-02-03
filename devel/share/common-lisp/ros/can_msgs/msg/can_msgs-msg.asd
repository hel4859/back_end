
(cl:in-package :asdf)

(defsystem "can_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "CarSwitchControl" :depends-on ("_package_CarSwitchControl"))
    (:file "_package_CarSwitchControl" :depends-on ("_package"))
    (:file "SteerAndSpeedCmd" :depends-on ("_package_SteerAndSpeedCmd"))
    (:file "_package_SteerAndSpeedCmd" :depends-on ("_package"))
    (:file "SpeedMilSteer" :depends-on ("_package_SpeedMilSteer"))
    (:file "_package_SpeedMilSteer" :depends-on ("_package"))
  ))