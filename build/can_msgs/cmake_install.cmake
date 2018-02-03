# Install script for directory: /home/hl/google/src/can_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/hl/google/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/can_msgs/msg" TYPE FILE FILES
    "/home/hl/google/src/can_msgs/msg/basic_msg_type/BoolOne.msg"
    "/home/hl/google/src/can_msgs/msg/basic_msg_type/BoolPair.msg"
    "/home/hl/google/src/can_msgs/msg/basic_msg_type/BoolTripple.msg"
    "/home/hl/google/src/can_msgs/msg/basic_msg_type/BoolVector.msg"
    "/home/hl/google/src/can_msgs/msg/basic_msg_type/Int32One.msg"
    "/home/hl/google/src/can_msgs/msg/basic_msg_type/Int32Pair.msg"
    "/home/hl/google/src/can_msgs/msg/basic_msg_type/Int32Tripple.msg"
    "/home/hl/google/src/can_msgs/msg/basic_msg_type/Int32Vector.msg"
    "/home/hl/google/src/can_msgs/msg/basic_msg_type/Float32One.msg"
    "/home/hl/google/src/can_msgs/msg/basic_msg_type/Float32Pair.msg"
    "/home/hl/google/src/can_msgs/msg/basic_msg_type/Float32Tripple.msg"
    "/home/hl/google/src/can_msgs/msg/basic_msg_type/Float32Vector.msg"
    "/home/hl/google/src/can_msgs/msg/basic_msg_type/Float64One.msg"
    "/home/hl/google/src/can_msgs/msg/basic_msg_type/Float64Pair.msg"
    "/home/hl/google/src/can_msgs/msg/basic_msg_type/Float64Tripple.msg"
    "/home/hl/google/src/can_msgs/msg/basic_msg_type/Float64Vector.msg"
    "/home/hl/google/src/can_msgs/msg/zhu_can_code/Frame.msg"
    "/home/hl/google/src/can_msgs/msg/zhu_can_code/InputBitsFromHensmor.msg"
    "/home/hl/google/src/can_msgs/msg/zhu_can_code/CanNodeStatus.msg"
    "/home/hl/google/src/can_msgs/msg/zhu_can_code/MagRuler32Data.msg"
    "/home/hl/google/src/can_msgs/msg/control_interface/ControllerInstruction.msg"
    "/home/hl/google/src/can_msgs/msg/control_interface/ObstacleStop.msg"
    "/home/hl/google/src/can_msgs/msg/control_interface/StationStopCmd.msg"
    "/home/hl/google/src/can_msgs/msg/control_interface/VehicleButtonState.msg"
    "/home/hl/google/src/can_msgs/msg/mag_data_process/MagFitInfoArray.msg"
    "/home/hl/google/src/can_msgs/msg/mag_data_process/MagCntFeedback.msg"
    "/home/hl/google/src/can_msgs/msg/mag_data_process/MagDataAndFitResult.msg"
    "/home/hl/google/src/can_msgs/msg/mag_data_process/CntAndLink.msg"
    "/home/hl/google/src/can_msgs/msg/mag_data_process/GPS_xyAndQuality.msg"
    "/home/hl/google/src/can_msgs/msg/mag_data_process/MagUpdateFeedback.msg"
    "/home/hl/google/src/can_msgs/msg/mag_data_process/VehiclePosWithIndex.msg"
    "/home/hl/google/src/can_msgs/msg/mag_data_process/MagGPSInfo4Fusion.msg"
    "/home/hl/google/src/can_msgs/msg/SteerAndSpeedCmd.msg"
    "/home/hl/google/src/can_msgs/msg/CarSwitchControl.msg"
    "/home/hl/google/src/can_msgs/msg/SpeedMilSteer.msg"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/can_msgs/cmake" TYPE FILE FILES "/home/hl/google/build/can_msgs/catkin_generated/installspace/can_msgs-msg-paths.cmake")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/hl/google/devel/include/can_msgs")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/hl/google/devel/share/common-lisp/ros/can_msgs")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/hl/google/devel/lib/python2.7/dist-packages/can_msgs")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/hl/google/devel/lib/python2.7/dist-packages/can_msgs")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/hl/google/build/can_msgs/catkin_generated/installspace/can_msgs.pc")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/can_msgs/cmake" TYPE FILE FILES "/home/hl/google/build/can_msgs/catkin_generated/installspace/can_msgs-msg-extras.cmake")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/can_msgs/cmake" TYPE FILE FILES
    "/home/hl/google/build/can_msgs/catkin_generated/installspace/can_msgsConfig.cmake"
    "/home/hl/google/build/can_msgs/catkin_generated/installspace/can_msgsConfig-version.cmake"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/can_msgs" TYPE FILE FILES "/home/hl/google/src/can_msgs/package.xml")
endif()

