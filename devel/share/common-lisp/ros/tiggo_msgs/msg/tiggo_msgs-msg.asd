
(cl:in-package :asdf)

(defsystem "tiggo_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "RealCurb" :depends-on ("_package_RealCurb"))
    (:file "_package_RealCurb" :depends-on ("_package"))
    (:file "PixelLane" :depends-on ("_package_PixelLane"))
    (:file "_package_PixelLane" :depends-on ("_package"))
    (:file "EsrObj" :depends-on ("_package_EsrObj"))
    (:file "_package_EsrObj" :depends-on ("_package"))
    (:file "CanFrame" :depends-on ("_package_CanFrame"))
    (:file "_package_CanFrame" :depends-on ("_package"))
    (:file "Luzhui" :depends-on ("_package_Luzhui"))
    (:file "_package_Luzhui" :depends-on ("_package"))
    (:file "Orientation" :depends-on ("_package_Orientation"))
    (:file "_package_Orientation" :depends-on ("_package"))
    (:file "MapTarget" :depends-on ("_package_MapTarget"))
    (:file "_package_MapTarget" :depends-on ("_package"))
    (:file "EsrObjMultiArray" :depends-on ("_package_EsrObjMultiArray"))
    (:file "_package_EsrObjMultiArray" :depends-on ("_package"))
    (:file "Complex" :depends-on ("_package_Complex"))
    (:file "_package_Complex" :depends-on ("_package"))
    (:file "LaneData" :depends-on ("_package_LaneData"))
    (:file "_package_LaneData" :depends-on ("_package"))
    (:file "ScanObstacle" :depends-on ("_package_ScanObstacle"))
    (:file "_package_ScanObstacle" :depends-on ("_package"))
    (:file "LocalTarget" :depends-on ("_package_LocalTarget"))
    (:file "_package_LocalTarget" :depends-on ("_package"))
    (:file "Tunnel" :depends-on ("_package_Tunnel"))
    (:file "_package_Tunnel" :depends-on ("_package"))
    (:file "ImuData" :depends-on ("_package_ImuData"))
    (:file "_package_ImuData" :depends-on ("_package"))
    (:file "TrafficLightSend" :depends-on ("_package_TrafficLightSend"))
    (:file "_package_TrafficLightSend" :depends-on ("_package"))
    (:file "Intersection" :depends-on ("_package_Intersection"))
    (:file "_package_Intersection" :depends-on ("_package"))
    (:file "pedestrian" :depends-on ("_package_pedestrian"))
    (:file "_package_pedestrian" :depends-on ("_package"))
    (:file "Uturn" :depends-on ("_package_Uturn"))
    (:file "_package_Uturn" :depends-on ("_package"))
    (:file "Path" :depends-on ("_package_Path"))
    (:file "_package_Path" :depends-on ("_package"))
    (:file "CruiseState" :depends-on ("_package_CruiseState"))
    (:file "_package_CruiseState" :depends-on ("_package"))
    (:file "Cloud_sorted" :depends-on ("_package_Cloud_sorted"))
    (:file "_package_Cloud_sorted" :depends-on ("_package"))
    (:file "StopLine" :depends-on ("_package_StopLine"))
    (:file "_package_StopLine" :depends-on ("_package"))
    (:file "TrafficLight" :depends-on ("_package_TrafficLight"))
    (:file "_package_TrafficLight" :depends-on ("_package"))
    (:file "PixelCurb" :depends-on ("_package_PixelCurb"))
    (:file "_package_PixelCurb" :depends-on ("_package"))
    (:file "Point3f" :depends-on ("_package_Point3f"))
    (:file "_package_Point3f" :depends-on ("_package"))
    (:file "CrossLine" :depends-on ("_package_CrossLine"))
    (:file "_package_CrossLine" :depends-on ("_package"))
    (:file "Line2f" :depends-on ("_package_Line2f"))
    (:file "_package_Line2f" :depends-on ("_package"))
    (:file "Point2f" :depends-on ("_package_Point2f"))
    (:file "_package_Point2f" :depends-on ("_package"))
    (:file "StereoObjMultiArray" :depends-on ("_package_StereoObjMultiArray"))
    (:file "_package_StereoObjMultiArray" :depends-on ("_package"))
    (:file "Signal" :depends-on ("_package_Signal"))
    (:file "_package_Signal" :depends-on ("_package"))
    (:file "Heading" :depends-on ("_package_Heading"))
    (:file "_package_Heading" :depends-on ("_package"))
  ))