//
// Created by hl on 18-1-19.
//

#ifndef PROJECT_GPS_IMU_CONSTRAINT_H
#define PROJECT_GPS_IMU_CONSTRAINT_H
#include <nav_msgs/Odometry.h>
#include <ros/ros.h>
#include <sensor_msgs/Imu.h>
#include <sensor_msgs/NavSatFix.h>
#include <fstream>
#include <iostream>
#include <tf/transform_datatypes.h>
#include <tf/transform_broadcaster.h>
#include <vector>
#include "tiggo_msgs/Heading.h"
#include <pcl/console/time.h>

//参数配置
static const double Ellipse_a = 6378137;
static const double Ellipse_b = 6356752.3142;
static const double PI = 3.14159265358;
double Ellipse_L0= 120.4620;

//gps初始点位置

double OriginX= 529246.000;
double OriginY= 3496650.000;

//gps偏移值,主要是和其他系统的对齐

double OffsetX= -1.1;
double OffsetY= 1.03;


//将gps数据展开为平面位置的值

double coordinate[7];

std::ofstream  gps_data;
std::ofstream  gps_2_data;
class Gps_constraint
{

    //ros 初始化的一些设置
    ros::NodeHandle nh;
    ros::Subscriber gps_pose;
    ros::Subscriber imu_orientation;
    ros::Subscriber gps_orientation;
    ros::Publisher gps_odom;
public:

    //构造与析构函数
    Gps_constraint();
    ~Gps_constraint();
    void gps_pose_callback(const sensor_msgs::NavSatFix::ConstPtr& gpsIn);
    void imu_orientation_callback(const sensor_msgs::Imu::ConstPtr& imuIn);
    void gps_orientation_callback(const tiggo_msgs::Heading::ConstPtr& gps_oriIn);

    //flag
    bool  first_time_imu=true;
    bool first_time_gps=true;
    bool first_time_gps_orientation=true;
    bool gps_flag=false;

    //high
    double altitude=0;

    //初始位移和角度
    double first_gps_x;
    double first_gps_y;
    double first_gps_z;
    double first_imu_rx;
    double first_imu_ry;
    double first_imu_rz;
    double first_imu_rw;

    //初始gps角度
    double first_gps_r;

    tf::Quaternion first_orientation;
   // geometry_msgs::Quaternion first_gps_orientation;
    tf::Quaternion now_orientation;
    Eigen::Affine3f transform_2 = Eigen::Affine3f::Identity();

    //线性插值的gps位置
    double gps_x;
    double gps_y;
    double gps_z;

    //当前时间的相对位移和角度
    double now_gps_x;
    double now_gps_y;
    double now_gps_z;
    double imu_rx;
    double imu_ry;
    double imu_rz;
    double imu_rw;

    //上一个时刻的相对位移和角度
    double past_gps_x;
    double past_gps_y;
    double past_gps_z;
    double past_imu_rx;
    double past_imu_ry;
    double past_imu_rz;
    double past_imu_rw;


    //时间
    double past_gps_time;
    double now_gps_time;
    double past_imu_time;
    double now_imu_time;
    tf::tfVector4 gps_after;

    //数据发布
    nav_msgs::Odometry gps_imu_odom;

    //计时器
    //pcl::console::TicToc tt;

};

#endif //PROJECT_GPS_IMU_CONSTRAINT_H
