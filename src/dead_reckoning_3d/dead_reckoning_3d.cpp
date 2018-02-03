//
// Created by hl on 18-1-19.
//
#include "dead_reckoning_3d.h"


void Dead_reckoning::orientation_callback(const sensor_msgs::Imu::ConstPtr &imuIn) {

   //获得角速度和当前时间
    roll_vel=imuIn->angular_velocity.x;
    pitch_vel=imuIn->angular_velocity.y;
    yaw_vel=imuIn->angular_velocity.z;
    nowTime=imuIn->header.stamp.toSec();

    //std::cout<<"get the imu"<<std::endl;
   // std::cout<<"rotation_vel: "<<roll_vel<<" rad/s "<<pitch_vel<<" rad/s "<<yaw_vel<<" rad/s "<<std::endl;

    //第一次初始化时间
    if (first_time)
    {

        pastTime=imuIn->header.stamp.toSec();
        first_time=false;

    }
    dt=nowTime-pastTime;

    //调试时间,为0.01s左右
    //std::cout<<"dt: "<<dt<<std::endl;

    //线性插值,估计当前速度
    if (vel_nowTime-vel_pastTime!=0)
    {
        vel=past_vel+(now_vel-past_vel)*(nowTime-vel_pastTime)/(vel_nowTime-vel_pastTime);
    }
    else
    {
        vel=now_vel;
     //   std::cout<<"!vel"<<std::endl;
    }

   // std::cout<<"vel: "<<vel<<std::endl;

    //三维航位推算核心公式
    pose[0]=pose[0]+cos(pose[5])*cos(pose[4])*vel*dt;
    pose[1]=pose[1]+sin(pose[5])*cos(pose[4])*vel*dt;
    pose[2]=pose[2]-sin(pose[4])*vel*dt;
    pose[3]=pose[3]+roll_vel*dt;
    pose[4]=pose[4]+pitch_vel*dt;
    pose[5]=pose[5]+yaw_vel*dt;

    pastTime=nowTime;

    //输出推算出来的位姿
    //std::cout<<"get the pose"<<std::endl;
   // std::cout<<"pose: "<<pose[0]<<" m "<<pose[1]<<" m "<<pose[2]<<" m "
          //   <<pose[3]<<" rad "<<pose[4]<<" rad "<<pose[5]<<" rad " <<std::endl;

    //将欧拉角转化为四元数
    geometry_msgs::Quaternion geoQuat = tf::createQuaternionMsgFromRollPitchYaw(pose[3], pose[4], pose[5]);

    //发布成里程计数据
    dead_reckoning_odom.header.stamp=ros::Time().fromSec(nowTime);
    dead_reckoning_odom.header.frame_id = "/camera_init";
    dead_reckoning_odom.child_frame_id = "/dead_reckoning_3d";
    dead_reckoning_odom.pose.pose.orientation.x = geoQuat.x;
    dead_reckoning_odom.pose.pose.orientation.y = geoQuat.y;
    dead_reckoning_odom.pose.pose.orientation.z = geoQuat.z;
    dead_reckoning_odom.pose.pose.orientation.w = geoQuat.w;
    dead_reckoning_odom.pose.pose.position.x = pose[0];
    dead_reckoning_odom.pose.pose.position.y = pose[1];
    dead_reckoning_odom.pose.pose.position.z = pose[2];
    odom.publish(dead_reckoning_odom);
    imu_data<< std::fixed << std::setprecision(12) << dead_reckoning_odom.header.stamp << " " << pose[0] << " "
            << pose[1] << " " << pose[2] << std::endl;




}
void Dead_reckoning::odom_vel_callback(const geometry_msgs::TwistWithCovarianceStamped::ConstPtr &velIn) {


    //初始化速度
    if (vel_first_time)
    {
        //速度时间初始化
        vel_pastTime=velIn->header.stamp.toSec();
        vel_nowTime=velIn->header.stamp.toSec();

        past_vel=sqrt((velIn->twist.twist.linear.x)*(velIn->twist.twist.linear.x)
                     +(velIn->twist.twist.linear.y)*(velIn->twist.twist.linear.y)
                     +(velIn->twist.twist.linear.z)*(velIn->twist.twist.linear.z));
        now_vel=sqrt((velIn->twist.twist.linear.x)*(velIn->twist.twist.linear.x)
                     +(velIn->twist.twist.linear.y)*(velIn->twist.twist.linear.y)
                     +(velIn->twist.twist.linear.z)*(velIn->twist.twist.linear.z));
        vel_first_time=false;

    }
    past_vel=now_vel;
    //计算三维速度
    now_vel=sqrt((velIn->twist.twist.linear.x)*(velIn->twist.twist.linear.x)
             +(velIn->twist.twist.linear.y)*(velIn->twist.twist.linear.y)
             +(velIn->twist.twist.linear.z)*(velIn->twist.twist.linear.z));
    vel_pastTime=vel_nowTime;
    vel_nowTime=velIn->header.stamp.toSec();

    //std::cout<<"get the velocity"<<std::endl;
    //std::cout<<" past_vel: "<<past_vel<<"m/s  "<<" now_vel: "<<now_vel<<" m/s"<<std::endl;
}

Dead_reckoning::Dead_reckoning()
{

    std::cout<<"Dead_reckoning::Dead_reckoning()"<<std::endl;

    imu_data.open ("/home/hl/helei_ws/src/loam_velodyne/txt/imu.txt");//保存x,y
    //订阅惯导信息,针对瑞虎车 20万惯导
    orientation=nh.subscribe("/Inertial/imu/data",10,&Dead_reckoning::orientation_callback,this);

    //目前订阅的是惯导融合出来的速度
    odom_vel=nh.subscribe("/Inertial/gps/vel",10,&Dead_reckoning::odom_vel_callback,this);

    //发布航位推算的结果,目前是硬推,肯定有累计误差
    odom=nh.advertise<nav_msgs::Odometry>("/dead_reconking_3d", 5);
}


//析构函数,一般用来销毁指针或者生成log文件
Dead_reckoning::~Dead_reckoning() {

    std::cout<<"Dead_reckoning::~Dead_reckoning()"<<std::endl;

}

int main(int argc, char** argv)
{
    ros::init(argc, argv, "Dead_reckoning_3d");
    Dead_reckoning reck;
    ros::MultiThreadedSpinner spinner(0); // Use all threads
    spinner.spin(); // spin() will not return until the node has been shutdown
}

