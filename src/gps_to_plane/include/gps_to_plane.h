#include <nav_msgs/Odometry.h>
#include <ros/ros.h>
#include <sensor_msgs/NavSatFix.h>
#include <sensor_msgs/Imu.h>
#include <sensor_msgs/PointCloud2.h>
#include <geometry_msgs/Quaternion.h>

#include <tf/transform_datatypes.h>
#include <tf/transform_broadcaster.h>
#include <tf/transform_listener.h>
#include <fstream>
#include <iostream>
#include "gl8_msgs/GPTRA_MSG.h"
#include "gl8_msgs/Heading.h"
#include "gl8_msgs/GPGGA_MSG.h"
#include "gl8_msgs/VehicleIMU.h"
#include "gl8_msgs/VehicleSpeedFeedBack.h"

ros::Subscriber fix_raw;
ros::Subscriber fix;
ros::Subscriber yaw;
ros::Subscriber orientation;


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

//flag
bool yaw_flag=false;

 //high
double altitude=0;