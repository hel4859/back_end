//
// Created by hl on 18-1-22.
//

#ifndef PROJECT_OPTIMAL_FUNCTION_H
#define PROJECT_OPTIMAL_FUNCTION_H

#include <ceres/ceres.h>
#include <ceres/jet.h>
#include "SpaCostFunction.h"
#include <tf/transform_datatypes.h>
#include <tf/transform_broadcaster.h>
#include <nav_msgs/Odometry.h>
#include <thread>
#include <mutex>
#include <chrono>
//优化的类
class Optimal_Function
{
    ros::NodeHandle nh;
    ros::Subscriber imu_odom;
    ros::Subscriber laser_odom;
    ros::Subscriber fix_odom;
public:
    Optimal_Function();

    ~Optimal_Function();

    void imu_odom_callback(const nav_msgs::Odometry::ConstPtr &ImuOdomIn);
    void laser_odom_callback(const nav_msgs::Odometry::ConstPtr &LaserOdomIn);
    void fix_odom_callback(const nav_msgs::Odometry::ConstPtr &FixOdomIn);


    void OptimalSolve(const std::vector<Constraint> &constraints,
                      const std::vector<Constraint> &fix_constraints);


    void AddGlobalNode();

    void Local_Constraint();
    Node Interpolation (int id,std::vector<Node>odom,ros::Time time);


    //进程
    void AddImuNodeConstraintThread();
    void OptimalThread();
    void OptimizationPreprocess(int first_id,int second_id);


private:


    //id
    int node_id=0;
    int constraint_first_id=0;
    int fix_constraint_first_id=0;

    int trajectory_id_=0;
    int laser_odom_id=0;
    int solve_node_id=0;
    int solve_constraint_id=0;
    int solve_node_constraint_id=0;
    int solve_fix_constraint_id=0;

    int compare_node_id=0;
    int compare_constraint_id=0;

    int node_trajectory=0;
    int constraint_trajectory=0;
    int node_constraint_trajectory=0;
    int fix_constraint_trajectory=0;

    std::vector<Node> imu_odom_;
    std::vector<Node> fix_odom_;
    std::vector<Node> laser_odom_;
    std::vector<Constraint> constraint_;
    std::vector<Constraint> node_constraint_;
    std::vector<Constraint> fix_constraint_;
    std::vector<Opt_Node> nodes;


    std::vector<Node> local_node_;
    std::vector<Node> global_node_;
    std::vector<Node> constraint_node_;
    std::vector<Constraint_Node> fix_constraint_node_;
    std::vector<Node> optimal_node_;



    //线程定义
    pthread_t imu_thread_id_;
    pthread_t optimal_thread_id_;

    //线程锁
    pthread_mutex_t imu_mutex_;
    pthread_mutex_t laser_mutex_;
    pthread_mutex_t fix_mutex_;
    pthread_mutex_t node_mutex;
    pthread_mutex_t constraint_mutex;
    pthread_mutex_t fix_constraint_mutex;
    pthread_mutex_t node_constraint_mutex;





    //flag
    bool first_pose_flag=true;


    //优化结果
    std::vector<Node> opt_node_;


    std::ofstream opt_solution;
    std::ofstream fix_node;

    //优化前预处理坐标变换
    Eigen::Quaterniond first_rotation = Eigen::Quaterniond(1.0,0.0,0.0,0.0);
    Eigen::Quaterniond second_rotation = Eigen::Quaterniond(1.0,0.0,0.0,0.0);
    Eigen::Vector3d first_origin = Eigen::Vector3d (0.0,0.0,0.0);
    Eigen::Vector3d second_origin = Eigen::Vector3d (0.0,0.0,0.0);
};


#endif //PROJECT_OPTIMAL_FUNCTION_H
