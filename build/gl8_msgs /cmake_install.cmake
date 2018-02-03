# Install script for directory: /home/hl/google/src/gl8_msgs 

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gl8_msgs/msg" TYPE FILE FILES
    "/home/hl/google/src/gl8_msgs /msg/CanFrame.msg"
    "/home/hl/google/src/gl8_msgs /msg/VehicleSteerFeedBack.msg"
    "/home/hl/google/src/gl8_msgs /msg/VehicleSpeedFeedBack.msg"
    "/home/hl/google/src/gl8_msgs /msg/VehicleIMU.msg"
    "/home/hl/google/src/gl8_msgs /msg/VehicleControlCmd.msg"
    "/home/hl/google/src/gl8_msgs /msg/Heading.msg"
    "/home/hl/google/src/gl8_msgs /msg/Point2D.msg"
    "/home/hl/google/src/gl8_msgs /msg/RoadSegment.msg"
    "/home/hl/google/src/gl8_msgs /msg/Vector2.msg"
    "/home/hl/google/src/gl8_msgs /msg/MapNearby.msg"
    "/home/hl/google/src/gl8_msgs /msg/GlobalPath.msg"
    "/home/hl/google/src/gl8_msgs /msg/PathPoint.msg"
    "/home/hl/google/src/gl8_msgs /msg/GPGGA_MSG.msg"
    "/home/hl/google/src/gl8_msgs /msg/GPTRA_MSG.msg"
    "/home/hl/google/src/gl8_msgs /msg/MappingFlag.msg"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gl8_msgs/cmake" TYPE FILE FILES "/home/hl/google/build/gl8_msgs /catkin_generated/installspace/gl8_msgs-msg-paths.cmake")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/hl/google/devel/include/gl8_msgs")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/hl/google/devel/share/common-lisp/ros/gl8_msgs")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/hl/google/devel/lib/python2.7/dist-packages/gl8_msgs")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/hl/google/devel/lib/python2.7/dist-packages/gl8_msgs")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/hl/google/build/gl8_msgs /catkin_generated/installspace/gl8_msgs.pc")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gl8_msgs/cmake" TYPE FILE FILES "/home/hl/google/build/gl8_msgs /catkin_generated/installspace/gl8_msgs-msg-extras.cmake")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gl8_msgs/cmake" TYPE FILE FILES
    "/home/hl/google/build/gl8_msgs /catkin_generated/installspace/gl8_msgsConfig.cmake"
    "/home/hl/google/build/gl8_msgs /catkin_generated/installspace/gl8_msgsConfig-version.cmake"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gl8_msgs" TYPE FILE FILES "/home/hl/google/src/gl8_msgs /package.xml")
endif()

