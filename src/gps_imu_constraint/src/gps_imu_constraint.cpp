//
// Created by hl on 18-1-19.
//
#include <eigen3/Eigen/Dense>
#include "gps_imu_constraint.h"
Gps_constraint::Gps_constraint() {
    std::cout<<"Gps_constraint::Gps_constraint()"<<std::endl;
    gps_data.open ("/home/hl/google/src/loam_velodyne/txt/fix.txt");//保存x,y
   // gps_2_data.open("/home/hl/helei_ws/src/loam_velodyne/txt/fix2.txt");
    //订阅惯导信息,针对瑞虎车 20万惯导
    imu_orientation=nh.subscribe("/Inertial/imu/data",10,&Gps_constraint::imu_orientation_callback,this);

    //千寻的结果
    gps_pose=nh.subscribe("/Inertial/gps/fix",10,&Gps_constraint::gps_pose_callback,this);

    //gps初始的航向角
    gps_orientation=nh.subscribe("/Inertial/heading",10,&Gps_constraint::gps_orientation_callback,this);
    //发布通过协方差挑选过的gps值
    gps_odom=nh.advertise<nav_msgs::Odometry>("/gps_constraint", 5);
}

Gps_constraint::~Gps_constraint() {
    std::cout<<"Gps_constraint::~Gps_constraint()"<<std::endl;

}

void Gps_constraint::gps_pose_callback(const sensor_msgs::NavSatFix::ConstPtr &fixIn) {

    static const double Ellipse_n = (Ellipse_a - Ellipse_b) / (Ellipse_a + Ellipse_b);
    static const double Ellipse_e = sqrt(Ellipse_a*Ellipse_a - Ellipse_b*Ellipse_b) / Ellipse_a;
    static const double Ellipse_ee = sqrt(Ellipse_a*Ellipse_a - Ellipse_b*Ellipse_b) / Ellipse_b;
    static const double Ellipse_C0 = (Ellipse_a + Ellipse_b)*(1 + 0.25*pow(Ellipse_n, 2) + 0.015625*pow(Ellipse_n, 4))*0.5;
    static const double Ellipse_C1 = -1.5*Ellipse_n + 0.5625*pow(Ellipse_n, 3) - 0.09375*pow(Ellipse_n, 5);
    static const double Ellipse_C2 = 0.9375*pow(Ellipse_n, 2) - 0.46875*pow(Ellipse_n, 4);
    static const double Ellipse_C3 = -35 / 48 * pow(Ellipse_n, 3) + 0.41015625*pow(Ellipse_n, 5);
    static const double Ellipse_C4 = 0.615234375*pow(Ellipse_n, 4);

    double Ellipse_lat =fixIn->latitude*PI / 180;
    double Ellipse_lon = (fixIn->longitude - Ellipse_L0)*PI / 180;
    double Ellipse_N = Ellipse_a / sqrt(1 - pow(Ellipse_e*sin(Ellipse_lat), 2));
    double Ellipse_t = tan(Ellipse_lat);
    double Ellipse_g = Ellipse_ee*cos(Ellipse_lat);
    double Ellipse_m = cos(Ellipse_lat)*Ellipse_lon;

    double Ellipse_X = Ellipse_C0*(Ellipse_lat + Ellipse_C1*sin(2 * Ellipse_lat)
                                   + Ellipse_C2*sin(4 * Ellipse_lat)
                                   + Ellipse_C3*sin(6 * Ellipse_lat) + Ellipse_C4*sin(8 * Ellipse_lat));
    //--------------------------solution----------------------------------

    double tempy = Ellipse_X + 0.5*Ellipse_N*Ellipse_t*pow(Ellipse_m, 2);
    tempy += 0.041666666666666666666666666667*Ellipse_N*Ellipse_t*(5 - pow(Ellipse_t, 2)
            + 9 * pow(Ellipse_g, 2) + 4 * pow(Ellipse_g, 4))*pow(Ellipse_m, 4);
    tempy += 0.0013888888888888888888888888889*Ellipse_N*Ellipse_t*(61 - 58 * pow(Ellipse_t, 2)
            + pow(Ellipse_t, 4) + 270 * pow(Ellipse_g, 2) - 330 * pow(Ellipse_g, 2)*pow(Ellipse_t, 2))*pow(Ellipse_m, 6);
    tempy += 0.0000248015873015873*Ellipse_t*Ellipse_N*pow(Ellipse_m, 8)*(1385 - 3111 * pow(Ellipse_t, 2)
                                              + 543 * pow(Ellipse_t, 4) - pow(Ellipse_t, 6));

    double tempx = Ellipse_N*Ellipse_m + Ellipse_N*pow(Ellipse_m, 3)*(1 - pow(Ellipse_t, 2) + pow(Ellipse_g, 2))*0.16666666666666666666666666666666666667;
    tempx += Ellipse_N*(5 - 18 * pow(Ellipse_t, 2) + pow(Ellipse_t, 4) + 14 * pow(Ellipse_g, 2) - 58 * pow(Ellipse_g, 2)*pow(Ellipse_t, 2))
             *pow(Ellipse_m, 5)*0.008333333333333333333333333333;
    tempx += Ellipse_N*(61 - 479 * pow(Ellipse_t, 2)
                        + 179 * pow(Ellipse_t, 4) - pow(Ellipse_t, 6))*pow(Ellipse_m, 7)*0.000198412698412698 + 500000;

    tempx = tempx * 100 - OriginX * 100;     //cm
    tempy = tempy * 100 - OriginY * 100;     //cm

    tempx += OffsetX * 100;
    tempy += OffsetY * 100;

    //coordinate[0]=fixIn->header.stamp;
    coordinate[0] = (tempx) / 100.0;
    coordinate[1] = (tempy) / 100.0;
    coordinate[2]=fixIn->altitude;
    if (!first_time_gps_orientation)
    {
        if (first_time_gps )
        {

            first_gps_x=coordinate[0];
            first_gps_y=coordinate[1];
            first_gps_z=coordinate[2];

            transform_2.translation() << first_gps_x,first_gps_y,first_gps_z;

            double now_gps_x_temp;
            double now_gps_y_temp;
            double now_gps_z_temp;
            now_gps_x_temp=coordinate[0];
            now_gps_y_temp=coordinate[1];
            now_gps_z_temp=coordinate[2];

            Eigen::Vector4f gps_before(now_gps_x_temp,now_gps_y_temp,now_gps_z_temp,1);
            Eigen::Vector4f gps_after;
            gps_after=transform_2.matrix().inverse()*gps_before;

            now_gps_x=gps_after[0];
            now_gps_y=gps_after[1];
            now_gps_z=gps_after[2];

            past_gps_x=now_gps_x;
            past_gps_y=now_gps_y;
            past_gps_z=now_gps_z;
            past_gps_time=fixIn->header.stamp.toSec();
            now_gps_time=fixIn->header.stamp.toSec();
            first_time_gps= false;

            //  std::cout<<"first_gps_x: "<<first_gps_x<<"  first_gps_y: "<<first_gps_y<<"  first_gps_z: "<<first_gps_z<<std::endl;
        }
//        if (fixIn->position_covariance[0]<0.01 && fixIn->position_covariance[4]<0.01
//            && fixIn->position_covariance[8]<0.05 ) {
            past_gps_time = now_gps_time;
            now_gps_time = fixIn->header.stamp.toSec();

            past_gps_x = now_gps_x;
            past_gps_y = now_gps_y;
            past_gps_z = now_gps_z;

            double now_gps_x_temp_1;
            double now_gps_y_temp_1;
            double now_gps_z_temp_1;
            now_gps_x_temp_1 = coordinate[0];
            now_gps_y_temp_1 = coordinate[1];
            now_gps_z_temp_1 = coordinate[2];

            Eigen::Vector4f gps_before_1(now_gps_x_temp_1, now_gps_y_temp_1, now_gps_z_temp_1, 1);
            Eigen::Vector4f gps_after_1;
            gps_after_1 = transform_2.matrix().inverse() * gps_before_1;

            //std::cout<<"gps_after_1:"<<gps_after_1<<std::endl;
            now_gps_x = gps_after_1[0];
            now_gps_y = gps_after_1[1];
            now_gps_z = gps_after_1[2];




            //gps_data<<"past_gps_x: "<<past_gps_x<<" past_gps_y: "<<past_gps_y<<" past_gps_z: "<<past_gps_z<<std::endl;
            // gps_data<<"now_gps_x: "<<now_gps_x<<" now_gps_y: "<<now_gps_y<<" now_gps_z: "<<now_gps_z<<std::endl;
            //  gps_data << std::fixed << std::setprecision(12) << fixIn->header.stamp << " " << now_gps_x << " "
            //    << now_gps_y << " " << now_gps_z << std::endl;
            //  gps_2_data<< std::fixed << std::setprecision(12) << fixIn->header.stamp << " " << now_gps_x << " "
            //  << now_gps_y << " " << now_gps_z << std::endl;
            // }
            gps_flag = true;
//        }

    }



}

void Gps_constraint::imu_orientation_callback(const sensor_msgs::Imu::ConstPtr &imuIn) {



    if (first_time_imu)
    {

        first_orientation = tf::Quaternion(imuIn->orientation.x,imuIn->orientation.y,imuIn->orientation.z,imuIn->orientation.w);
        first_time_imu = false;

      //  std::cout<<"first time oritentation: "<<std::endl;
      //  std::cout<<first_orientation.x()<<" "<<first_orientation.y()<<" "<<first_orientation.z()<<" "<<first_orientation.w()<<std::endl;
        past_imu_time = imuIn->header.stamp.toSec();

    }
    //std::cout<<"first_time_gps_orientation: "<<first_time_gps_orientation<<std::endl;


    if (!first_time_gps_orientation&& !first_time_gps && now_gps_time-past_gps_time<0.015 &&gps_flag)
    {

        now_orientation= first_orientation.inverse()*tf::Quaternion(imuIn->orientation.x,imuIn->orientation.y,imuIn->orientation.z,imuIn->orientation.w);
        now_imu_time=imuIn->header.stamp.toSec();
        if (now_gps_time-past_gps_time!=0) {

            gps_x = past_gps_x +
                    (now_gps_x - past_gps_x) * (now_imu_time - past_gps_time) / (now_gps_time - past_gps_time);
            gps_y = past_gps_y +
                    (now_gps_y - past_gps_y) * (now_imu_time - past_gps_time) / (now_gps_time - past_gps_time);
            gps_z = past_gps_z +
                    (now_gps_z - past_gps_z) * (now_imu_time - past_gps_time) / (now_gps_time - past_gps_time);

        }
        else
        {
            gps_x = now_gps_x;
            gps_y = now_gps_y;
            gps_z = now_gps_z;

        }


       // std::cout<<"gps_x: "<<gps_x<<" gps_y: "<<gps_y<<" gps_z: "<<gps_z<<std::endl;

        //std::cout<<"first_gps_orientation: "<<first_gps_orientation.x<<" "<<first_gps_orientation.y<<" "<<first_gps_orientation.z<<" "<<first_gps_orientation.w<<std::endl;

        //Eigen::Vector3d change=Eigen::Quaterniond(first_gps_orientation.x,first_gps_orientation.y,first_gps_orientation.z,first_gps_orientation.w).inverse()*Eigen::Vector3d(gps_x,gps_y,gps_z);

            past_imu_time=imuIn->header.stamp.toSec();
            gps_imu_odom.header.stamp=ros::Time().fromSec(now_imu_time);
            gps_imu_odom.header.frame_id = "/camera_init";
            gps_imu_odom.child_frame_id = "/gps_imu_odom";
            gps_imu_odom.pose.pose.orientation.x = now_orientation.x();
            gps_imu_odom.pose.pose.orientation.y = now_orientation.y();
            gps_imu_odom.pose.pose.orientation.z = now_orientation.z();
            gps_imu_odom.pose.pose.orientation.w = now_orientation.w();
            gps_imu_odom.pose.pose.position.x = gps_x;
            gps_imu_odom.pose.pose.position.y = gps_y;
            gps_imu_odom.pose.pose.position.z = gps_z;
            gps_odom.publish(gps_imu_odom);

           gps_data << std::fixed << std::setprecision(12) << gps_imu_odom.header.stamp << " " << gps_x << " "
                    << gps_y << " " << gps_z << std::endl;
           gps_flag=false;
    }





}

void Gps_constraint::gps_orientation_callback(const tiggo_msgs::Heading::ConstPtr &gps_oriIn) {
    if (first_time_gps_orientation)
    {
        //first_gps_orientation=tf::createQuaternionMsgFromYaw(gps_oriIn->data);

        first_gps_r=gps_oriIn->data;
        transform_2.rotate (Eigen::AngleAxisf (gps_oriIn->data, Eigen::Vector3f::UnitZ()));
        first_time_gps_orientation=false;
    }

}
int main(int argc, char** argv)
{
    ros::init(argc, argv, "Gps_constraint");
    Gps_constraint gps_con;
    ros::MultiThreadedSpinner spinner(0); // Use all threads
    spinner.spin(); // spin() will not return until the node has been shutdown
}
