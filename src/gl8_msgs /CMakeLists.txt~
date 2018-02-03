cmake_minimum_required(VERSION 2.8.3)
project(gl8_msgs)

find_package(catkin REQUIRED COMPONENTS roscpp std_msgs sensor_msgs geometry_msgs message_generation)

add_message_files(
  	FILES
	CanFrame.msg
	VehicleSteerFeedBack.msg
    VehicleSpeedFeedBack.msg
    VehicleIMU.msg
	VehicleControlCmd.msg
    Heading.msg
    Point2D.msg
    RoadSegment.msg
    Vector2.msg
    MapNearby.msg
    GlobalPath.msg
    PathPoint.msg
    GPGGA_MSG.msg
    GPTRA_MSG.msg
    MappingFlag.msg
#    VehicleMotionFeedBack.msg
)

generate_messages(
  DEPENDENCIES
  std_msgs
  sensor_msgs
  geometry_msgs
)


catkin_package(
  CATKIN_DEPENDS message_runtime roscpp std_msgs sensor_msgs geometry_msgs message_runtime
)

include_directories(
	include ${catkin_INCLUDE_DIRS}
	include ${roscpp_INCLUDE_DIRS}
)

# Set the name to use for the executable.
#add_executable (ican_msg_convert src/ican_msg_convert.cpp)
#target_link_libraries(ican_msg_convert ${catkin_LIBRARIES})

# Set the source files to use with the executable.

# Build the executable that will be used to run this node.


#install(DIRECTORY include/${PROJECT_NAME}/
#  DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION}
#  FILES_MATCHING PATTERN "*.h"
#)

#install(TARGETS ${BINNAME1}
#  RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
#  LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
#  ARCHIVE DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
#)

#install(TARGETS ${BINNAME2}
#  RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
#  LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
#  ARCHIVE DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
#)

#install(DIRECTORY launch
#  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
#)
