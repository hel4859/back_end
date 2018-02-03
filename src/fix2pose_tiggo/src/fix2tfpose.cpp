#include <string>
#include "ros/ros.h"
#include "std_msgs/Float64.h"
#include "tiggo_msgs/Heading.h"
#include "geometry_msgs/PointStamped.h"
#include "geometry_msgs/PoseStamped.h"
#include "sensor_msgs/NavSatFix.h"
#include "geometry_msgs/Twist.h"
#include "std_msgs/Bool.h"
#include "tf/transform_broadcaster.h"
#include "../include/map_frame.h"
#include <iostream>

using namespace std;
static ros::Publisher pose_publisher;
static double yaw;
string frame_id;

void gpsCallback(const sensor_msgs::NavSatFixConstPtr &msg)
{
    if (msg->status.status == -1) return;

    MapFrame curr_pos;
    geometry_msgs::PoseStamped pose;
    static tf::TransformBroadcaster br_gps;
    tf::Transform transform_gps;
    tf::Quaternion q_gps;

    curr_pos.GPS2MapFrame(*msg);
    pose.header = msg->header;
    pose.header.stamp = msg->header.stamp;
    pose.header.frame_id = "map";
    pose.pose.position.x = curr_pos.x;
    pose.pose.position.y = curr_pos.y;
    pose.pose.position.z = 0;
    pose.pose.orientation = tf::createQuaternionMsgFromYaw(yaw);
    pose_publisher.publish(pose);

    transform_gps.setOrigin(tf::Vector3(pose.pose.position.x, pose.pose.position.y,pose.pose.position.z));
    q_gps.setRPY(0, 0, yaw);
    transform_gps.setRotation(q_gps);
    br_gps.sendTransform( tf::StampedTransform(transform_gps, msg->header.stamp, "map" ,frame_id));
}

void yawCallback(const std_msgs::Float64::ConstPtr& yaw_rad_in)
{
	yaw = yaw_rad_in->data;
}

int main(int argc, char **argv)
{
    string topic_pose, topic_gps, topic_yaw;

    ros::init(argc, argv, "fix2pose");
    ros::NodeHandle nh;
    ros::NodeHandle pnh("~");

    pnh.param<string>("topic_pose", topic_pose, "/estimation");
    pnh.param<string>("topic_gps", topic_gps, "/Inertial/gps/vel");
    pnh.param<string>("topic_yaw", topic_yaw, "/lty_yaw");
    pnh.param<string>("frame_id", frame_id, "/estimation");

    pose_publisher = nh.advertise<geometry_msgs::PoseStamped>(topic_pose,10);
    ros::Subscriber sub_rtk_gps = nh.subscribe(topic_gps, 10, gpsCallback);
    ros::Subscriber sub_yaw_gps = nh.subscribe(topic_yaw, 10, yawCallback);

    ros::spin();
    return 0;
}
