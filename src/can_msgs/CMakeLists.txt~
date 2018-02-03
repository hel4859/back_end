cmake_minimum_required(VERSION 2.8.3)
project(can_msgs)

find_package(catkin REQUIRED
  COMPONENTS
    message_generation
    std_msgs
)

add_message_files(DIRECTORY msg
  FILES
	basic_msg_type/BoolOne.msg
	basic_msg_type/BoolPair.msg
	basic_msg_type/BoolTripple.msg
	basic_msg_type/BoolVector.msg
	basic_msg_type/Int32One.msg
	basic_msg_type/Int32Pair.msg
	basic_msg_type/Int32Tripple.msg
	basic_msg_type/Int32Vector.msg
	basic_msg_type/Float32One.msg
	basic_msg_type/Float32Pair.msg
	basic_msg_type/Float32Tripple.msg
	basic_msg_type/Float32Vector.msg
	basic_msg_type/Float64One.msg
	basic_msg_type/Float64Pair.msg
	basic_msg_type/Float64Tripple.msg
	basic_msg_type/Float64Vector.msg


        zhu_can_code/Frame.msg
        #zhu_can_code/SpeedMilSteer.msg
	zhu_can_code/InputBitsFromHensmor.msg
	zhu_can_code/CanNodeStatus.msg
	zhu_can_code/MagRuler32Data.msg



	control_interface/ControllerInstruction.msg
	control_interface/ObstacleStop.msg
	control_interface/StationStopCmd.msg
	control_interface/VehicleButtonState.msg

	mag_data_process/MagFitInfoArray.msg
	mag_data_process/MagCntFeedback.msg
	mag_data_process/MagDataAndFitResult.msg
	mag_data_process/CntAndLink.msg
	mag_data_process/GPS_xyAndQuality.msg
	mag_data_process/MagUpdateFeedback.msg
	mag_data_process/VehiclePosWithIndex.msg
	mag_data_process/MagGPSInfo4Fusion.msg

	SteerAndSpeedCmd.msg
	CarSwitchControl.msg
	SpeedMilSteer.msg

)

generate_messages(
  DEPENDENCIES
    std_msgs
)

catkin_package(
  CATKIN_DEPENDS
    message_runtime
    std_msgs
)
