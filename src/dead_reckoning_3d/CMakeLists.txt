cmake_minimum_required(VERSION 2.8.3)
SET(CMAKE_CXX_FLAGS "-std=c++11 -Wall -O3 -pthread")
project(dead_reckoning_3d)

find_package(catkin REQUIRED COMPONENTS
        geometry_msgs
        nav_msgs
        sensor_msgs
        roscpp
        rospy
        std_msgs
        tf
        pcl_conversions
        pcl_ros
        )


catkin_package(

)


include_directories(
        # include
        ${catkin_INCLUDE_DIRS}
)
include_directories(include)

add_executable(dead_reckoning_3d dead_reckoning_3d.cpp)


target_link_libraries(dead_reckoning_3d
        ${catkin_LIBRARIES}
        )
