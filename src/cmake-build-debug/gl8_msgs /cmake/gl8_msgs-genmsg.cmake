# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "gl8_msgs: 15 messages, 0 services")

set(MSG_I_FLAGS "-Igl8_msgs:/home/hl/google/src/gl8_msgs /msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/indigo/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(gl8_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/hl/google/src/gl8_msgs /msg/GPTRA_MSG.msg" NAME_WE)
add_custom_target(_gl8_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gl8_msgs" "/home/hl/google/src/gl8_msgs /msg/GPTRA_MSG.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/hl/google/src/gl8_msgs /msg/VehicleSteerFeedBack.msg" NAME_WE)
add_custom_target(_gl8_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gl8_msgs" "/home/hl/google/src/gl8_msgs /msg/VehicleSteerFeedBack.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/hl/google/src/gl8_msgs /msg/MapNearby.msg" NAME_WE)
add_custom_target(_gl8_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gl8_msgs" "/home/hl/google/src/gl8_msgs /msg/MapNearby.msg" "gl8_msgs/Point2D:std_msgs/MultiArrayDimension:gl8_msgs/Vector2:std_msgs/Header:gl8_msgs/RoadSegment:std_msgs/MultiArrayLayout"
)

get_filename_component(_filename "/home/hl/google/src/gl8_msgs /msg/Heading.msg" NAME_WE)
add_custom_target(_gl8_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gl8_msgs" "/home/hl/google/src/gl8_msgs /msg/Heading.msg" "sensor_msgs/NavSatStatus:std_msgs/Header"
)

get_filename_component(_filename "/home/hl/google/src/gl8_msgs /msg/Vector2.msg" NAME_WE)
add_custom_target(_gl8_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gl8_msgs" "/home/hl/google/src/gl8_msgs /msg/Vector2.msg" ""
)

get_filename_component(_filename "/home/hl/google/src/gl8_msgs /msg/CanFrame.msg" NAME_WE)
add_custom_target(_gl8_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gl8_msgs" "/home/hl/google/src/gl8_msgs /msg/CanFrame.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/hl/google/src/gl8_msgs /msg/Point2D.msg" NAME_WE)
add_custom_target(_gl8_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gl8_msgs" "/home/hl/google/src/gl8_msgs /msg/Point2D.msg" ""
)

get_filename_component(_filename "/home/hl/google/src/gl8_msgs /msg/VehicleIMU.msg" NAME_WE)
add_custom_target(_gl8_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gl8_msgs" "/home/hl/google/src/gl8_msgs /msg/VehicleIMU.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/hl/google/src/gl8_msgs /msg/PathPoint.msg" NAME_WE)
add_custom_target(_gl8_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gl8_msgs" "/home/hl/google/src/gl8_msgs /msg/PathPoint.msg" ""
)

get_filename_component(_filename "/home/hl/google/src/gl8_msgs /msg/MappingFlag.msg" NAME_WE)
add_custom_target(_gl8_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gl8_msgs" "/home/hl/google/src/gl8_msgs /msg/MappingFlag.msg" ""
)

get_filename_component(_filename "/home/hl/google/src/gl8_msgs /msg/GlobalPath.msg" NAME_WE)
add_custom_target(_gl8_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gl8_msgs" "/home/hl/google/src/gl8_msgs /msg/GlobalPath.msg" "gl8_msgs/PathPoint:std_msgs/Header"
)

get_filename_component(_filename "/home/hl/google/src/gl8_msgs /msg/VehicleControlCmd.msg" NAME_WE)
add_custom_target(_gl8_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gl8_msgs" "/home/hl/google/src/gl8_msgs /msg/VehicleControlCmd.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/hl/google/src/gl8_msgs /msg/VehicleSpeedFeedBack.msg" NAME_WE)
add_custom_target(_gl8_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gl8_msgs" "/home/hl/google/src/gl8_msgs /msg/VehicleSpeedFeedBack.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/hl/google/src/gl8_msgs /msg/GPGGA_MSG.msg" NAME_WE)
add_custom_target(_gl8_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gl8_msgs" "/home/hl/google/src/gl8_msgs /msg/GPGGA_MSG.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/hl/google/src/gl8_msgs /msg/RoadSegment.msg" NAME_WE)
add_custom_target(_gl8_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gl8_msgs" "/home/hl/google/src/gl8_msgs /msg/RoadSegment.msg" "gl8_msgs/Point2D:gl8_msgs/Vector2"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(gl8_msgs
  "/home/hl/google/src/gl8_msgs /msg/GPTRA_MSG.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gl8_msgs
)
_generate_msg_cpp(gl8_msgs
  "/home/hl/google/src/gl8_msgs /msg/VehicleSteerFeedBack.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gl8_msgs
)
_generate_msg_cpp(gl8_msgs
  "/home/hl/google/src/gl8_msgs /msg/MapNearby.msg"
  "${MSG_I_FLAGS}"
  "/home/hl/google/src/gl8_msgs /msg/Point2D.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/home/hl/google/src/gl8_msgs /msg/Vector2.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/hl/google/src/gl8_msgs /msg/RoadSegment.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gl8_msgs
)
_generate_msg_cpp(gl8_msgs
  "/home/hl/google/src/gl8_msgs /msg/Heading.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/sensor_msgs/cmake/../msg/NavSatStatus.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gl8_msgs
)
_generate_msg_cpp(gl8_msgs
  "/home/hl/google/src/gl8_msgs /msg/Vector2.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gl8_msgs
)
_generate_msg_cpp(gl8_msgs
  "/home/hl/google/src/gl8_msgs /msg/GlobalPath.msg"
  "${MSG_I_FLAGS}"
  "/home/hl/google/src/gl8_msgs /msg/PathPoint.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gl8_msgs
)
_generate_msg_cpp(gl8_msgs
  "/home/hl/google/src/gl8_msgs /msg/CanFrame.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gl8_msgs
)
_generate_msg_cpp(gl8_msgs
  "/home/hl/google/src/gl8_msgs /msg/Point2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gl8_msgs
)
_generate_msg_cpp(gl8_msgs
  "/home/hl/google/src/gl8_msgs /msg/VehicleIMU.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gl8_msgs
)
_generate_msg_cpp(gl8_msgs
  "/home/hl/google/src/gl8_msgs /msg/PathPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gl8_msgs
)
_generate_msg_cpp(gl8_msgs
  "/home/hl/google/src/gl8_msgs /msg/MappingFlag.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gl8_msgs
)
_generate_msg_cpp(gl8_msgs
  "/home/hl/google/src/gl8_msgs /msg/RoadSegment.msg"
  "${MSG_I_FLAGS}"
  "/home/hl/google/src/gl8_msgs /msg/Point2D.msg;/home/hl/google/src/gl8_msgs /msg/Vector2.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gl8_msgs
)
_generate_msg_cpp(gl8_msgs
  "/home/hl/google/src/gl8_msgs /msg/VehicleSpeedFeedBack.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gl8_msgs
)
_generate_msg_cpp(gl8_msgs
  "/home/hl/google/src/gl8_msgs /msg/GPGGA_MSG.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gl8_msgs
)
_generate_msg_cpp(gl8_msgs
  "/home/hl/google/src/gl8_msgs /msg/VehicleControlCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gl8_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(gl8_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gl8_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(gl8_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(gl8_msgs_generate_messages gl8_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hl/google/src/gl8_msgs /msg/GPTRA_MSG.msg" NAME_WE)
add_dependencies(gl8_msgs_generate_messages_cpp _gl8_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/gl8_msgs /msg/VehicleSteerFeedBack.msg" NAME_WE)
add_dependencies(gl8_msgs_generate_messages_cpp _gl8_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/gl8_msgs /msg/MapNearby.msg" NAME_WE)
add_dependencies(gl8_msgs_generate_messages_cpp _gl8_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/gl8_msgs /msg/Heading.msg" NAME_WE)
add_dependencies(gl8_msgs_generate_messages_cpp _gl8_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/gl8_msgs /msg/Vector2.msg" NAME_WE)
add_dependencies(gl8_msgs_generate_messages_cpp _gl8_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/gl8_msgs /msg/CanFrame.msg" NAME_WE)
add_dependencies(gl8_msgs_generate_messages_cpp _gl8_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/gl8_msgs /msg/Point2D.msg" NAME_WE)
add_dependencies(gl8_msgs_generate_messages_cpp _gl8_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/gl8_msgs /msg/VehicleIMU.msg" NAME_WE)
add_dependencies(gl8_msgs_generate_messages_cpp _gl8_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/gl8_msgs /msg/PathPoint.msg" NAME_WE)
add_dependencies(gl8_msgs_generate_messages_cpp _gl8_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/gl8_msgs /msg/MappingFlag.msg" NAME_WE)
add_dependencies(gl8_msgs_generate_messages_cpp _gl8_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/gl8_msgs /msg/GlobalPath.msg" NAME_WE)
add_dependencies(gl8_msgs_generate_messages_cpp _gl8_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/gl8_msgs /msg/VehicleControlCmd.msg" NAME_WE)
add_dependencies(gl8_msgs_generate_messages_cpp _gl8_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/gl8_msgs /msg/VehicleSpeedFeedBack.msg" NAME_WE)
add_dependencies(gl8_msgs_generate_messages_cpp _gl8_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/gl8_msgs /msg/GPGGA_MSG.msg" NAME_WE)
add_dependencies(gl8_msgs_generate_messages_cpp _gl8_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/gl8_msgs /msg/RoadSegment.msg" NAME_WE)
add_dependencies(gl8_msgs_generate_messages_cpp _gl8_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gl8_msgs_gencpp)
add_dependencies(gl8_msgs_gencpp gl8_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gl8_msgs_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(gl8_msgs
  "/home/hl/google/src/gl8_msgs /msg/GPTRA_MSG.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gl8_msgs
)
_generate_msg_lisp(gl8_msgs
  "/home/hl/google/src/gl8_msgs /msg/VehicleSteerFeedBack.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gl8_msgs
)
_generate_msg_lisp(gl8_msgs
  "/home/hl/google/src/gl8_msgs /msg/MapNearby.msg"
  "${MSG_I_FLAGS}"
  "/home/hl/google/src/gl8_msgs /msg/Point2D.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/home/hl/google/src/gl8_msgs /msg/Vector2.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/hl/google/src/gl8_msgs /msg/RoadSegment.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gl8_msgs
)
_generate_msg_lisp(gl8_msgs
  "/home/hl/google/src/gl8_msgs /msg/Heading.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/sensor_msgs/cmake/../msg/NavSatStatus.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gl8_msgs
)
_generate_msg_lisp(gl8_msgs
  "/home/hl/google/src/gl8_msgs /msg/Vector2.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gl8_msgs
)
_generate_msg_lisp(gl8_msgs
  "/home/hl/google/src/gl8_msgs /msg/GlobalPath.msg"
  "${MSG_I_FLAGS}"
  "/home/hl/google/src/gl8_msgs /msg/PathPoint.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gl8_msgs
)
_generate_msg_lisp(gl8_msgs
  "/home/hl/google/src/gl8_msgs /msg/CanFrame.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gl8_msgs
)
_generate_msg_lisp(gl8_msgs
  "/home/hl/google/src/gl8_msgs /msg/Point2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gl8_msgs
)
_generate_msg_lisp(gl8_msgs
  "/home/hl/google/src/gl8_msgs /msg/VehicleIMU.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gl8_msgs
)
_generate_msg_lisp(gl8_msgs
  "/home/hl/google/src/gl8_msgs /msg/PathPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gl8_msgs
)
_generate_msg_lisp(gl8_msgs
  "/home/hl/google/src/gl8_msgs /msg/MappingFlag.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gl8_msgs
)
_generate_msg_lisp(gl8_msgs
  "/home/hl/google/src/gl8_msgs /msg/RoadSegment.msg"
  "${MSG_I_FLAGS}"
  "/home/hl/google/src/gl8_msgs /msg/Point2D.msg;/home/hl/google/src/gl8_msgs /msg/Vector2.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gl8_msgs
)
_generate_msg_lisp(gl8_msgs
  "/home/hl/google/src/gl8_msgs /msg/VehicleSpeedFeedBack.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gl8_msgs
)
_generate_msg_lisp(gl8_msgs
  "/home/hl/google/src/gl8_msgs /msg/GPGGA_MSG.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gl8_msgs
)
_generate_msg_lisp(gl8_msgs
  "/home/hl/google/src/gl8_msgs /msg/VehicleControlCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gl8_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(gl8_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gl8_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(gl8_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(gl8_msgs_generate_messages gl8_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hl/google/src/gl8_msgs /msg/GPTRA_MSG.msg" NAME_WE)
add_dependencies(gl8_msgs_generate_messages_lisp _gl8_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/gl8_msgs /msg/VehicleSteerFeedBack.msg" NAME_WE)
add_dependencies(gl8_msgs_generate_messages_lisp _gl8_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/gl8_msgs /msg/MapNearby.msg" NAME_WE)
add_dependencies(gl8_msgs_generate_messages_lisp _gl8_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/gl8_msgs /msg/Heading.msg" NAME_WE)
add_dependencies(gl8_msgs_generate_messages_lisp _gl8_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/gl8_msgs /msg/Vector2.msg" NAME_WE)
add_dependencies(gl8_msgs_generate_messages_lisp _gl8_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/gl8_msgs /msg/CanFrame.msg" NAME_WE)
add_dependencies(gl8_msgs_generate_messages_lisp _gl8_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/gl8_msgs /msg/Point2D.msg" NAME_WE)
add_dependencies(gl8_msgs_generate_messages_lisp _gl8_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/gl8_msgs /msg/VehicleIMU.msg" NAME_WE)
add_dependencies(gl8_msgs_generate_messages_lisp _gl8_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/gl8_msgs /msg/PathPoint.msg" NAME_WE)
add_dependencies(gl8_msgs_generate_messages_lisp _gl8_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/gl8_msgs /msg/MappingFlag.msg" NAME_WE)
add_dependencies(gl8_msgs_generate_messages_lisp _gl8_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/gl8_msgs /msg/GlobalPath.msg" NAME_WE)
add_dependencies(gl8_msgs_generate_messages_lisp _gl8_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/gl8_msgs /msg/VehicleControlCmd.msg" NAME_WE)
add_dependencies(gl8_msgs_generate_messages_lisp _gl8_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/gl8_msgs /msg/VehicleSpeedFeedBack.msg" NAME_WE)
add_dependencies(gl8_msgs_generate_messages_lisp _gl8_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/gl8_msgs /msg/GPGGA_MSG.msg" NAME_WE)
add_dependencies(gl8_msgs_generate_messages_lisp _gl8_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/gl8_msgs /msg/RoadSegment.msg" NAME_WE)
add_dependencies(gl8_msgs_generate_messages_lisp _gl8_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gl8_msgs_genlisp)
add_dependencies(gl8_msgs_genlisp gl8_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gl8_msgs_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(gl8_msgs
  "/home/hl/google/src/gl8_msgs /msg/GPTRA_MSG.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gl8_msgs
)
_generate_msg_py(gl8_msgs
  "/home/hl/google/src/gl8_msgs /msg/VehicleSteerFeedBack.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gl8_msgs
)
_generate_msg_py(gl8_msgs
  "/home/hl/google/src/gl8_msgs /msg/MapNearby.msg"
  "${MSG_I_FLAGS}"
  "/home/hl/google/src/gl8_msgs /msg/Point2D.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/home/hl/google/src/gl8_msgs /msg/Vector2.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/hl/google/src/gl8_msgs /msg/RoadSegment.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gl8_msgs
)
_generate_msg_py(gl8_msgs
  "/home/hl/google/src/gl8_msgs /msg/Heading.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/sensor_msgs/cmake/../msg/NavSatStatus.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gl8_msgs
)
_generate_msg_py(gl8_msgs
  "/home/hl/google/src/gl8_msgs /msg/Vector2.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gl8_msgs
)
_generate_msg_py(gl8_msgs
  "/home/hl/google/src/gl8_msgs /msg/GlobalPath.msg"
  "${MSG_I_FLAGS}"
  "/home/hl/google/src/gl8_msgs /msg/PathPoint.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gl8_msgs
)
_generate_msg_py(gl8_msgs
  "/home/hl/google/src/gl8_msgs /msg/CanFrame.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gl8_msgs
)
_generate_msg_py(gl8_msgs
  "/home/hl/google/src/gl8_msgs /msg/Point2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gl8_msgs
)
_generate_msg_py(gl8_msgs
  "/home/hl/google/src/gl8_msgs /msg/VehicleIMU.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gl8_msgs
)
_generate_msg_py(gl8_msgs
  "/home/hl/google/src/gl8_msgs /msg/PathPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gl8_msgs
)
_generate_msg_py(gl8_msgs
  "/home/hl/google/src/gl8_msgs /msg/MappingFlag.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gl8_msgs
)
_generate_msg_py(gl8_msgs
  "/home/hl/google/src/gl8_msgs /msg/RoadSegment.msg"
  "${MSG_I_FLAGS}"
  "/home/hl/google/src/gl8_msgs /msg/Point2D.msg;/home/hl/google/src/gl8_msgs /msg/Vector2.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gl8_msgs
)
_generate_msg_py(gl8_msgs
  "/home/hl/google/src/gl8_msgs /msg/VehicleSpeedFeedBack.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gl8_msgs
)
_generate_msg_py(gl8_msgs
  "/home/hl/google/src/gl8_msgs /msg/GPGGA_MSG.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gl8_msgs
)
_generate_msg_py(gl8_msgs
  "/home/hl/google/src/gl8_msgs /msg/VehicleControlCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gl8_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(gl8_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gl8_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(gl8_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(gl8_msgs_generate_messages gl8_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hl/google/src/gl8_msgs /msg/GPTRA_MSG.msg" NAME_WE)
add_dependencies(gl8_msgs_generate_messages_py _gl8_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/gl8_msgs /msg/VehicleSteerFeedBack.msg" NAME_WE)
add_dependencies(gl8_msgs_generate_messages_py _gl8_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/gl8_msgs /msg/MapNearby.msg" NAME_WE)
add_dependencies(gl8_msgs_generate_messages_py _gl8_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/gl8_msgs /msg/Heading.msg" NAME_WE)
add_dependencies(gl8_msgs_generate_messages_py _gl8_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/gl8_msgs /msg/Vector2.msg" NAME_WE)
add_dependencies(gl8_msgs_generate_messages_py _gl8_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/gl8_msgs /msg/CanFrame.msg" NAME_WE)
add_dependencies(gl8_msgs_generate_messages_py _gl8_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/gl8_msgs /msg/Point2D.msg" NAME_WE)
add_dependencies(gl8_msgs_generate_messages_py _gl8_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/gl8_msgs /msg/VehicleIMU.msg" NAME_WE)
add_dependencies(gl8_msgs_generate_messages_py _gl8_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/gl8_msgs /msg/PathPoint.msg" NAME_WE)
add_dependencies(gl8_msgs_generate_messages_py _gl8_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/gl8_msgs /msg/MappingFlag.msg" NAME_WE)
add_dependencies(gl8_msgs_generate_messages_py _gl8_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/gl8_msgs /msg/GlobalPath.msg" NAME_WE)
add_dependencies(gl8_msgs_generate_messages_py _gl8_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/gl8_msgs /msg/VehicleControlCmd.msg" NAME_WE)
add_dependencies(gl8_msgs_generate_messages_py _gl8_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/gl8_msgs /msg/VehicleSpeedFeedBack.msg" NAME_WE)
add_dependencies(gl8_msgs_generate_messages_py _gl8_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/gl8_msgs /msg/GPGGA_MSG.msg" NAME_WE)
add_dependencies(gl8_msgs_generate_messages_py _gl8_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/gl8_msgs /msg/RoadSegment.msg" NAME_WE)
add_dependencies(gl8_msgs_generate_messages_py _gl8_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gl8_msgs_genpy)
add_dependencies(gl8_msgs_genpy gl8_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gl8_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gl8_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gl8_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(gl8_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
add_dependencies(gl8_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
add_dependencies(gl8_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gl8_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gl8_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(gl8_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
add_dependencies(gl8_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
add_dependencies(gl8_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gl8_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gl8_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gl8_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(gl8_msgs_generate_messages_py std_msgs_generate_messages_py)
add_dependencies(gl8_msgs_generate_messages_py sensor_msgs_generate_messages_py)
add_dependencies(gl8_msgs_generate_messages_py geometry_msgs_generate_messages_py)
