# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "tiggo_msgs: 31 messages, 0 services")

set(MSG_I_FLAGS "-Itiggo_msgs:/home/hl/google/src/tiggo_msgs/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/indigo/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(tiggo_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/Point2f.msg" NAME_WE)
add_custom_target(_tiggo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tiggo_msgs" "/home/hl/google/src/tiggo_msgs/msg/Point2f.msg" ""
)

get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/RealCurb.msg" NAME_WE)
add_custom_target(_tiggo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tiggo_msgs" "/home/hl/google/src/tiggo_msgs/msg/RealCurb.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/TrafficLightSend.msg" NAME_WE)
add_custom_target(_tiggo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tiggo_msgs" "/home/hl/google/src/tiggo_msgs/msg/TrafficLightSend.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/TrafficLight.msg" NAME_WE)
add_custom_target(_tiggo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tiggo_msgs" "/home/hl/google/src/tiggo_msgs/msg/TrafficLight.msg" ""
)

get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/CruiseState.msg" NAME_WE)
add_custom_target(_tiggo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tiggo_msgs" "/home/hl/google/src/tiggo_msgs/msg/CruiseState.msg" ""
)

get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/pedestrian.msg" NAME_WE)
add_custom_target(_tiggo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tiggo_msgs" "/home/hl/google/src/tiggo_msgs/msg/pedestrian.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/Complex.msg" NAME_WE)
add_custom_target(_tiggo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tiggo_msgs" "/home/hl/google/src/tiggo_msgs/msg/Complex.msg" ""
)

get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/Signal.msg" NAME_WE)
add_custom_target(_tiggo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tiggo_msgs" "/home/hl/google/src/tiggo_msgs/msg/Signal.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/CanFrame.msg" NAME_WE)
add_custom_target(_tiggo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tiggo_msgs" "/home/hl/google/src/tiggo_msgs/msg/CanFrame.msg" ""
)

get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/LocalTarget.msg" NAME_WE)
add_custom_target(_tiggo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tiggo_msgs" "/home/hl/google/src/tiggo_msgs/msg/LocalTarget.msg" ""
)

get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/EsrObj.msg" NAME_WE)
add_custom_target(_tiggo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tiggo_msgs" "/home/hl/google/src/tiggo_msgs/msg/EsrObj.msg" ""
)

get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/ImuData.msg" NAME_WE)
add_custom_target(_tiggo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tiggo_msgs" "/home/hl/google/src/tiggo_msgs/msg/ImuData.msg" "geometry_msgs/Vector3:std_msgs/Header:tiggo_msgs/Orientation"
)

get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/StopLine.msg" NAME_WE)
add_custom_target(_tiggo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tiggo_msgs" "/home/hl/google/src/tiggo_msgs/msg/StopLine.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/Cloud_sorted.msg" NAME_WE)
add_custom_target(_tiggo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tiggo_msgs" "/home/hl/google/src/tiggo_msgs/msg/Cloud_sorted.msg" "sensor_msgs/PointField:sensor_msgs/PointCloud2:std_msgs/Header"
)

get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/EsrObjMultiArray.msg" NAME_WE)
add_custom_target(_tiggo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tiggo_msgs" "/home/hl/google/src/tiggo_msgs/msg/EsrObjMultiArray.msg" "tiggo_msgs/EsrObj"
)

get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/StereoObjMultiArray.msg" NAME_WE)
add_custom_target(_tiggo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tiggo_msgs" "/home/hl/google/src/tiggo_msgs/msg/StereoObjMultiArray.msg" "tiggo_msgs/Point3f"
)

get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/Luzhui.msg" NAME_WE)
add_custom_target(_tiggo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tiggo_msgs" "/home/hl/google/src/tiggo_msgs/msg/Luzhui.msg" ""
)

get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/Heading.msg" NAME_WE)
add_custom_target(_tiggo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tiggo_msgs" "/home/hl/google/src/tiggo_msgs/msg/Heading.msg" "sensor_msgs/NavSatStatus:std_msgs/Header"
)

get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/Path.msg" NAME_WE)
add_custom_target(_tiggo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tiggo_msgs" "/home/hl/google/src/tiggo_msgs/msg/Path.msg" "tiggo_msgs/Point2f:std_msgs/Header"
)

get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/LaneData.msg" NAME_WE)
add_custom_target(_tiggo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tiggo_msgs" "/home/hl/google/src/tiggo_msgs/msg/LaneData.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/Uturn.msg" NAME_WE)
add_custom_target(_tiggo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tiggo_msgs" "/home/hl/google/src/tiggo_msgs/msg/Uturn.msg" ""
)

get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/CrossLine.msg" NAME_WE)
add_custom_target(_tiggo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tiggo_msgs" "/home/hl/google/src/tiggo_msgs/msg/CrossLine.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/MapTarget.msg" NAME_WE)
add_custom_target(_tiggo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tiggo_msgs" "/home/hl/google/src/tiggo_msgs/msg/MapTarget.msg" ""
)

get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/Line2f.msg" NAME_WE)
add_custom_target(_tiggo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tiggo_msgs" "/home/hl/google/src/tiggo_msgs/msg/Line2f.msg" "tiggo_msgs/Point2f"
)

get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/Intersection.msg" NAME_WE)
add_custom_target(_tiggo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tiggo_msgs" "/home/hl/google/src/tiggo_msgs/msg/Intersection.msg" ""
)

get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/PixelCurb.msg" NAME_WE)
add_custom_target(_tiggo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tiggo_msgs" "/home/hl/google/src/tiggo_msgs/msg/PixelCurb.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/PixelLane.msg" NAME_WE)
add_custom_target(_tiggo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tiggo_msgs" "/home/hl/google/src/tiggo_msgs/msg/PixelLane.msg" "tiggo_msgs/Line2f:std_msgs/Header:tiggo_msgs/Point2f"
)

get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/Point3f.msg" NAME_WE)
add_custom_target(_tiggo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tiggo_msgs" "/home/hl/google/src/tiggo_msgs/msg/Point3f.msg" ""
)

get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/ScanObstacle.msg" NAME_WE)
add_custom_target(_tiggo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tiggo_msgs" "/home/hl/google/src/tiggo_msgs/msg/ScanObstacle.msg" ""
)

get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/Tunnel.msg" NAME_WE)
add_custom_target(_tiggo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tiggo_msgs" "/home/hl/google/src/tiggo_msgs/msg/Tunnel.msg" ""
)

get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/Orientation.msg" NAME_WE)
add_custom_target(_tiggo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tiggo_msgs" "/home/hl/google/src/tiggo_msgs/msg/Orientation.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/Point2f.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_cpp(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/RealCurb.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_cpp(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/TrafficLightSend.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_cpp(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/Tunnel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_cpp(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/TrafficLight.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_cpp(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/pedestrian.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_cpp(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/Complex.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_cpp(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/Signal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_cpp(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/CanFrame.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_cpp(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/Heading.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/sensor_msgs/cmake/../msg/NavSatStatus.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_cpp(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/EsrObj.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_cpp(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/ImuData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/hl/google/src/tiggo_msgs/msg/Orientation.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_cpp(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/LaneData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_cpp(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/Cloud_sorted.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_cpp(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/EsrObjMultiArray.msg"
  "${MSG_I_FLAGS}"
  "/home/hl/google/src/tiggo_msgs/msg/EsrObj.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_cpp(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/StereoObjMultiArray.msg"
  "${MSG_I_FLAGS}"
  "/home/hl/google/src/tiggo_msgs/msg/Point3f.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_cpp(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/Luzhui.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_cpp(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/LocalTarget.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_cpp(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/Path.msg"
  "${MSG_I_FLAGS}"
  "/home/hl/google/src/tiggo_msgs/msg/Point2f.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_cpp(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/StopLine.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_cpp(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/Uturn.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_cpp(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/CrossLine.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_cpp(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/MapTarget.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_cpp(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/Line2f.msg"
  "${MSG_I_FLAGS}"
  "/home/hl/google/src/tiggo_msgs/msg/Point2f.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_cpp(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/Intersection.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_cpp(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/PixelCurb.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_cpp(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/PixelLane.msg"
  "${MSG_I_FLAGS}"
  "/home/hl/google/src/tiggo_msgs/msg/Line2f.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/hl/google/src/tiggo_msgs/msg/Point2f.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_cpp(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/Point3f.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_cpp(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/ScanObstacle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_cpp(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/CruiseState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_cpp(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/Orientation.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tiggo_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(tiggo_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tiggo_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(tiggo_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(tiggo_msgs_generate_messages tiggo_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/Point2f.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_cpp _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/RealCurb.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_cpp _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/TrafficLightSend.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_cpp _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/TrafficLight.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_cpp _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/CruiseState.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_cpp _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/pedestrian.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_cpp _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/Complex.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_cpp _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/Signal.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_cpp _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/CanFrame.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_cpp _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/LocalTarget.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_cpp _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/EsrObj.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_cpp _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/ImuData.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_cpp _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/StopLine.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_cpp _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/Cloud_sorted.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_cpp _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/EsrObjMultiArray.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_cpp _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/StereoObjMultiArray.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_cpp _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/Luzhui.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_cpp _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/Heading.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_cpp _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/Path.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_cpp _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/LaneData.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_cpp _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/Uturn.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_cpp _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/CrossLine.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_cpp _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/MapTarget.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_cpp _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/Line2f.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_cpp _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/Intersection.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_cpp _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/PixelCurb.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_cpp _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/PixelLane.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_cpp _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/Point3f.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_cpp _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/ScanObstacle.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_cpp _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/Tunnel.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_cpp _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/Orientation.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_cpp _tiggo_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tiggo_msgs_gencpp)
add_dependencies(tiggo_msgs_gencpp tiggo_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tiggo_msgs_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/Point2f.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_lisp(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/RealCurb.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_lisp(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/TrafficLightSend.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_lisp(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/Tunnel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_lisp(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/TrafficLight.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_lisp(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/pedestrian.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_lisp(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/Complex.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_lisp(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/Signal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_lisp(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/CanFrame.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_lisp(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/Heading.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/sensor_msgs/cmake/../msg/NavSatStatus.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_lisp(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/EsrObj.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_lisp(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/ImuData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/hl/google/src/tiggo_msgs/msg/Orientation.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_lisp(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/LaneData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_lisp(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/Cloud_sorted.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_lisp(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/EsrObjMultiArray.msg"
  "${MSG_I_FLAGS}"
  "/home/hl/google/src/tiggo_msgs/msg/EsrObj.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_lisp(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/StereoObjMultiArray.msg"
  "${MSG_I_FLAGS}"
  "/home/hl/google/src/tiggo_msgs/msg/Point3f.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_lisp(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/Luzhui.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_lisp(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/LocalTarget.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_lisp(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/Path.msg"
  "${MSG_I_FLAGS}"
  "/home/hl/google/src/tiggo_msgs/msg/Point2f.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_lisp(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/StopLine.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_lisp(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/Uturn.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_lisp(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/CrossLine.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_lisp(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/MapTarget.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_lisp(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/Line2f.msg"
  "${MSG_I_FLAGS}"
  "/home/hl/google/src/tiggo_msgs/msg/Point2f.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_lisp(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/Intersection.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_lisp(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/PixelCurb.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_lisp(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/PixelLane.msg"
  "${MSG_I_FLAGS}"
  "/home/hl/google/src/tiggo_msgs/msg/Line2f.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/hl/google/src/tiggo_msgs/msg/Point2f.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_lisp(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/Point3f.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_lisp(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/ScanObstacle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_lisp(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/CruiseState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_lisp(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/Orientation.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tiggo_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(tiggo_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tiggo_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(tiggo_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(tiggo_msgs_generate_messages tiggo_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/Point2f.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_lisp _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/RealCurb.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_lisp _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/TrafficLightSend.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_lisp _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/TrafficLight.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_lisp _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/CruiseState.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_lisp _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/pedestrian.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_lisp _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/Complex.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_lisp _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/Signal.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_lisp _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/CanFrame.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_lisp _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/LocalTarget.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_lisp _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/EsrObj.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_lisp _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/ImuData.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_lisp _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/StopLine.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_lisp _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/Cloud_sorted.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_lisp _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/EsrObjMultiArray.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_lisp _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/StereoObjMultiArray.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_lisp _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/Luzhui.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_lisp _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/Heading.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_lisp _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/Path.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_lisp _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/LaneData.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_lisp _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/Uturn.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_lisp _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/CrossLine.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_lisp _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/MapTarget.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_lisp _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/Line2f.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_lisp _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/Intersection.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_lisp _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/PixelCurb.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_lisp _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/PixelLane.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_lisp _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/Point3f.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_lisp _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/ScanObstacle.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_lisp _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/Tunnel.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_lisp _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/Orientation.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_lisp _tiggo_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tiggo_msgs_genlisp)
add_dependencies(tiggo_msgs_genlisp tiggo_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tiggo_msgs_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/Point2f.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_py(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/RealCurb.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_py(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/TrafficLightSend.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_py(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/Tunnel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_py(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/TrafficLight.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_py(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/pedestrian.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_py(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/Complex.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_py(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/Signal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_py(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/CanFrame.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_py(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/Heading.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/sensor_msgs/cmake/../msg/NavSatStatus.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_py(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/EsrObj.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_py(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/ImuData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/hl/google/src/tiggo_msgs/msg/Orientation.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_py(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/LaneData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_py(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/Cloud_sorted.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_py(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/EsrObjMultiArray.msg"
  "${MSG_I_FLAGS}"
  "/home/hl/google/src/tiggo_msgs/msg/EsrObj.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_py(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/StereoObjMultiArray.msg"
  "${MSG_I_FLAGS}"
  "/home/hl/google/src/tiggo_msgs/msg/Point3f.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_py(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/Luzhui.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_py(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/LocalTarget.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_py(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/Path.msg"
  "${MSG_I_FLAGS}"
  "/home/hl/google/src/tiggo_msgs/msg/Point2f.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_py(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/StopLine.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_py(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/Uturn.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_py(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/CrossLine.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_py(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/MapTarget.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_py(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/Line2f.msg"
  "${MSG_I_FLAGS}"
  "/home/hl/google/src/tiggo_msgs/msg/Point2f.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_py(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/Intersection.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_py(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/PixelCurb.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_py(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/PixelLane.msg"
  "${MSG_I_FLAGS}"
  "/home/hl/google/src/tiggo_msgs/msg/Line2f.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/hl/google/src/tiggo_msgs/msg/Point2f.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_py(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/Point3f.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_py(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/ScanObstacle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_py(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/CruiseState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tiggo_msgs
)
_generate_msg_py(tiggo_msgs
  "/home/hl/google/src/tiggo_msgs/msg/Orientation.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tiggo_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(tiggo_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tiggo_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(tiggo_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(tiggo_msgs_generate_messages tiggo_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/Point2f.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_py _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/RealCurb.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_py _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/TrafficLightSend.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_py _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/TrafficLight.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_py _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/CruiseState.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_py _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/pedestrian.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_py _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/Complex.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_py _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/Signal.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_py _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/CanFrame.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_py _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/LocalTarget.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_py _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/EsrObj.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_py _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/ImuData.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_py _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/StopLine.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_py _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/Cloud_sorted.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_py _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/EsrObjMultiArray.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_py _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/StereoObjMultiArray.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_py _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/Luzhui.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_py _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/Heading.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_py _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/Path.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_py _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/LaneData.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_py _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/Uturn.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_py _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/CrossLine.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_py _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/MapTarget.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_py _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/Line2f.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_py _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/Intersection.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_py _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/PixelCurb.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_py _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/PixelLane.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_py _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/Point3f.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_py _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/ScanObstacle.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_py _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/Tunnel.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_py _tiggo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/tiggo_msgs/msg/Orientation.msg" NAME_WE)
add_dependencies(tiggo_msgs_generate_messages_py _tiggo_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tiggo_msgs_genpy)
add_dependencies(tiggo_msgs_genpy tiggo_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tiggo_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tiggo_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tiggo_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(tiggo_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
add_dependencies(tiggo_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
add_dependencies(tiggo_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tiggo_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tiggo_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(tiggo_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
add_dependencies(tiggo_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
add_dependencies(tiggo_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tiggo_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tiggo_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tiggo_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(tiggo_msgs_generate_messages_py std_msgs_generate_messages_py)
add_dependencies(tiggo_msgs_generate_messages_py sensor_msgs_generate_messages_py)
add_dependencies(tiggo_msgs_generate_messages_py geometry_msgs_generate_messages_py)
