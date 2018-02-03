cmake_minimum_required(VERSION 2.8.3)
project(gl8_vis)

#find_package(catkin REQUIRED COMPONENTS 
#	roscpp 
#)
find_package(OpenCV REQUIRED)
catkin_package(
#  	CATKIN_DEPENDS
	INCLUDE_DIRS include/
	LIBRARIES ${PROJECT_NAME}
)

include_directories(
	include ${catkin_INCLUDE_DIRS}
	include/${PROJECT_NAME}/
)

# Set the name to use for the executable.
set (BINNAME1 gl8_vis)



## Set the source files to use with the executable.
set (SRCS1 ${SRCS1} src/vis2d.cpp src/vis3d.cpp)



##Build the executable that will be used to run this node.
add_library (${BINNAME1} ${SRCS1})
target_link_libraries(${BINNAME1} ${catkin_LIBRARIES} ${OpenCV_LIBRARIES})



install(DIRECTORY include/
  DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION}
  FILES_MATCHING PATTERN "*.h"
)

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
