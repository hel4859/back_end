#include "ros/ros.h"
#include "std_msgs/String.h"
#include "std_msgs/Float64.h"
#include "std_msgs/Int8.h"
#include "std_msgs/Int32.h"
#include "std_msgs/ColorRGBA.h"
#include "std_msgs/Int8MultiArray.h"
#include "std_msgs/Int32MultiArray.h"
#include "std_msgs/Float64MultiArray.h"
#include "sensor_msgs/NavSatFix.h"
#include "tf/tf.h"
#include "tf/transform_listener.h"
#include "tf/transform_datatypes.h"
#include "geometry_msgs/PoseStamped.h"
#include "geometry_msgs/Point.h"
#include "visualization_msgs/Marker.h"
#include <iostream>
#include <string>

#include "nav_msgs/Path.h"
#include "geometry_msgs/PoseArray.h"
#include <message_filters/subscriber.h>
#include <message_filters/sync_policies/approximate_time.h>
#include <message_filters/synchronizer.h>
#include <message_filters/time_synchronizer.h>

using namespace std;
visualization_msgs::Marker *traj;

ros::Publisher pub_path;

const int DisplayMarker = 0;
const int DisplayPath = 1;
const int DisplayPoses = 2;

int display_type = 0;
int raw_gps_type = 0;
nav_msgs::Path path;
geometry_msgs::PoseArray poses;
void update_callback( const geometry_msgs::PoseStampedConstPtr &pose_in);
void markerInit(visualization_msgs::Marker *marker,string frame_id,string ns,int id,int type,double scalex)
{
    //color is an array with the length of 3, color={r,g,b}
    marker->header.frame_id = frame_id;
    marker->header.stamp = ros::Time();
    marker->ns = ns;
    marker->id = id;
    marker->type = type;
    marker->action = visualization_msgs::Marker::ADD;
    marker->scale.x = scalex;
    marker->scale.y = scalex;
    marker->scale.z = scalex;
}

int main(int argc, char **argv)
{
	ros::init(argc, argv, "pose2path");
    ros::NodeHandle nh;
    ros::NodeHandle pnh("~");
    string pose_type, path_type,topic_gps,topic_raw_gps;
    double marker_size;
    int marker_id,marker_type;
    pnh.param<string>("pose_name", pose_type, "/rtk");
    pnh.param<string>("path_name", path_type, "/rtk_path");
    pnh.param<double>("marker_size", marker_size,0.02);
    
    pnh.param<int>("point_marker_type",marker_type,7);
    pnh.param<int>("id", marker_id, 0);
    pnh.param<int>("display_type", display_type, 2);
    traj = new visualization_msgs::Marker();

    if(display_type==DisplayMarker){
        markerInit(traj,"map",pose_type,marker_id,marker_type,marker_size);
        pub_path = nh.advertise<visualization_msgs::Marker>(path_type,2);
    } else if(display_type==DisplayPath){
        pub_path = nh.advertise<nav_msgs::Path>(path_type,2);
    } else if(display_type==DisplayPoses){
        pub_path = nh.advertise<geometry_msgs::PoseArray>(path_type,2);
    }

    ros::Subscriber sub_pose = nh.subscribe(pose_type, 10, update_callback);
	ros::spin();
    delete traj;
	return 0;
}

void update_callback( const geometry_msgs::PoseStampedConstPtr &pose_in)
{

    std_msgs::ColorRGBA color;
    color.r = 0.0;
    color.g = 0.0;
    color.b = 0.0;
    color.a = 1.0;

    if(display_type==DisplayMarker){
        geometry_msgs::Point pose = pose_in->pose.position;
        traj->points.push_back(pose);
        traj->colors.push_back(color);
        pub_path.publish(*traj);        
    }else if(display_type==DisplayPath){
        path.poses.push_back(*pose_in);
        path.header.stamp = ros::Time::now();
        path.header.frame_id = "map";
        pub_path.publish(path);
    }else if(display_type==DisplayPoses){
        poses.poses.push_back(pose_in->pose);
        poses.header.stamp = ros::Time::now();
        poses.header.frame_id = "map";
        pub_path.publish(poses);
    }
   
}

