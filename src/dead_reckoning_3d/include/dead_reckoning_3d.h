//
// Created by hl on 18-1-19.
//

#ifndef HELEI_WS_3D_DEAD_RECKONING_H
#define HELEI_WS_3D_DEAD_RECKONING_H
#include <nav_msgs/Odometry.h>
#include <ros/ros.h>
#include <sensor_msgs/Imu.h>
#include <geometry_msgs/TwistWithCovarianceStamped.h>
#include <fstream>
#include <iostream>
#include <tf/transform_datatypes.h>
#include <tf/transform_broadcaster.h>

std::ofstream  imu_data;
class  Dead_reckoning
{
    //ros 初始化的一些设置
    ros::NodeHandle nh;
    ros::Subscriber orientation;
    ros::Subscriber odom_vel;
    ros::Publisher odom;
public:
    //构造与析构函数
    Dead_reckoning();
    ~Dead_reckoning();
    void orientation_callback(const sensor_msgs::Imu::ConstPtr& imuIn);
    void odom_vel_callback(const geometry_msgs::TwistWithCovarianceStamped::ConstPtr& velIn);

    //核心变量

    //更新的状态量,x,y,z,roll,pitch,yaw
    double pose[6];

    //里程计速度
    double vel;
    double past_vel;
    double now_vel;

    //采样时间
    double dt=0;
    double pastTime=0;
    double nowTime=0;
    double vel_pastTime=0;
    double vel_nowTime=0;

    //角速度
    double roll_vel=0;
    double pitch_vel=0;
    double yaw_vel=0;

    //参数传入的设置
    bool first_time=true;
    bool vel_first_time=true;

    //数据发布
    nav_msgs::Odometry dead_reckoning_odom;
};

#endif //HELEI_WS_3D_DEAD_RECKONING_H
