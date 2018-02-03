# Install script for directory: /home/hl/google/src/tiggo_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tiggo_msgs/msg" TYPE FILE FILES
    "/home/hl/google/src/tiggo_msgs/msg/Orientation.msg"
    "/home/hl/google/src/tiggo_msgs/msg/ImuData.msg"
    "/home/hl/google/src/tiggo_msgs/msg/MapTarget.msg"
    "/home/hl/google/src/tiggo_msgs/msg/LocalTarget.msg"
    "/home/hl/google/src/tiggo_msgs/msg/RealCurb.msg"
    "/home/hl/google/src/tiggo_msgs/msg/PixelCurb.msg"
    "/home/hl/google/src/tiggo_msgs/msg/Point2f.msg"
    "/home/hl/google/src/tiggo_msgs/msg/Point3f.msg"
    "/home/hl/google/src/tiggo_msgs/msg/Path.msg"
    "/home/hl/google/src/tiggo_msgs/msg/CanFrame.msg"
    "/home/hl/google/src/tiggo_msgs/msg/Line2f.msg"
    "/home/hl/google/src/tiggo_msgs/msg/PixelLane.msg"
    "/home/hl/google/src/tiggo_msgs/msg/CrossLine.msg"
    "/home/hl/google/src/tiggo_msgs/msg/EsrObj.msg"
    "/home/hl/google/src/tiggo_msgs/msg/EsrObjMultiArray.msg"
    "/home/hl/google/src/tiggo_msgs/msg/TrafficLight.msg"
    "/home/hl/google/src/tiggo_msgs/msg/pedestrian.msg"
    "/home/hl/google/src/tiggo_msgs/msg/StereoObjMultiArray.msg"
    "/home/hl/google/src/tiggo_msgs/msg/Intersection.msg"
    "/home/hl/google/src/tiggo_msgs/msg/Uturn.msg"
    "/home/hl/google/src/tiggo_msgs/msg/CruiseState.msg"
    "/home/hl/google/src/tiggo_msgs/msg/Complex.msg"
    "/home/hl/google/src/tiggo_msgs/msg/Luzhui.msg"
    "/home/hl/google/src/tiggo_msgs/msg/LaneData.msg"
    "/home/hl/google/src/tiggo_msgs/msg/Heading.msg"
    "/home/hl/google/src/tiggo_msgs/msg/Cloud_sorted.msg"
    "/home/hl/google/src/tiggo_msgs/msg/TrafficLightSend.msg"
    "/home/hl/google/src/tiggo_msgs/msg/StopLine.msg"
    "/home/hl/google/src/tiggo_msgs/msg/ScanObstacle.msg"
    "/home/hl/google/src/tiggo_msgs/msg/Signal.msg"
    "/home/hl/google/src/tiggo_msgs/msg/Tunnel.msg"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tiggo_msgs/cmake" TYPE FILE FILES "/home/hl/google/src/cmake-build-debug/tiggo_msgs/catkin_generated/installspace/tiggo_msgs-msg-paths.cmake")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/hl/google/src/cmake-build-debug/devel/include/tiggo_msgs")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/hl/google/src/cmake-build-debug/devel/share/common-lisp/ros/tiggo_msgs")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/hl/google/src/cmake-build-debug/devel/lib/python2.7/dist-packages/tiggo_msgs")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/hl/google/src/cmake-build-debug/devel/lib/python2.7/dist-packages/tiggo_msgs")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/hl/google/src/cmake-build-debug/tiggo_msgs/catkin_generated/installspace/tiggo_msgs.pc")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tiggo_msgs/cmake" TYPE FILE FILES "/home/hl/google/src/cmake-build-debug/tiggo_msgs/catkin_generated/installspace/tiggo_msgs-msg-extras.cmake")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tiggo_msgs/cmake" TYPE FILE FILES
    "/home/hl/google/src/cmake-build-debug/tiggo_msgs/catkin_generated/installspace/tiggo_msgsConfig.cmake"
    "/home/hl/google/src/cmake-build-debug/tiggo_msgs/catkin_generated/installspace/tiggo_msgsConfig-version.cmake"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tiggo_msgs" TYPE FILE FILES "/home/hl/google/src/tiggo_msgs/package.xml")
endif()

