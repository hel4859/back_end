#include <string>
#include "ros/ros.h"
#include "std_msgs/Float64.h"
#include "geometry_msgs/PointStamped.h"
#include "geometry_msgs/PoseStamped.h"
#include "sensor_msgs/NavSatFix.h"
#include "sensor_msgs/Imu.h"
#include "geometry_msgs/Twist.h"
#include "std_msgs/Bool.h"
#include "tf/transform_broadcaster.h"
#include <iostream>
#include <cmath>
#include "../include/map_frame.h"
#include <message_filters/subscriber.h>
#include <message_filters/sync_policies/approximate_time.h>
#include <message_filters/synchronizer.h>
#include <message_filters/time_synchronizer.h>
#include <tf/transform_datatypes.h>

using namespace std;
static ros::Publisher pose_publisher;
static double yaw;
string frame_id;
void update_callback(const sensor_msgs::NavSatFixConstPtr &gps_in, const sensor_msgs::ImuConstPtr &imu_in);
vector<geometry_msgs::PoseStamped> pose_array;

bool init_flag = false;

int main(int argc, char **argv)
{
    string topic_pose, topic_gps, topic_imu;

    ros::init(argc, argv, "fix2pose");
    ros::NodeHandle nh;
    ros::NodeHandle pnh("~");

    pnh.param<string>("topic_pose", topic_pose, "/rtk");
    pnh.param<string>("topic_gps", topic_gps, "/Inertial/gps/fix/filtered");
    pnh.param<string>("topic_imu", topic_imu, "/Inertial/imu/data/filtered");
    pnh.param<string>("frame_id", frame_id, "/rtk_point");

    pose_publisher = nh.advertise<geometry_msgs::PoseStamped>(topic_pose,10);
    message_filters::Subscriber<sensor_msgs::NavSatFix> sub_gps_fix(nh, topic_gps, 1);
    message_filters::Subscriber<sensor_msgs::Imu> sub_imu(nh, topic_imu, 1);
    typedef message_filters::sync_policies::ApproximateTime<sensor_msgs::NavSatFix,  sensor_msgs::Imu> UpdatePolicy;
    message_filters::Synchronizer<UpdatePolicy> update_sync(UpdatePolicy(10),sub_gps_fix,sub_imu);
    update_sync.registerCallback(boost::bind(&update_callback, _1, _2));
    ros::spin();
    return 0;
}
void update_callback(const sensor_msgs::NavSatFixConstPtr &gps_in, const sensor_msgs::ImuConstPtr &imu_in) {
    if (((gps_in->latitude > 30.0) && (gps_in->latitude < 40.0)) == false) return;
    tf::Quaternion q(imu_in->orientation.x, imu_in->orientation.y, imu_in->orientation.z, imu_in->orientation.w);
    tf::Matrix3x3 m(q);
    double roll, pitch;
    m.getRPY(roll, pitch, yaw);
    yaw = yaw + 0.5 * M_PI;
    while (yaw >= M_PI) yaw -= 2 * M_PI;
    while (yaw < -M_PI) yaw += 2 * M_PI;
    tiggo::common::util::MapFrame curr_pos;
    curr_pos.GPS2MapFrame(gps_in->longitude, gps_in->latitude);


    static tf::TransformBroadcaster br_gps;
    tf::Transform transform_gps;
    tf::Quaternion q_gps;
    if (init_flag == false) {
        init_flag = true;
        pose_array.clear();
    }
    geometry_msgs::PoseStamped pose1, pose2;
    pose1.header = gps_in->header;
    pose1.header.stamp = gps_in->header.stamp;
    pose1.header.frame_id = "map";
    pose1.pose.position.x = curr_pos.x_;
    pose1.pose.position.y = curr_pos.y_;
    pose1.pose.position.z = 0.35;
//    pose_array.push_back(pose1);
//    vector<geometry_msgs::PoseStamped>::reverse_iterator r_iter;
//    double dist;
//    bool delete_flag = false;
//    for (r_iter = pose_array.rbegin(); r_iter != pose_array.rend(); ) {
//        if (delete_flag) {
//            r_iter = vector<geometry_msgs::PoseStamped>::reverse_iterator(pose_array.erase((++r_iter).base()));
//            continue;
//        }
//        dist = sqrt(
//                (r_iter->pose.position.x - pose1.pose.position.x) * (r_iter->pose.position.x - pose1.pose.position.x)
//                +
//                (r_iter->pose.position.y - pose1.pose.position.y) * (r_iter->pose.position.y - pose1.pose.position.y));
//        if (dist > 0.1 and delete_flag == false) {
//            delete_flag = true;
//            pose2 = *r_iter;
//        }
//        ++r_iter;
//    }
//    if (delete_flag==false) return;
//    double dx = pose1.pose.position.x - pose2.pose.position.x;
//    double dy = pose1.pose.position.y - pose2.pose.position.y;
//    double yaw = atan2(dy,dx);

    pose1.pose.orientation = tf::createQuaternionMsgFromYaw(yaw);
    pose_publisher.publish(pose1);

    transform_gps.setOrigin(tf::Vector3(pose1.pose.position.x, pose1.pose.position.y,pose1.pose.position.z));
    q_gps.setRPY(0, 0, yaw);
    transform_gps.setRotation(q_gps);
    br_gps.sendTransform( tf::StampedTransform(transform_gps, gps_in->header.stamp, "map" ,frame_id));
}

