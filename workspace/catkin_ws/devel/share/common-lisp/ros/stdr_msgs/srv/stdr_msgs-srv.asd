
(cl:in-package :asdf)

(defsystem "stdr_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :nav_msgs-msg
               :stdr_msgs-msg
)
  :components ((:file "_package")
    (:file "AddCO2Source" :depends-on ("_package_AddCO2Source"))
    (:file "_package_AddCO2Source" :depends-on ("_package"))
    (:file "AddRfidTag" :depends-on ("_package_AddRfidTag"))
    (:file "_package_AddRfidTag" :depends-on ("_package"))
    (:file "AddSoundSource" :depends-on ("_package_AddSoundSource"))
    (:file "_package_AddSoundSource" :depends-on ("_package"))
    (:file "AddThermalSource" :depends-on ("_package_AddThermalSource"))
    (:file "_package_AddThermalSource" :depends-on ("_package"))
    (:file "DeleteCO2Source" :depends-on ("_package_DeleteCO2Source"))
    (:file "_package_DeleteCO2Source" :depends-on ("_package"))
    (:file "DeleteRfidTag" :depends-on ("_package_DeleteRfidTag"))
    (:file "_package_DeleteRfidTag" :depends-on ("_package"))
    (:file "DeleteSoundSource" :depends-on ("_package_DeleteSoundSource"))
    (:file "_package_DeleteSoundSource" :depends-on ("_package"))
    (:file "DeleteThermalSource" :depends-on ("_package_DeleteThermalSource"))
    (:file "_package_DeleteThermalSource" :depends-on ("_package"))
    (:file "LoadExternalMap" :depends-on ("_package_LoadExternalMap"))
    (:file "_package_LoadExternalMap" :depends-on ("_package"))
    (:file "LoadMap" :depends-on ("_package_LoadMap"))
    (:file "_package_LoadMap" :depends-on ("_package"))
    (:file "MoveRobot" :depends-on ("_package_MoveRobot"))
    (:file "_package_MoveRobot" :depends-on ("_package"))
    (:file "RegisterGui" :depends-on ("_package_RegisterGui"))
    (:file "_package_RegisterGui" :depends-on ("_package"))
  ))