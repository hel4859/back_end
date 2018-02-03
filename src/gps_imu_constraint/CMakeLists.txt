cmake_minimum_required(VERSION 2.8.3)
SET(CMAKE_CXX_FLAGS "-std=c++11 -Wall -O3")
project(gps_imu_constraint)

find_package(catkin REQUIRED COMPONENTS
        geometry_msgs
        nav_msgs
        sensor_msgs
        roscpp
        rospy
        std_msgs
        tf
        pcl_ros
        pcl_conversions
        )


catkin_package(

)


include_directories(
        # include
        ${catkin_INCLUDE_DIRS}
)
include_directories(include)

add_executable(gps_imu_constraint src/gps_imu_constraint.cpp)


target_link_libraries(gps_imu_constraint
        ${catkin_LIBRARIES}
        )
