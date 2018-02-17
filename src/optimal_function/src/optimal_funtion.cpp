//
// Created by hl on 18-1-22.
//
#include "optimal_function.h"
//--------------------------------------------初始化--------------------------------------------------------
//构造函数
Optimal_Function::Optimal_Function() {

    std::cout<<"Optimal_Function::Optimal_Function()"<<std::endl;

    //线程锁初始化
    imu_mutex_= PTHREAD_MUTEX_INITIALIZER;
    laser_mutex_=PTHREAD_MUTEX_INITIALIZER;
    fix_mutex_=PTHREAD_MUTEX_INITIALIZER;
    node_mutex=PTHREAD_MUTEX_INITIALIZER;
    constraint_mutex=PTHREAD_MUTEX_INITIALIZER;
    fix_constraint_mutex=PTHREAD_MUTEX_INITIALIZER;
    node_constraint_mutex=PTHREAD_MUTEX_INITIALIZER;

    fix_node.open ("/home/hl/google/src/loam_velodyne/txt/fix_node.txt");
    opt_solution.open ("/home/hl/google/src/loam_velodyne/txt/opt_solution.txt");
    //订阅惯导里程计的数据
    imu_odom=nh.subscribe("/dead_reconking_3d",100,&Optimal_Function::imu_odom_callback,this);

    //订阅SLAM的结果
    laser_odom=nh.subscribe("/aft_mapped_to_init",10,&Optimal_Function::laser_odom_callback,this);

    //GPS结果,间歇性gps值
    fix_odom=nh.subscribe("/gps_constraint",100,&Optimal_Function::fix_odom_callback,this);
    all_opt_odom = nh.advertise<nav_msgs::Odometry>("all_opt_odom", 10);
    //如果将线程定义在类中,需要将对应线程的函数进行类型转化
    typedef void* (*FUNC)(void*);//定义FUNC类型是一个指向函数的指针，该函数参数为void*，返回值为void*
    FUNC AddImuNodeConstraintThread = (FUNC)&Optimal_Function::AddImuNodeConstraintThread;//强制转换func()的类型
    FUNC OptimalThread = (FUNC)&Optimal_Function::OptimalThread;//强制转换func()的类型
    FUNC GlobalOptimalThread = (FUNC)&Optimal_Function::GlobalOptimalThread;//强制转换func()的类型

    //创造两个线程,一个用于约束创建,一个用于优化
    pthread_create(&imu_thread_id_,NULL, AddImuNodeConstraintThread ,this);
    pthread_create(&optimal_thread_id_,NULL, OptimalThread ,this);
    pthread_create(&optimal_thread_id_,NULL, GlobalOptimalThread ,this);


}

//---------------------------------------------结束及储存一些数据---------------------------------------------------------
//析构函数
Optimal_Function::~Optimal_Function() {

    std::cout<<"Optimal_Function::~Optimal_Function()"<<std::endl;

    for (auto node: nodes)
    {
        opt_solution<< std::fixed << std::setprecision(12)<<node.time_<<" "<<node.pose_translation_array_[0]<<" "
                    <<node.pose_translation_array_[1]<<" "<<node.pose_translation_array_[2]<<std::endl;
    }
    for (auto gps_node :fix_constraint_node_)
    {
        fix_node<< std::fixed << std::setprecision(12)<<gps_node.node_.time_<<" "<<gps_node.node_.pose_translation_[0]<<" "
                <<gps_node.node_.pose_translation_[1]<<" "<<gps_node.node_.pose_translation_[2]<<std::endl;
    }

}

//------------------------------------------需要用的一些函数---------------------------------------------------
//线性插值函数
Node Optimal_Function::Interpolation(int id,std::vector<Node> odom,ros::Time time) {

    const double duration=(odom[id].time_).toSec()-(odom[id-1].time_).toSec();
    const double factor = ((time).toSec()-(odom[id-1].time_).toSec())/duration;
    const Eigen::Vector3d origin =odom[id-1].pose_translation_ +
                                  factor * (odom[id].pose_translation_ - odom[id-1].pose_translation_) ;
    const Eigen::Quaterniond rotation =
            Eigen::Quaterniond(odom[id-1].pose_rotation_)
                    .slerp(factor, Eigen::Quaterniond(odom[id].pose_rotation_));
    return Node(odom[id].trajectory_id_,time,origin,rotation);
}

//四元数到旋转矩阵的变换
inline Eigen::Matrix4f GetMatrixLH(double x,double y,double z,double w)
{
    Eigen::Matrix4f ret;
    double xx = x*x;
    double yy = y*y;
    double zz = z*z;
    double xy = x*y;
    double wz = w*z;
    double wy = w*y;
    double xz = x*z;
    double yz = y*z;
    double wx = w*x;

    ret (0,0) = 1.0f-2*(yy+zz);
    ret(0,1)= 2*(xy-wz);
    ret(0,2) = 2*(wy+xz);
    ret(0,3) = 0.0f;

    ret(1,0)= 2*(xy+wz);
    ret(1,1) = 1.0f-2*(xx+zz);
    ret(1,2) = 2*(yz-wx);
    ret(1,3)= 0.0f;

    ret(2,0) = 2*(xz-wy);
    ret(2,1) = 2*(yz+wx);
    ret(2,2) = 1.0f-2*(xx+yy);
    ret(2,3) = 0.0f;

    ret(3,0) = 0.0f;
    ret(3,1) = 0.0f;
    ret(3,2) = 0.0f;
    ret(3,3)= 1.0f;

    return ret;
};
void Optimal_Function::OptimizationPreprocess(int first_id, int second_id) {
    std::vector<Node> temp_node;
    for(int i=first_id;i!=second_id+1;i++)
    {
        temp_node.push_back(Node(nodes[i].trajectory_id_,nodes[i].time_,
                                 Eigen::Vector3d(nodes[i].pose_translation_array_[0],
                                                 nodes[i].pose_translation_array_[1],
                                                 nodes[i].pose_translation_array_[2]),
                                 Eigen::Quaterniond(nodes[i].pose_rotation_array_[3],
                                                    nodes[i].pose_rotation_array_[0],
                                                    nodes[i].pose_rotation_array_[1],
                                                    nodes[i].pose_rotation_array_[2])));
    }
    for(auto & node_:temp_node)
    {
      // std::cout<<"node_.pose_translation:"<<node_.pose_translation_<<std::endl;
        node_.pose_rotation_ = second_rotation * first_rotation.inverse() *node_.pose_rotation_ ;
        node_.pose_translation_= node_.pose_translation_ + node_.pose_rotation_*
                                         ( first_rotation.inverse() * (second_origin - first_origin));
      //  node_.pose_translation_=  second_rotation *first_rotation.inverse()* (node_.pose_translation_+(second_origin - first_origin));
      //  node_.pose_translation_=Eigen::Vector3d(111,111,111);
      //  std::cout<<"node_.pose_translation:"<<node_.pose_translation_<<std::endl;
    }
    for(int i=first_id;i!=second_id+1;i++)
    {
       // std::cout<<"pose_translation_array_:"<<nodes[i].pose_translation_array_[2]<<std::endl;
        nodes[i].pose_rotation_array_={temp_node[i-first_id].pose_rotation_.x(),
                                                                    temp_node[i-first_id].pose_rotation_.y(),
                                                                    temp_node[i-first_id].pose_rotation_.z(),
                                                                    temp_node[i-first_id].pose_rotation_.w()};
        nodes[i].pose_translation_array_={temp_node[i-first_id].pose_translation_[0],
                                                                       temp_node[i-first_id].pose_translation_[1],
                                                                       temp_node[i-first_id].pose_translation_[2]};
       // std::cout<<"pose_translation_array_:"<<nodes[i].pose_translation_array_[2]<<std::endl;
    }
}
//---------------------------------------------数据回调------------------------------------------------------

//惯导及里程计数据
void Optimal_Function::imu_odom_callback(const nav_msgs::Odometry::ConstPtr &ImuOdomIn) {

    pthread_mutex_lock(&imu_mutex_);

    Node imu_odom;
    imu_odom.trajectory_id_=0;
    imu_odom.time_=ImuOdomIn->header.stamp;
    imu_odom.pose_translation_ = Eigen::Vector3d(ImuOdomIn->pose.pose.position.x,
                                                 ImuOdomIn->pose.pose.position.y,
                                                 ImuOdomIn->pose.pose.position.z);
    imu_odom.pose_rotation_ = Eigen::Quaterniond(ImuOdomIn->pose.pose.orientation.w,
                                                 ImuOdomIn->pose.pose.orientation.x,
                                                 ImuOdomIn->pose.pose.orientation.y,
                                                 ImuOdomIn->pose.pose.orientation.z);
    Optimal_Function::imu_odom_.push_back(imu_odom);

    pthread_mutex_unlock(&imu_mutex_);
    //  std::cout<<"imu_odom_:"<<Optimal_Function::imu_odom_.size()<<std::endl;
}

//laser odom数据
void Optimal_Function::laser_odom_callback(const nav_msgs::Odometry::ConstPtr &LaserOdomIn) {

    pthread_mutex_lock(&laser_mutex_);
    Node laser_odom;
    laser_odom.trajectory_id_=0;
    laser_odom.time_=LaserOdomIn->header.stamp;
    laser_odom.pose_translation_ = Eigen::Vector3d(LaserOdomIn->pose.pose.position.x,
                                                   LaserOdomIn->pose.pose.position.y,
                                                   LaserOdomIn->pose.pose.position.z);
    laser_odom.pose_rotation_ = Eigen::Quaterniond(LaserOdomIn->pose.pose.orientation.w,
                                                   LaserOdomIn->pose.pose.orientation.x,
                                                   LaserOdomIn->pose.pose.orientation.y,
                                                   LaserOdomIn->pose.pose.orientation.z);
    Optimal_Function::laser_odom_.push_back(laser_odom);
    pthread_mutex_unlock(&laser_mutex_);
}

//gps odom 数据
void Optimal_Function::fix_odom_callback(const nav_msgs::Odometry::ConstPtr &FixOdomIn) {
    pthread_mutex_lock(&fix_mutex_);
    Node fix_odom;
    fix_odom.trajectory_id_=0;
    fix_odom.time_=FixOdomIn->header.stamp;
    fix_odom.pose_translation_ = Eigen::Vector3d(FixOdomIn->pose.pose.position.x,
                                                 FixOdomIn->pose.pose.position.y,
                                                 FixOdomIn->pose.pose.position.z);
    fix_odom.pose_rotation_ = Eigen::Quaterniond(FixOdomIn->pose.pose.orientation.w,
                                                 FixOdomIn->pose.pose.orientation.x,
                                                 FixOdomIn->pose.pose.orientation.y,
                                                 FixOdomIn->pose.pose.orientation.z);
    Optimal_Function::fix_odom_.push_back(fix_odom);
    pthread_mutex_unlock(&fix_mutex_);
    // std::cout<<"fix_odom:"<<Optimal_Function::fix_odom_.size()<<std::endl;

}

//-------------------------------------------位姿图构建-----------------------------------------------------
//获得位姿图的全局位姿点
void Optimal_Function::AddGlobalNode() {


    if (Optimal_Function::first_pose_flag) {

        pthread_mutex_lock(&laser_mutex_);
        pthread_mutex_lock(&imu_mutex_);
        pthread_mutex_lock(&fix_mutex_);
        if( Optimal_Function::laser_odom_[0].time_<= std::max(Optimal_Function::imu_odom_[0].time_,
                                                              Optimal_Function::laser_odom_[0].time_))
        {
            for (int i=0;i!=Optimal_Function::laser_odom_.size();i++) {
                if(Optimal_Function::laser_odom_[i].time_>=std::max(Optimal_Function::imu_odom_[0].time_,
                                                                    Optimal_Function::laser_odom_[0].time_)) {
                    Optimal_Function::global_node_.push_back(Node(Optimal_Function::laser_odom_[i].trajectory_id_,
                                                                  Optimal_Function::laser_odom_[i].time_,
                                                                  Optimal_Function::laser_odom_[i].pose_translation_,
                                                                  Optimal_Function::laser_odom_[i].pose_rotation_));
                    Optimal_Function::laser_odom_id=i;
                    Optimal_Function::first_pose_flag=false;
                    pthread_mutex_unlock(&laser_mutex_);
                    pthread_mutex_unlock(&imu_mutex_);
                    pthread_mutex_unlock(&fix_mutex_);
                    return;
                }
            }
        }
        else
        {
            Optimal_Function::global_node_.push_back(Node(Optimal_Function::laser_odom_[0].trajectory_id_,
                                                          Optimal_Function:: laser_odom_[0].time_,
                                                          Optimal_Function::laser_odom_[0].pose_translation_,
                                                          Optimal_Function::laser_odom_[0].pose_rotation_));
            Optimal_Function::laser_odom_id=0;
            first_pose_flag=false;
        }
        pthread_mutex_unlock(&laser_mutex_);
        pthread_mutex_unlock(&imu_mutex_);
        pthread_mutex_unlock(&fix_mutex_);
    }
    else {
        pthread_mutex_lock(&laser_mutex_);
        if (Optimal_Function::laser_odom_.size()-1>Optimal_Function::laser_odom_id) {
            for (int i=Optimal_Function::laser_odom_id+1;i!=Optimal_Function::laser_odom_.size();i++)
            {
//                std::cout<<"laser_odom_id:"<<Optimal_Function::laser_odom_id+1<<std::endl;
//                std::cout<<"Optimal_Function::laser_odom_.size-1:"<<Optimal_Function::laser_odom_.size()-1<<std::endl;
                Optimal_Function::global_node_.push_back(Node(Optimal_Function::laser_odom_[i].trajectory_id_,
                                                              Optimal_Function::laser_odom_[i].time_,
                                                              Optimal_Function::laser_odom_[i].pose_translation_,
                                                              Optimal_Function::laser_odom_[i].pose_rotation_));
            }
            Optimal_Function::laser_odom_id=Optimal_Function::laser_odom_.size()-1;

        }
        pthread_mutex_unlock(&laser_mutex_);
    }
}

//获得位姿图的局部约束
void Optimal_Function::Local_Constraint() {

    if(global_node_.size()-1==node_trajectory)
    {
    //---------------------------------------------------------------节点--------------------------------------------------------------------

        Optimal_Function::global_node_[global_node_.size()-1].trajectory_id_=Optimal_Function::trajectory_id_;
        //不直接用global_node的原因是会对nodes进行修改和处理,防止约束添加的线程和优化线程冲突
        Optimal_Function::nodes.push_back(Opt_Node(global_node_.size()-1,Optimal_Function::global_node_[global_node_.size()-1].trajectory_id_,
                                                   Optimal_Function::global_node_[global_node_.size()-1].time_,
                                                   std::array<double, 3>{{Optimal_Function::global_node_[global_node_.size()-1].pose_translation_[0],
                                                                                 Optimal_Function::global_node_[global_node_.size()-1].pose_translation_[1],
                                                                                 Optimal_Function::global_node_[global_node_.size()-1].pose_translation_[2]}},
                                                   std::array<double, 4>{{Optimal_Function::global_node_[global_node_.size()-1].pose_rotation_.x(),
                                                                                 Optimal_Function::global_node_[global_node_.size()-1].pose_rotation_.y(),
                                                                                 Optimal_Function::global_node_[global_node_.size()-1].pose_rotation_.z(),
                                                                                 Optimal_Function::global_node_[global_node_.size()-1].pose_rotation_.w()}}));
        node_trajectory=int(global_node_.size());
       // std::cout<<"globe_node:"<<global_node_.size()<<std::endl;
        std::cout<<"nodes:"<<nodes.size()<<std::endl;

    //--------------------------------------------------------------------节点本身的约束------------------------------------------
        if (Optimal_Function::nodes.size()>=2)
        {
            //对应的约束
            Optimal_Function::node_constraint_.push_back(
                    Constraint(global_node_.size()-1-1,global_node_.size()-1,Optimal_Function::global_node_[global_node_.size()-1].trajectory_id_,
                               Optimal_Function::global_node_[global_node_.size()-1-1].pose_rotation_.inverse()*
                               (Optimal_Function::global_node_[global_node_.size()-1].pose_translation_
                                -Optimal_Function::global_node_[global_node_.size()-1-1].pose_translation_),
                               (Optimal_Function::global_node_[global_node_.size()-1-1].pose_rotation_.inverse()*
                                Optimal_Function::global_node_[global_node_.size()-1].pose_rotation_)));

        }
        //std::cout<<"node_constraint:"<<node_constraint_.size()<<std::endl;
    //-------------------------------------------------------惯导里程计约束-------------------------------------------------------
        pthread_mutex_lock(&constraint_mutex);
        pthread_mutex_lock(&imu_mutex_);
        for(int p=Optimal_Function::constraint_first_id;p!=Optimal_Function::imu_odom_.size();p++)
        {
            Optimal_Function::imu_odom_[p].trajectory_id_=Optimal_Function::trajectory_id_;
            if(Optimal_Function::imu_odom_[p].time_>=Optimal_Function::global_node_[global_node_.size()-1].time_)
            {
                //约束两端对应的位置值,这个并不重要,重要的是通过坐标变换构建约束
                Optimal_Function::constraint_node_.push_back(
                        Optimal_Function::Interpolation(p,Optimal_Function::imu_odom_,Optimal_Function::global_node_[global_node_.size()-1].time_)) ;
                //保证有两个约束节点才能构建第一个约束
                if (Optimal_Function::constraint_node_.size()>=2)
                {
                    //对应的约束
                    Optimal_Function::constraint_.push_back(
                            Constraint(global_node_.size()-1-1,global_node_.size()-1,Optimal_Function::constraint_node_[global_node_.size()-1].trajectory_id_,
                                       Optimal_Function::constraint_node_[global_node_.size()-1-1].pose_rotation_.inverse()*
                                       (Optimal_Function::constraint_node_[global_node_.size()-1].pose_translation_
                                        -Optimal_Function::constraint_node_[global_node_.size()-1-1].pose_translation_),
                                       (Optimal_Function::constraint_node_[global_node_.size()-1-1].pose_rotation_.inverse()*
                                        Optimal_Function::constraint_node_[global_node_.size()-1].pose_rotation_)));
                }
                Optimal_Function::constraint_first_id=p;
                break;
            }
        }
       // std::cout<<"constraint:"<<constraint_.size()<<std::endl;
        pthread_mutex_unlock(&imu_mutex_);
        pthread_mutex_unlock(&constraint_mutex);

    //----------------------------------------------------------gps约束--------------------------------------------------
        pthread_mutex_lock(&fix_constraint_mutex);
        pthread_mutex_lock(&fix_mutex_);
        for(int p=Optimal_Function::fix_constraint_first_id;p!=Optimal_Function::fix_odom_.size();p++)
        {
            Optimal_Function::fix_odom_[p].trajectory_id_=Optimal_Function::trajectory_id_;
            if(Optimal_Function::fix_odom_[p].time_>=nodes[global_node_.size()-1].time_
               && (Optimal_Function::fix_odom_[p].time_.toSec()-Optimal_Function::fix_odom_[p-1].time_.toSec())<0.1)
            {
                Optimal_Function::fix_constraint_node_.push_back(
                        Constraint_Node(global_node_.size()-1,Optimal_Function::Interpolation(p,Optimal_Function::fix_odom_,Optimal_Function::nodes[global_node_.size()-1].time_))) ;
                if (Optimal_Function::fix_constraint_node_.size()>=2) {
                    Optimal_Function::fix_constraint_.push_back(
                            Constraint(fix_constraint_node_[fix_constraint_node_.size()-2].node_id_,
                                       fix_constraint_node_[fix_constraint_node_.size()-1].node_id_,
                                       Optimal_Function::fix_constraint_node_[fix_constraint_node_.size()-1].node_.trajectory_id_,
                                       Optimal_Function::fix_constraint_node_[fix_constraint_node_.size()-2].node_.pose_rotation_.inverse() *
                                       (Optimal_Function::fix_constraint_node_[fix_constraint_node_.size()-1].node_.pose_translation_
                                        - Optimal_Function::fix_constraint_node_[fix_constraint_node_.size()-2].node_.pose_translation_),
                                       (Optimal_Function::fix_constraint_node_[fix_constraint_node_.size()-2].node_.pose_rotation_.inverse() *
                                        Optimal_Function::fix_constraint_node_[fix_constraint_node_.size()-1].node_.pose_rotation_)));
                }
                Optimal_Function::fix_constraint_first_id=p;
                break;
            }
            else {
                if(fix_odom_[p].time_>=nodes[global_node_.size()-1].time_){
                 //   std::cout<<"dfix_odom_time_"<<(fix_odom_[p].time_.toSec()-fix_odom_[p-1].time_.toSec())
                      //       <<std::endl;
                }
            }
        }
       // std::cout<<"fix_constraint:"<<fix_constraint_.size()<<std::endl;
        pthread_mutex_unlock(&fix_mutex_);
        pthread_mutex_unlock(&fix_constraint_mutex);

           // }
        int temp=30;
        if(Optimal_Function::global_node_.size()>=((Optimal_Function::trajectory_id_+1)*temp) ) {
            Optimal_Function::trajectory_id_++;
         //   std::cout<<"trajectory_id:"<<trajectory_id_<<std::endl;
        }
    }
}

//位姿图构建线程
void Optimal_Function::AddImuNodeConstraintThread() {

    std::cout<<"AddImuNodeConstraintThread"<<std::endl;

    while(ros::ok())
    {
        if(Optimal_Function::imu_odom_.size()>0 && Optimal_Function::laser_odom_.size()>0)
        {
            pthread_mutex_lock(&node_mutex);
            Optimal_Function::AddGlobalNode();
            Optimal_Function::Local_Constraint();
            pthread_mutex_unlock(&node_mutex);
            //理论上小于10000
            usleep(500);
        }
    }
}


//--------------------------------------------约束求解-------------------------------------------------------
//求解优化
void Optimal_Function::OptimalSolve(const std::vector<Constraint> &constraints,
                                    const std::vector<Constraint> &fix_constraints) {

    ceres::Problem problem;
    ceres::LocalParameterization* quaternion_local_parameterization =
            new ceres::EigenQuaternionParameterization;
    bool first_flag=true;
    //  std::cout<<"constraints:"<<constraints.size()<<std::endl;

    first_rotation=Eigen::Quaterniond(nodes[fix_constraints[fix_constraints.size()-1].second_id_].pose_rotation_array_[3],
                                      nodes[fix_constraints[fix_constraints.size()-1].second_id_].pose_rotation_array_[0],
                                      nodes[fix_constraints[fix_constraints.size()-1].second_id_].pose_rotation_array_[1],
                                      nodes[fix_constraints[fix_constraints.size()-1].second_id_].pose_rotation_array_[2]);

  //  std::cout<<"first_rotation:"<<first_rotation<<std::endl;

    first_origin=Eigen::Vector3d(nodes[fix_constraints[fix_constraints.size()-1].second_id_].pose_translation_array_[0],
                                 nodes[fix_constraints[fix_constraints.size()-1].second_id_].pose_translation_array_[1],
                                 nodes[fix_constraints[fix_constraints.size()-1].second_id_].pose_translation_array_[2]);

  //  std::cout<<"first_origin:"<<first_origin<<std::endl;

    if(fix_constraints.size()!=0){
        //    std::cout<<"fix_constraint_temp:"<<fix_constraints.size()<<std::endl;

        //std::cout<<"fix_constraints[0].first_id:"<<fix_constraints[0].first_id_<<std::endl;
//        if(fix_constraints[0].first_id_+1<fix_constraints[0].second_id_)
//        {
//            if(fix_constraints[0].first_id_<constraints[0].first_id_)
//            {
//                for(int i=fix_constraints[0].first_id_;i!=constraints[0].first_id_;i++)
//                {
////                    if(i==fix_constraints[0].first_id_)
////                    {
////                        std::cout<<Optimal_Function::constraint_[i].first_id_;
////                    }
////                    std::cout <<"f-c"<<Optimal_Function::constraint_[i].second_id_;
////                    if(i==constraints[0].first_id_-1)
////                    {
////                        std::cout<< std::endl;
////                    }
//                    Constraint_Pose pose;
//                    pose.rotation_weight=15.0;
//                    pose.translation_weight=15.0;
//                    pose.rotation= Eigen::Vector4d(Optimal_Function::constraint_[i].pose_rotation_.w(),
//                                                   Optimal_Function::constraint_[i].pose_rotation_.x(),
//                                                   Optimal_Function::constraint_[i].pose_rotation_.y(),
//                                                   Optimal_Function::constraint_[i].pose_rotation_.z());
//                    pose.translation=Eigen::Vector3d(Optimal_Function::constraint_[i].pose_translation_);
//                    //  std::cout<<"nodes:"<<nodes.size()<<std::endl;
//
//                    problem.AddParameterBlock(nodes[Optimal_Function::constraint_[i].first_id_].pose_rotation_array_.data(),4,quaternion_local_parameterization);
//                    problem.AddParameterBlock(nodes[Optimal_Function::constraint_[i].first_id_].pose_translation_array_.data(),3);
//                    problem.AddParameterBlock(nodes[Optimal_Function::constraint_[i].second_id_].pose_rotation_array_.data(),4,quaternion_local_parameterization);
//                    problem.AddParameterBlock(nodes[Optimal_Function::constraint_[i].second_id_].pose_translation_array_.data(),3);
////                    if (first_flag)
////                    {
////                        problem.SetParameterBlockConstant(nodes[Optimal_Function::constraint_[i].first_id_].pose_rotation_array_.data());
////                        problem.SetParameterBlockConstant(nodes[Optimal_Function::constraint_[i].first_id_].pose_translation_array_.data());
////                        first_flag=false;
////                    }
//                    problem.AddResidualBlock(
//                            SpaCostFunction::CreateAutoDiffCostFunction(pose),
//                            nullptr /* loss function */,
//                            nodes[Optimal_Function::constraint_[i].first_id_].pose_rotation_array_.data(),
//                            nodes[Optimal_Function::constraint_[i].first_id_].pose_translation_array_.data(),
//                            nodes[Optimal_Function::constraint_[i].second_id_].pose_rotation_array_.data(),
//                            nodes[Optimal_Function::constraint_[i].second_id_].pose_translation_array_.data());
//
//
//                }
//            }
//        }
        for(const Constraint& fix_constraint : fix_constraints)
        {
            //    std::cout<<fix_constraint.first_id_<<"f-f"<<fix_constraint.second_id_<<std::endl;
            Constraint_Pose pose;
            pose.translation_weight=400.0;
            pose.rotation_weight=500.0;
            pose.rotation= Eigen::Vector4d(fix_constraint.pose_rotation_.w(),
                                           fix_constraint.pose_rotation_.x(),
                                           fix_constraint.pose_rotation_.y(),
                                           fix_constraint.pose_rotation_.z());
            pose.translation=Eigen::Vector3d(fix_constraint.pose_translation_);
            //  std::cout<<"nodes:"<<nodes.size()<<std::endl;

        //    std::cout<<"dd"<<std::endl;
            problem.AddParameterBlock(nodes[fix_constraint.first_id_].pose_rotation_array_.data(),4,quaternion_local_parameterization);
            problem.AddParameterBlock(nodes[fix_constraint.first_id_].pose_translation_array_.data(),3);
            problem.AddParameterBlock(nodes[fix_constraint.second_id_].pose_rotation_array_.data(),4,quaternion_local_parameterization);
            problem.AddParameterBlock(nodes[fix_constraint.second_id_].pose_translation_array_.data(),3);

        //    std::cout<<"dddd"<<std::endl;

//            if (first_flag)
//            {
//                problem.SetParameterBlockConstant(nodes[fix_constraint.first_id_].pose_rotation_array_.data());
//                problem.SetParameterBlockConstant(nodes[fix_constraint.first_id_].pose_translation_array_.data());
//                first_flag=false;
//            }
            if(fix_constraint.first_id_==0 )
            {
                pose.rotation_weight=10000000000000000.0;
                pose.translation_weight=10000000000000000.0;

            }
            problem.AddResidualBlock(
                    SpaCostFunction::CreateAutoDiffCostFunction(pose),
                    nullptr/* new ceres::CauchyLoss(1) /* loss function */,
                    nodes[fix_constraint.first_id_].pose_rotation_array_.data(),
                    nodes[fix_constraint.first_id_].pose_translation_array_.data(),
                    nodes[fix_constraint.second_id_].pose_rotation_array_.data(),
                    nodes[fix_constraint.second_id_].pose_translation_array_.data());


        }
        //Optimal_Function::fix_constraint_temp_.clear();

    }


    bool constraint_flag=true;

    // std::cout<<"constraints:"<<constraints.size()<<std::endl;
//    for (const Constraint& constraint : constraints) {
//        //    std::cout<<"test:"<<constraint.trajectory_id_<<std::endl;
////        if(constraint_flag)
////        {
////            std::cout<<constraint.first_id_;
////            constraint_flag=false;
////        }
//
//
//        Constraint_Pose pose;
//        pose.translation_weight=40.0;
//        pose.rotation_weight=50.0;
//        pose.rotation= Eigen::Vector4d(constraint.pose_rotation_.w(),
//                                       constraint.pose_rotation_.x(),
//                                       constraint.pose_rotation_.y(),
//                                       constraint.pose_rotation_.z());
//        pose.translation=Eigen::Vector3d(constraint.pose_translation_);
//        // std::cout<<"nodes:"<<nodes.size()<<std::endl;
//        problem.AddParameterBlock(nodes[constraint.first_id_].pose_rotation_array_.data(),4);
//        problem.AddParameterBlock(nodes[constraint.first_id_].pose_translation_array_.data(),3);
//        problem.AddParameterBlock(nodes[constraint.second_id_].pose_rotation_array_.data(),4);
//        problem.AddParameterBlock(nodes[constraint.second_id_].pose_translation_array_.data(),3);
//
////        if (first_flag)
////        {
////            problem.SetParameterBlockConstant(nodes[constraint.first_id_].pose_rotation_array_.data());
////            problem.SetParameterBlockConstant(nodes[constraint.first_id_].pose_translation_array_.data());
////            first_flag=false;
////        }
//        problem.AddResidualBlock(
//                SpaCostFunction::CreateAutoDiffCostFunction(pose),
//                nullptr /* loss function */,
//                nodes[constraint.first_id_].pose_rotation_array_.data(),
//                nodes[constraint.first_id_].pose_translation_array_.data(),
//                nodes[constraint.second_id_].pose_rotation_array_.data(),
//                nodes[constraint.second_id_].pose_translation_array_.data());
//
//    }
    if(fix_constraints.size()>50)
    {
        std::cout<<"constant:"<<fix_constraints.size()-50<<std::endl;
        for(int i=0;i!=fix_constraints.size()-50;i++)
        {
            problem.SetParameterBlockConstant(nodes[fix_constraints[i].first_id_].pose_rotation_array_.data());
            problem.SetParameterBlockConstant(nodes[fix_constraints[i].first_id_].pose_translation_array_.data());
        }
    }
    problem.SetParameterBlockConstant(nodes[0].pose_rotation_array_.data());
    problem.SetParameterBlockConstant(nodes[0].pose_translation_array_.data());

    ceres::Solver::Options options;
    options.linear_solver_type=ceres::DENSE_QR;
    //options.minimizer_progress_to_stdout=true;
    options.num_threads=8;
    options.max_num_iterations=100;
    //options.max_solver_time_in_seconds

    ceres::Solver::Summary summary;
    std::chrono::steady_clock::time_point t1=std::chrono::steady_clock::now();
    ceres::Solve(options,&problem,&summary);

    second_rotation=Eigen::Quaterniond(nodes[fix_constraints[fix_constraints.size()-1].second_id_].pose_rotation_array_[3],
                                      nodes[fix_constraints[fix_constraints.size()-1].second_id_].pose_rotation_array_[0],
                                      nodes[fix_constraints[fix_constraints.size()-1].second_id_].pose_rotation_array_[1],
                                      nodes[fix_constraints[fix_constraints.size()-1].second_id_].pose_rotation_array_[2]);

   // std::cout<<"second_rotation:"<<second_rotation<<std::endl;

    second_origin=Eigen::Vector3d(nodes[fix_constraints[fix_constraints.size()-1].second_id_].pose_translation_array_[0],
                                 nodes[fix_constraints[fix_constraints.size()-1].second_id_].pose_translation_array_[1],
                                 nodes[fix_constraints[fix_constraints.size()-1].second_id_].pose_translation_array_[2]);

   // std::cout<<"second_origin:"<<second_origin<<std::endl;

    std::chrono::steady_clock::time_point t2=std::chrono::steady_clock::now();
    std::chrono::duration<double> time_used = std::chrono::duration_cast<std::chrono::duration<double>>(t2-t1);
    std::cout<<"solve time cost= "<<time_used.count()<<"seconds."<<std::endl;
    std::cout<<summary.BriefReport() <<std::endl;
    global_opt_flag=!global_opt_flag;
    // std::cout<<"estimated a,b,c = ";
    //   for ( auto node :nodes ) std::cout<<node<<" ";
    //  std::cout<<std::endl;

}

//优化线程
void Optimal_Function::OptimalThread() {

    std::cout<<"OptimalThread"<<std::endl;

    while(ros::ok())
    {
        pthread_mutex_lock(&node_mutex);
        if (Optimal_Function::constraint_.size()>0 &&
            Optimal_Function::nodes.size()>0)
        {
            //--------------------------------------------imu临时约束------------------------------------------------
            pthread_mutex_lock(&constraint_mutex);
            if((constraint_.size()-constraint_trajectory)>0)
            {
                for (int j=constraint_trajectory;j!=constraint_.size();j++)
                {
                    if(constraint_[j].trajectory_id_==solve_constraint_id)
                    {


                    }
                    else
                    {
                        solve_constraint_id++;
                        constraints_temp.clear();

                    }
                  //  solve_fix_constraint_id=solve_constraint_id;
                    constraint_trajectory=j+1;
                    constraints_temp.push_back(constraint_[j]);
                    std::cout<<"constraints_temp:"<<constraints_temp.size()<<std::endl;
                }
            }

            pthread_mutex_unlock(&constraint_mutex);

            //--------------------------------------------------节点临时约束----------------------------------------
            pthread_mutex_lock(&node_constraint_mutex);
            if((node_constraint_.size()-node_constraint_trajectory)>0)
            {
                for (int j=node_constraint_trajectory;j!=node_constraint_.size();j++)
                {
                    if(node_constraint_[j].trajectory_id_==solve_node_constraint_id)
                    {

                    }
                    else
                    {
                        solve_node_constraint_id++;
                        node_constraints_temp.clear();
                    }
                    node_constraints_temp.push_back(node_constraint_[j]);
                    std::cout<<"node_constraints_temp:"<<node_constraints_temp.size()<<std::endl;
                    node_constraint_trajectory=j+1;
                   // solve_fix_constraint_id=solve_node_constraint_id;
                }
            }

            pthread_mutex_unlock(&node_constraint_mutex);

            //--------------------------------gps临时约束----------------------------------------------------
            pthread_mutex_lock(&fix_constraint_mutex);
            if((fix_constraint_.size()-fix_constraint_trajectory)>0) {
               // if (fix_constraint_[fix_constraint_.size() - 1].trajectory_id_ >= solve_fix_constraint_id) {
                    for (int j = fix_constraint_trajectory; j != fix_constraint_.size(); j++) {
                    //    std::cout<<"fix_constraint_trajectory_id_:"<<fix_constraint_[j].trajectory_id_<<std::endl;
                        if (fix_constraint_[j].trajectory_id_ == solve_fix_constraint_id) {

                        }
                        else {
                            solve_fix_constraint_id++;
                            fix_constraints_temp.clear();
                        }
                        fix_constraints_temp.push_back(fix_constraint_[j]);
                        fix_constraint_trajectory=j+1;
                        std::cout<<"fix_constraints_temp:"<<fix_constraints_temp.size()<<std::endl;
                        fix_constraint_flag=true;
               //     }

                }
            }

            pthread_mutex_unlock(&fix_constraint_mutex);
            if(fix_constraint_flag)
            {
                //0->now_one
                fix_constraints_temp.push_back(Constraint(fix_constraint_[0].first_id_,
                                                          fix_constraints_temp[fix_constraints_temp.size()-1].second_id_,
                                                          Optimal_Function::fix_constraint_node_[fix_constraints_temp[fix_constraints_temp.size()-1].second_id_].node_.trajectory_id_,
                                                          Optimal_Function::fix_constraint_node_[fix_constraint_[0].first_id_].node_.pose_rotation_.inverse() *
                                                          (Optimal_Function::fix_constraint_node_[fix_constraints_temp[fix_constraints_temp.size()-1].second_id_].node_.pose_translation_
                                                           - Optimal_Function::fix_constraint_node_[fix_constraint_[0].first_id_].node_.pose_translation_),
                                                          (Optimal_Function::fix_constraint_node_[fix_constraint_[0].first_id_].node_.pose_rotation_.inverse() *
                                                           Optimal_Function::fix_constraint_node_[fix_constraints_temp[fix_constraints_temp.size()-1].second_id_].node_.pose_rotation_)));
//0 ->
                fix_constraints_temp.push_back(Constraint(fix_constraint_[0].first_id_,
                                                          fix_constraints_temp[0].second_id_,
                                                          Optimal_Function::fix_constraint_node_[fix_constraints_temp[0].second_id_].node_.trajectory_id_,
                                                          Optimal_Function::fix_constraint_node_[fix_constraint_[0].first_id_].node_.pose_rotation_.inverse() *
                                                          ( Optimal_Function::fix_constraint_node_[fix_constraints_temp[0].second_id_].node_.pose_translation_
                                                            - Optimal_Function::fix_constraint_node_[fix_constraint_[0].first_id_].node_.pose_translation_),
                                                          (Optimal_Function::fix_constraint_node_[fix_constraint_[0].first_id_].node_.pose_rotation_.inverse() *
                                                           Optimal_Function::fix_constraint_node_[fix_constraints_temp[0].second_id_].node_.pose_rotation_)));
                fix_constraints_temp.push_back(Constraint(fix_constraints_temp[0].first_id_,
                                                          fix_constraints_temp[fix_constraints_temp.size()-1].second_id_,
                                                          Optimal_Function::fix_constraint_node_[fix_constraints_temp[fix_constraints_temp.size()-1].second_id_].node_.trajectory_id_,
                                                          Optimal_Function::fix_constraint_node_[fix_constraints_temp[0].first_id_].node_.pose_rotation_.inverse() *
                                                          (Optimal_Function::fix_constraint_node_[fix_constraints_temp[fix_constraints_temp.size()-1].second_id_].node_.pose_translation_
                                                           - Optimal_Function::fix_constraint_node_[fix_constraints_temp[0].first_id_].node_.pose_translation_),
                                                          (Optimal_Function::fix_constraint_node_[fix_constraints_temp[0].first_id_].node_.pose_rotation_.inverse() *
                                                           Optimal_Function::fix_constraint_node_[fix_constraints_temp[fix_constraints_temp.size()-1].second_id_].node_.pose_rotation_)));
                //  Optimal_Function::compare_constraint_id++;
//           std::cout<<"first_id:"<<fix_constraint_[0].first_id_<<std::endl;
//           std::cout<<"second_id:"<<fix_constraints_temp[fix_constraints_temp.size()-1].second_id_<<std::endl;
                // OptimizationPreprocess(fix_constraints_temp[0].first_id_,
                //                        fix_constraints_temp[fix_constraints_temp.size()-1].second_id_);

                Optimal_Function::OptimalSolve(node_constraints_temp,fix_constraints_temp);
                fix_constraints_temp.pop_back();
                fix_constraints_temp.pop_back();
                fix_constraints_temp.pop_back();
                fix_constraint_flag=false;
            }

        }
        pthread_mutex_unlock(&node_mutex);
        usleep(500);
    }
}

void Optimal_Function::GlobalOptimalThread()
{
    std::cout<<"GlobalOptimalThread"<<std::endl;

    while(ros::ok())
    {
        if(global_opt_flag)
        {
            Optimal_Function::OptimalSolve(constraint_,fix_constraint_);
            nav_msgs::Odometry odomAllOpt;
            odomAllOpt.header.stamp=nodes[nodes.size()-1].time_;
            odomAllOpt.header.frame_id = "/camera_init";
            odomAllOpt.child_frame_id = "/all_opt_odom";
            odomAllOpt.pose.pose.orientation.x = nodes[nodes.size()-1].pose_rotation_array_[0];
            odomAllOpt.pose.pose.orientation.y = nodes[nodes.size()-1].pose_rotation_array_[1];
            odomAllOpt.pose.pose.orientation.z = nodes[nodes.size()-1].pose_rotation_array_[2];
            odomAllOpt.pose.pose.orientation.w = nodes[nodes.size()-1].pose_rotation_array_[3];
            odomAllOpt.pose.pose.position.x = nodes[nodes.size()-1].pose_translation_array_[0];
            odomAllOpt.pose.pose.position.y = nodes[nodes.size()-1].pose_translation_array_[1];
            odomAllOpt.pose.pose.position.z = nodes[nodes.size()-1].pose_translation_array_[2];
            std::cout<<"opt_solution_Z:"<<odomAllOpt.pose.pose.position.z<<std::endl;
            all_opt_odom.publish(odomAllOpt);
        }
        usleep(500);
    }
}
//-------------------------------------------主函数----------------------------------------------------------
int main(int argc, char** argv)
{
    ros::init(argc, argv, "Optimal_Function");
    Optimal_Function opt;
    ros::MultiThreadedSpinner spinner(0); // Use all threads
    spinner.spin(); // spin() will not return until the node has been shutdown
}
