# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "can_msgs: 35 messages, 0 services")

set(MSG_I_FLAGS "-Ican_msgs:/home/hl/google/src/can_msgs/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(can_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/basic_msg_type/BoolPair.msg" NAME_WE)
add_custom_target(_can_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "can_msgs" "/home/hl/google/src/can_msgs/msg/basic_msg_type/BoolPair.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/basic_msg_type/Float32Vector.msg" NAME_WE)
add_custom_target(_can_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "can_msgs" "/home/hl/google/src/can_msgs/msg/basic_msg_type/Float32Vector.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/zhu_can_code/MagRuler32Data.msg" NAME_WE)
add_custom_target(_can_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "can_msgs" "/home/hl/google/src/can_msgs/msg/zhu_can_code/MagRuler32Data.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/basic_msg_type/Int32Tripple.msg" NAME_WE)
add_custom_target(_can_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "can_msgs" "/home/hl/google/src/can_msgs/msg/basic_msg_type/Int32Tripple.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/basic_msg_type/BoolTripple.msg" NAME_WE)
add_custom_target(_can_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "can_msgs" "/home/hl/google/src/can_msgs/msg/basic_msg_type/BoolTripple.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/basic_msg_type/Float64Tripple.msg" NAME_WE)
add_custom_target(_can_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "can_msgs" "/home/hl/google/src/can_msgs/msg/basic_msg_type/Float64Tripple.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/basic_msg_type/Float32Pair.msg" NAME_WE)
add_custom_target(_can_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "can_msgs" "/home/hl/google/src/can_msgs/msg/basic_msg_type/Float32Pair.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/control_interface/StationStopCmd.msg" NAME_WE)
add_custom_target(_can_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "can_msgs" "/home/hl/google/src/can_msgs/msg/control_interface/StationStopCmd.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/basic_msg_type/Float32Tripple.msg" NAME_WE)
add_custom_target(_can_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "can_msgs" "/home/hl/google/src/can_msgs/msg/basic_msg_type/Float32Tripple.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/mag_data_process/CntAndLink.msg" NAME_WE)
add_custom_target(_can_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "can_msgs" "/home/hl/google/src/can_msgs/msg/mag_data_process/CntAndLink.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/control_interface/VehicleButtonState.msg" NAME_WE)
add_custom_target(_can_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "can_msgs" "/home/hl/google/src/can_msgs/msg/control_interface/VehicleButtonState.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/zhu_can_code/CanNodeStatus.msg" NAME_WE)
add_custom_target(_can_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "can_msgs" "/home/hl/google/src/can_msgs/msg/zhu_can_code/CanNodeStatus.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/basic_msg_type/BoolOne.msg" NAME_WE)
add_custom_target(_can_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "can_msgs" "/home/hl/google/src/can_msgs/msg/basic_msg_type/BoolOne.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/mag_data_process/MagCntFeedback.msg" NAME_WE)
add_custom_target(_can_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "can_msgs" "/home/hl/google/src/can_msgs/msg/mag_data_process/MagCntFeedback.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/control_interface/ControllerInstruction.msg" NAME_WE)
add_custom_target(_can_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "can_msgs" "/home/hl/google/src/can_msgs/msg/control_interface/ControllerInstruction.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/SteerAndSpeedCmd.msg" NAME_WE)
add_custom_target(_can_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "can_msgs" "/home/hl/google/src/can_msgs/msg/SteerAndSpeedCmd.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/zhu_can_code/Frame.msg" NAME_WE)
add_custom_target(_can_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "can_msgs" "/home/hl/google/src/can_msgs/msg/zhu_can_code/Frame.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/mag_data_process/GPS_xyAndQuality.msg" NAME_WE)
add_custom_target(_can_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "can_msgs" "/home/hl/google/src/can_msgs/msg/mag_data_process/GPS_xyAndQuality.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/basic_msg_type/Int32One.msg" NAME_WE)
add_custom_target(_can_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "can_msgs" "/home/hl/google/src/can_msgs/msg/basic_msg_type/Int32One.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/zhu_can_code/InputBitsFromHensmor.msg" NAME_WE)
add_custom_target(_can_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "can_msgs" "/home/hl/google/src/can_msgs/msg/zhu_can_code/InputBitsFromHensmor.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/mag_data_process/VehiclePosWithIndex.msg" NAME_WE)
add_custom_target(_can_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "can_msgs" "/home/hl/google/src/can_msgs/msg/mag_data_process/VehiclePosWithIndex.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/basic_msg_type/Float64Pair.msg" NAME_WE)
add_custom_target(_can_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "can_msgs" "/home/hl/google/src/can_msgs/msg/basic_msg_type/Float64Pair.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/mag_data_process/MagFitInfoArray.msg" NAME_WE)
add_custom_target(_can_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "can_msgs" "/home/hl/google/src/can_msgs/msg/mag_data_process/MagFitInfoArray.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/basic_msg_type/Float64One.msg" NAME_WE)
add_custom_target(_can_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "can_msgs" "/home/hl/google/src/can_msgs/msg/basic_msg_type/Float64One.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/SpeedMilSteer.msg" NAME_WE)
add_custom_target(_can_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "can_msgs" "/home/hl/google/src/can_msgs/msg/SpeedMilSteer.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/basic_msg_type/Int32Pair.msg" NAME_WE)
add_custom_target(_can_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "can_msgs" "/home/hl/google/src/can_msgs/msg/basic_msg_type/Int32Pair.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/basic_msg_type/BoolVector.msg" NAME_WE)
add_custom_target(_can_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "can_msgs" "/home/hl/google/src/can_msgs/msg/basic_msg_type/BoolVector.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/mag_data_process/MagGPSInfo4Fusion.msg" NAME_WE)
add_custom_target(_can_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "can_msgs" "/home/hl/google/src/can_msgs/msg/mag_data_process/MagGPSInfo4Fusion.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/control_interface/ObstacleStop.msg" NAME_WE)
add_custom_target(_can_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "can_msgs" "/home/hl/google/src/can_msgs/msg/control_interface/ObstacleStop.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/basic_msg_type/Float64Vector.msg" NAME_WE)
add_custom_target(_can_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "can_msgs" "/home/hl/google/src/can_msgs/msg/basic_msg_type/Float64Vector.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/mag_data_process/MagUpdateFeedback.msg" NAME_WE)
add_custom_target(_can_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "can_msgs" "/home/hl/google/src/can_msgs/msg/mag_data_process/MagUpdateFeedback.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/mag_data_process/MagDataAndFitResult.msg" NAME_WE)
add_custom_target(_can_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "can_msgs" "/home/hl/google/src/can_msgs/msg/mag_data_process/MagDataAndFitResult.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/basic_msg_type/Int32Vector.msg" NAME_WE)
add_custom_target(_can_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "can_msgs" "/home/hl/google/src/can_msgs/msg/basic_msg_type/Int32Vector.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/CarSwitchControl.msg" NAME_WE)
add_custom_target(_can_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "can_msgs" "/home/hl/google/src/can_msgs/msg/CarSwitchControl.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/basic_msg_type/Float32One.msg" NAME_WE)
add_custom_target(_can_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "can_msgs" "/home/hl/google/src/can_msgs/msg/basic_msg_type/Float32One.msg" "std_msgs/Header"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(can_msgs
  "/home/hl/google/src/can_msgs/msg/basic_msg_type/BoolPair.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/can_msgs
)
_generate_msg_cpp(can_msgs
  "/home/hl/google/src/can_msgs/msg/basic_msg_type/Float32Vector.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/can_msgs
)
_generate_msg_cpp(can_msgs
  "/home/hl/google/src/can_msgs/msg/zhu_can_code/MagRuler32Data.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/can_msgs
)
_generate_msg_cpp(can_msgs
  "/home/hl/google/src/can_msgs/msg/basic_msg_type/Int32Tripple.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/can_msgs
)
_generate_msg_cpp(can_msgs
  "/home/hl/google/src/can_msgs/msg/basic_msg_type/BoolTripple.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/can_msgs
)
_generate_msg_cpp(can_msgs
  "/home/hl/google/src/can_msgs/msg/basic_msg_type/Float64Tripple.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/can_msgs
)
_generate_msg_cpp(can_msgs
  "/home/hl/google/src/can_msgs/msg/control_interface/ControllerInstruction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/can_msgs
)
_generate_msg_cpp(can_msgs
  "/home/hl/google/src/can_msgs/msg/control_interface/StationStopCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/can_msgs
)
_generate_msg_cpp(can_msgs
  "/home/hl/google/src/can_msgs/msg/basic_msg_type/Float32Tripple.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/can_msgs
)
_generate_msg_cpp(can_msgs
  "/home/hl/google/src/can_msgs/msg/mag_data_process/CntAndLink.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/can_msgs
)
_generate_msg_cpp(can_msgs
  "/home/hl/google/src/can_msgs/msg/control_interface/VehicleButtonState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/can_msgs
)
_generate_msg_cpp(can_msgs
  "/home/hl/google/src/can_msgs/msg/zhu_can_code/CanNodeStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/can_msgs
)
_generate_msg_cpp(can_msgs
  "/home/hl/google/src/can_msgs/msg/basic_msg_type/BoolOne.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/can_msgs
)
_generate_msg_cpp(can_msgs
  "/home/hl/google/src/can_msgs/msg/mag_data_process/MagCntFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/can_msgs
)
_generate_msg_cpp(can_msgs
  "/home/hl/google/src/can_msgs/msg/basic_msg_type/Float32Pair.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/can_msgs
)
_generate_msg_cpp(can_msgs
  "/home/hl/google/src/can_msgs/msg/SteerAndSpeedCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/can_msgs
)
_generate_msg_cpp(can_msgs
  "/home/hl/google/src/can_msgs/msg/zhu_can_code/Frame.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/can_msgs
)
_generate_msg_cpp(can_msgs
  "/home/hl/google/src/can_msgs/msg/mag_data_process/GPS_xyAndQuality.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/can_msgs
)
_generate_msg_cpp(can_msgs
  "/home/hl/google/src/can_msgs/msg/basic_msg_type/Int32One.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/can_msgs
)
_generate_msg_cpp(can_msgs
  "/home/hl/google/src/can_msgs/msg/zhu_can_code/InputBitsFromHensmor.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/can_msgs
)
_generate_msg_cpp(can_msgs
  "/home/hl/google/src/can_msgs/msg/mag_data_process/VehiclePosWithIndex.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/can_msgs
)
_generate_msg_cpp(can_msgs
  "/home/hl/google/src/can_msgs/msg/basic_msg_type/Float64Pair.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/can_msgs
)
_generate_msg_cpp(can_msgs
  "/home/hl/google/src/can_msgs/msg/mag_data_process/MagUpdateFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/can_msgs
)
_generate_msg_cpp(can_msgs
  "/home/hl/google/src/can_msgs/msg/mag_data_process/MagFitInfoArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/can_msgs
)
_generate_msg_cpp(can_msgs
  "/home/hl/google/src/can_msgs/msg/basic_msg_type/Float64One.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/can_msgs
)
_generate_msg_cpp(can_msgs
  "/home/hl/google/src/can_msgs/msg/SpeedMilSteer.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/can_msgs
)
_generate_msg_cpp(can_msgs
  "/home/hl/google/src/can_msgs/msg/basic_msg_type/Int32Pair.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/can_msgs
)
_generate_msg_cpp(can_msgs
  "/home/hl/google/src/can_msgs/msg/mag_data_process/MagGPSInfo4Fusion.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/can_msgs
)
_generate_msg_cpp(can_msgs
  "/home/hl/google/src/can_msgs/msg/control_interface/ObstacleStop.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/can_msgs
)
_generate_msg_cpp(can_msgs
  "/home/hl/google/src/can_msgs/msg/basic_msg_type/Float64Vector.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/can_msgs
)
_generate_msg_cpp(can_msgs
  "/home/hl/google/src/can_msgs/msg/basic_msg_type/BoolVector.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/can_msgs
)
_generate_msg_cpp(can_msgs
  "/home/hl/google/src/can_msgs/msg/mag_data_process/MagDataAndFitResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/can_msgs
)
_generate_msg_cpp(can_msgs
  "/home/hl/google/src/can_msgs/msg/basic_msg_type/Int32Vector.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/can_msgs
)
_generate_msg_cpp(can_msgs
  "/home/hl/google/src/can_msgs/msg/CarSwitchControl.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/can_msgs
)
_generate_msg_cpp(can_msgs
  "/home/hl/google/src/can_msgs/msg/basic_msg_type/Float32One.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/can_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(can_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/can_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(can_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(can_msgs_generate_messages can_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/basic_msg_type/BoolPair.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_cpp _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/basic_msg_type/Float32Vector.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_cpp _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/zhu_can_code/MagRuler32Data.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_cpp _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/basic_msg_type/Int32Tripple.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_cpp _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/basic_msg_type/BoolTripple.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_cpp _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/basic_msg_type/Float64Tripple.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_cpp _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/basic_msg_type/Float32Pair.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_cpp _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/control_interface/StationStopCmd.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_cpp _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/basic_msg_type/Float32Tripple.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_cpp _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/mag_data_process/CntAndLink.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_cpp _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/control_interface/VehicleButtonState.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_cpp _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/zhu_can_code/CanNodeStatus.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_cpp _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/basic_msg_type/BoolOne.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_cpp _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/mag_data_process/MagCntFeedback.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_cpp _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/control_interface/ControllerInstruction.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_cpp _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/SteerAndSpeedCmd.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_cpp _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/zhu_can_code/Frame.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_cpp _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/mag_data_process/GPS_xyAndQuality.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_cpp _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/basic_msg_type/Int32One.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_cpp _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/zhu_can_code/InputBitsFromHensmor.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_cpp _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/mag_data_process/VehiclePosWithIndex.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_cpp _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/basic_msg_type/Float64Pair.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_cpp _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/mag_data_process/MagFitInfoArray.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_cpp _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/basic_msg_type/Float64One.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_cpp _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/SpeedMilSteer.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_cpp _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/basic_msg_type/Int32Pair.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_cpp _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/basic_msg_type/BoolVector.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_cpp _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/mag_data_process/MagGPSInfo4Fusion.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_cpp _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/control_interface/ObstacleStop.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_cpp _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/basic_msg_type/Float64Vector.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_cpp _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/mag_data_process/MagUpdateFeedback.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_cpp _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/mag_data_process/MagDataAndFitResult.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_cpp _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/basic_msg_type/Int32Vector.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_cpp _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/CarSwitchControl.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_cpp _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/basic_msg_type/Float32One.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_cpp _can_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(can_msgs_gencpp)
add_dependencies(can_msgs_gencpp can_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS can_msgs_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(can_msgs
  "/home/hl/google/src/can_msgs/msg/basic_msg_type/BoolPair.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/can_msgs
)
_generate_msg_lisp(can_msgs
  "/home/hl/google/src/can_msgs/msg/basic_msg_type/Float32Vector.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/can_msgs
)
_generate_msg_lisp(can_msgs
  "/home/hl/google/src/can_msgs/msg/zhu_can_code/MagRuler32Data.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/can_msgs
)
_generate_msg_lisp(can_msgs
  "/home/hl/google/src/can_msgs/msg/basic_msg_type/Int32Tripple.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/can_msgs
)
_generate_msg_lisp(can_msgs
  "/home/hl/google/src/can_msgs/msg/basic_msg_type/BoolTripple.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/can_msgs
)
_generate_msg_lisp(can_msgs
  "/home/hl/google/src/can_msgs/msg/basic_msg_type/Float64Tripple.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/can_msgs
)
_generate_msg_lisp(can_msgs
  "/home/hl/google/src/can_msgs/msg/control_interface/ControllerInstruction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/can_msgs
)
_generate_msg_lisp(can_msgs
  "/home/hl/google/src/can_msgs/msg/control_interface/StationStopCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/can_msgs
)
_generate_msg_lisp(can_msgs
  "/home/hl/google/src/can_msgs/msg/basic_msg_type/Float32Tripple.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/can_msgs
)
_generate_msg_lisp(can_msgs
  "/home/hl/google/src/can_msgs/msg/mag_data_process/CntAndLink.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/can_msgs
)
_generate_msg_lisp(can_msgs
  "/home/hl/google/src/can_msgs/msg/control_interface/VehicleButtonState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/can_msgs
)
_generate_msg_lisp(can_msgs
  "/home/hl/google/src/can_msgs/msg/zhu_can_code/CanNodeStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/can_msgs
)
_generate_msg_lisp(can_msgs
  "/home/hl/google/src/can_msgs/msg/basic_msg_type/BoolOne.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/can_msgs
)
_generate_msg_lisp(can_msgs
  "/home/hl/google/src/can_msgs/msg/mag_data_process/MagCntFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/can_msgs
)
_generate_msg_lisp(can_msgs
  "/home/hl/google/src/can_msgs/msg/basic_msg_type/Float32Pair.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/can_msgs
)
_generate_msg_lisp(can_msgs
  "/home/hl/google/src/can_msgs/msg/SteerAndSpeedCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/can_msgs
)
_generate_msg_lisp(can_msgs
  "/home/hl/google/src/can_msgs/msg/zhu_can_code/Frame.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/can_msgs
)
_generate_msg_lisp(can_msgs
  "/home/hl/google/src/can_msgs/msg/mag_data_process/GPS_xyAndQuality.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/can_msgs
)
_generate_msg_lisp(can_msgs
  "/home/hl/google/src/can_msgs/msg/basic_msg_type/Int32One.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/can_msgs
)
_generate_msg_lisp(can_msgs
  "/home/hl/google/src/can_msgs/msg/zhu_can_code/InputBitsFromHensmor.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/can_msgs
)
_generate_msg_lisp(can_msgs
  "/home/hl/google/src/can_msgs/msg/mag_data_process/VehiclePosWithIndex.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/can_msgs
)
_generate_msg_lisp(can_msgs
  "/home/hl/google/src/can_msgs/msg/basic_msg_type/Float64Pair.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/can_msgs
)
_generate_msg_lisp(can_msgs
  "/home/hl/google/src/can_msgs/msg/mag_data_process/MagUpdateFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/can_msgs
)
_generate_msg_lisp(can_msgs
  "/home/hl/google/src/can_msgs/msg/mag_data_process/MagFitInfoArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/can_msgs
)
_generate_msg_lisp(can_msgs
  "/home/hl/google/src/can_msgs/msg/basic_msg_type/Float64One.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/can_msgs
)
_generate_msg_lisp(can_msgs
  "/home/hl/google/src/can_msgs/msg/SpeedMilSteer.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/can_msgs
)
_generate_msg_lisp(can_msgs
  "/home/hl/google/src/can_msgs/msg/basic_msg_type/Int32Pair.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/can_msgs
)
_generate_msg_lisp(can_msgs
  "/home/hl/google/src/can_msgs/msg/mag_data_process/MagGPSInfo4Fusion.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/can_msgs
)
_generate_msg_lisp(can_msgs
  "/home/hl/google/src/can_msgs/msg/control_interface/ObstacleStop.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/can_msgs
)
_generate_msg_lisp(can_msgs
  "/home/hl/google/src/can_msgs/msg/basic_msg_type/Float64Vector.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/can_msgs
)
_generate_msg_lisp(can_msgs
  "/home/hl/google/src/can_msgs/msg/basic_msg_type/BoolVector.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/can_msgs
)
_generate_msg_lisp(can_msgs
  "/home/hl/google/src/can_msgs/msg/mag_data_process/MagDataAndFitResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/can_msgs
)
_generate_msg_lisp(can_msgs
  "/home/hl/google/src/can_msgs/msg/basic_msg_type/Int32Vector.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/can_msgs
)
_generate_msg_lisp(can_msgs
  "/home/hl/google/src/can_msgs/msg/CarSwitchControl.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/can_msgs
)
_generate_msg_lisp(can_msgs
  "/home/hl/google/src/can_msgs/msg/basic_msg_type/Float32One.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/can_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(can_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/can_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(can_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(can_msgs_generate_messages can_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/basic_msg_type/BoolPair.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_lisp _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/basic_msg_type/Float32Vector.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_lisp _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/zhu_can_code/MagRuler32Data.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_lisp _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/basic_msg_type/Int32Tripple.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_lisp _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/basic_msg_type/BoolTripple.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_lisp _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/basic_msg_type/Float64Tripple.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_lisp _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/basic_msg_type/Float32Pair.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_lisp _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/control_interface/StationStopCmd.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_lisp _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/basic_msg_type/Float32Tripple.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_lisp _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/mag_data_process/CntAndLink.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_lisp _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/control_interface/VehicleButtonState.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_lisp _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/zhu_can_code/CanNodeStatus.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_lisp _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/basic_msg_type/BoolOne.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_lisp _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/mag_data_process/MagCntFeedback.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_lisp _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/control_interface/ControllerInstruction.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_lisp _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/SteerAndSpeedCmd.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_lisp _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/zhu_can_code/Frame.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_lisp _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/mag_data_process/GPS_xyAndQuality.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_lisp _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/basic_msg_type/Int32One.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_lisp _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/zhu_can_code/InputBitsFromHensmor.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_lisp _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/mag_data_process/VehiclePosWithIndex.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_lisp _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/basic_msg_type/Float64Pair.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_lisp _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/mag_data_process/MagFitInfoArray.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_lisp _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/basic_msg_type/Float64One.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_lisp _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/SpeedMilSteer.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_lisp _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/basic_msg_type/Int32Pair.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_lisp _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/basic_msg_type/BoolVector.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_lisp _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/mag_data_process/MagGPSInfo4Fusion.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_lisp _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/control_interface/ObstacleStop.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_lisp _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/basic_msg_type/Float64Vector.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_lisp _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/mag_data_process/MagUpdateFeedback.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_lisp _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/mag_data_process/MagDataAndFitResult.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_lisp _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/basic_msg_type/Int32Vector.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_lisp _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/CarSwitchControl.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_lisp _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/basic_msg_type/Float32One.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_lisp _can_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(can_msgs_genlisp)
add_dependencies(can_msgs_genlisp can_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS can_msgs_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(can_msgs
  "/home/hl/google/src/can_msgs/msg/basic_msg_type/BoolPair.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/can_msgs
)
_generate_msg_py(can_msgs
  "/home/hl/google/src/can_msgs/msg/basic_msg_type/Float32Vector.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/can_msgs
)
_generate_msg_py(can_msgs
  "/home/hl/google/src/can_msgs/msg/zhu_can_code/MagRuler32Data.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/can_msgs
)
_generate_msg_py(can_msgs
  "/home/hl/google/src/can_msgs/msg/basic_msg_type/Int32Tripple.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/can_msgs
)
_generate_msg_py(can_msgs
  "/home/hl/google/src/can_msgs/msg/basic_msg_type/BoolTripple.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/can_msgs
)
_generate_msg_py(can_msgs
  "/home/hl/google/src/can_msgs/msg/basic_msg_type/Float64Tripple.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/can_msgs
)
_generate_msg_py(can_msgs
  "/home/hl/google/src/can_msgs/msg/control_interface/ControllerInstruction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/can_msgs
)
_generate_msg_py(can_msgs
  "/home/hl/google/src/can_msgs/msg/control_interface/StationStopCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/can_msgs
)
_generate_msg_py(can_msgs
  "/home/hl/google/src/can_msgs/msg/basic_msg_type/Float32Tripple.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/can_msgs
)
_generate_msg_py(can_msgs
  "/home/hl/google/src/can_msgs/msg/mag_data_process/CntAndLink.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/can_msgs
)
_generate_msg_py(can_msgs
  "/home/hl/google/src/can_msgs/msg/control_interface/VehicleButtonState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/can_msgs
)
_generate_msg_py(can_msgs
  "/home/hl/google/src/can_msgs/msg/zhu_can_code/CanNodeStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/can_msgs
)
_generate_msg_py(can_msgs
  "/home/hl/google/src/can_msgs/msg/basic_msg_type/BoolOne.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/can_msgs
)
_generate_msg_py(can_msgs
  "/home/hl/google/src/can_msgs/msg/mag_data_process/MagCntFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/can_msgs
)
_generate_msg_py(can_msgs
  "/home/hl/google/src/can_msgs/msg/basic_msg_type/Float32Pair.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/can_msgs
)
_generate_msg_py(can_msgs
  "/home/hl/google/src/can_msgs/msg/SteerAndSpeedCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/can_msgs
)
_generate_msg_py(can_msgs
  "/home/hl/google/src/can_msgs/msg/zhu_can_code/Frame.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/can_msgs
)
_generate_msg_py(can_msgs
  "/home/hl/google/src/can_msgs/msg/mag_data_process/GPS_xyAndQuality.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/can_msgs
)
_generate_msg_py(can_msgs
  "/home/hl/google/src/can_msgs/msg/basic_msg_type/Int32One.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/can_msgs
)
_generate_msg_py(can_msgs
  "/home/hl/google/src/can_msgs/msg/zhu_can_code/InputBitsFromHensmor.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/can_msgs
)
_generate_msg_py(can_msgs
  "/home/hl/google/src/can_msgs/msg/mag_data_process/VehiclePosWithIndex.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/can_msgs
)
_generate_msg_py(can_msgs
  "/home/hl/google/src/can_msgs/msg/basic_msg_type/Float64Pair.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/can_msgs
)
_generate_msg_py(can_msgs
  "/home/hl/google/src/can_msgs/msg/mag_data_process/MagUpdateFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/can_msgs
)
_generate_msg_py(can_msgs
  "/home/hl/google/src/can_msgs/msg/mag_data_process/MagFitInfoArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/can_msgs
)
_generate_msg_py(can_msgs
  "/home/hl/google/src/can_msgs/msg/basic_msg_type/Float64One.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/can_msgs
)
_generate_msg_py(can_msgs
  "/home/hl/google/src/can_msgs/msg/SpeedMilSteer.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/can_msgs
)
_generate_msg_py(can_msgs
  "/home/hl/google/src/can_msgs/msg/basic_msg_type/Int32Pair.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/can_msgs
)
_generate_msg_py(can_msgs
  "/home/hl/google/src/can_msgs/msg/mag_data_process/MagGPSInfo4Fusion.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/can_msgs
)
_generate_msg_py(can_msgs
  "/home/hl/google/src/can_msgs/msg/control_interface/ObstacleStop.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/can_msgs
)
_generate_msg_py(can_msgs
  "/home/hl/google/src/can_msgs/msg/basic_msg_type/Float64Vector.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/can_msgs
)
_generate_msg_py(can_msgs
  "/home/hl/google/src/can_msgs/msg/basic_msg_type/BoolVector.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/can_msgs
)
_generate_msg_py(can_msgs
  "/home/hl/google/src/can_msgs/msg/mag_data_process/MagDataAndFitResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/can_msgs
)
_generate_msg_py(can_msgs
  "/home/hl/google/src/can_msgs/msg/basic_msg_type/Int32Vector.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/can_msgs
)
_generate_msg_py(can_msgs
  "/home/hl/google/src/can_msgs/msg/CarSwitchControl.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/can_msgs
)
_generate_msg_py(can_msgs
  "/home/hl/google/src/can_msgs/msg/basic_msg_type/Float32One.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/can_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(can_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/can_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(can_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(can_msgs_generate_messages can_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/basic_msg_type/BoolPair.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_py _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/basic_msg_type/Float32Vector.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_py _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/zhu_can_code/MagRuler32Data.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_py _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/basic_msg_type/Int32Tripple.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_py _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/basic_msg_type/BoolTripple.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_py _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/basic_msg_type/Float64Tripple.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_py _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/basic_msg_type/Float32Pair.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_py _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/control_interface/StationStopCmd.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_py _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/basic_msg_type/Float32Tripple.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_py _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/mag_data_process/CntAndLink.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_py _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/control_interface/VehicleButtonState.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_py _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/zhu_can_code/CanNodeStatus.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_py _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/basic_msg_type/BoolOne.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_py _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/mag_data_process/MagCntFeedback.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_py _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/control_interface/ControllerInstruction.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_py _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/SteerAndSpeedCmd.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_py _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/zhu_can_code/Frame.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_py _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/mag_data_process/GPS_xyAndQuality.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_py _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/basic_msg_type/Int32One.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_py _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/zhu_can_code/InputBitsFromHensmor.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_py _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/mag_data_process/VehiclePosWithIndex.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_py _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/basic_msg_type/Float64Pair.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_py _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/mag_data_process/MagFitInfoArray.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_py _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/basic_msg_type/Float64One.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_py _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/SpeedMilSteer.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_py _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/basic_msg_type/Int32Pair.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_py _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/basic_msg_type/BoolVector.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_py _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/mag_data_process/MagGPSInfo4Fusion.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_py _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/control_interface/ObstacleStop.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_py _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/basic_msg_type/Float64Vector.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_py _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/mag_data_process/MagUpdateFeedback.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_py _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/mag_data_process/MagDataAndFitResult.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_py _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/basic_msg_type/Int32Vector.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_py _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/CarSwitchControl.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_py _can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hl/google/src/can_msgs/msg/basic_msg_type/Float32One.msg" NAME_WE)
add_dependencies(can_msgs_generate_messages_py _can_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(can_msgs_genpy)
add_dependencies(can_msgs_genpy can_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS can_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/can_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/can_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(can_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/can_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/can_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(can_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/can_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/can_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/can_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(can_msgs_generate_messages_py std_msgs_generate_messages_py)
