//
// Created by hl on 18-2-27.
//
#include <ros/ros.h>
#include <pcl_conversions/pcl_conversions.h>
#include <pcl/point_cloud.h>
#include <pcl/point_types.h>
#include <pcl/common/transforms.h>
#include <sensor_msgs/PointCloud2.h>
typedef pcl::PointXYZ PointType;
ros::Publisher pointcloud_change;
void pointcloud_callback(const sensor_msgs::PointCloud2ConstPtr &laserCloud)
{
    Eigen::Affine3f transform_2 = Eigen::Affine3f::Identity();
    transform_2.translation() << 2.122, -0.015, 1.74;
    transform_2.rotate (Eigen::AngleAxisf (0.02618, Eigen::Vector3f::UnitX()));
    transform_2.rotate (Eigen::AngleAxisf (0.238166, Eigen::Vector3f::UnitY()));
    transform_2.rotate (Eigen::AngleAxisf (-0.04696, Eigen::Vector3f::UnitZ()));
    pcl::PointCloud<PointType>::Ptr transformed_cloud(new pcl::PointCloud<PointType>());
    pcl::PointCloud<PointType>::Ptr laserCloud1(new pcl::PointCloud<PointType>());
    pcl::fromROSMsg(*laserCloud, *laserCloud1);
    pcl::transformPointCloud (*laserCloud1, *transformed_cloud, transform_2);

    sensor_msgs::PointCloud2 pubLaserCloud;
    pcl::toROSMsg(*transformed_cloud, pubLaserCloud);
    pubLaserCloud.header.stamp = laserCloud->header.stamp;
    pubLaserCloud.header.frame_id = "velodyne";
    pointcloud_change.publish(pubLaserCloud);

}
int main(int argc, char** argv)
{
    ros::init(argc, argv, "change_pointcloud");
    ros::NodeHandle nh;
    ros::Subscriber pointcloud = nh.subscribe<sensor_msgs::PointCloud2>("/velodyne_points",10,pointcloud_callback);
    pointcloud_change = nh.advertise<sensor_msgs::PointCloud2>("/velodyne_points_change",10);
    ros::MultiThreadedSpinner spinner(16); // Use all threads
    spinner.spin(); // spin() will not return until the node has been shutdown
}

