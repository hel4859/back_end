//
// Created by hl on 18-1-22.
//
#include "optimal_function.h"


Optimal_Function::Optimal_Function() {

    std::cout<<"Optimal_Function::Optimal_Function()"<<std::endl;
    imu_mutex_= PTHREAD_MUTEX_INITIALIZER;
    laser_mutex_=PTHREAD_MUTEX_INITIALIZER;
    fix_mutex_=PTHREAD_MUTEX_INITIALIZER;
    node_mutex=PTHREAD_MUTEX_INITIALIZER;
    constraint_mutex=PTHREAD_MUTEX_INITIALIZER;

    //订阅惯导里程计的数据
    imu_odom=nh.subscribe("/dead_reconking_3d",10,&Optimal_Function::imu_odom_callback,this);

    //订阅SLAM的结果
    laser_odom=nh.subscribe("/aft_mapped_to_init",10,&Optimal_Function::laser_odom_callback,this);

    //GPS结果,间歇性gps值
    fix_odom=nh.subscribe("/gps_constraint",10,&Optimal_Function::fix_odom_callback,this);

    typedef void* (*FUNC)(void*);//定义FUNC类型是一个指向函数的指针，该函数参数为void*，返回值为void*
    FUNC AddImuNodeConstraintThread = (FUNC)&Optimal_Function::AddImuNodeConstraintThread;//强制转换func()的类型
    FUNC OptimalThread = (FUNC)&Optimal_Function::OptimalThread;//强制转换func()的类型

    pthread_create(&imu_thread_id_,NULL, AddImuNodeConstraintThread ,this);
    pthread_create(&optimal_thread_id_,NULL, OptimalThread ,this);


}
Optimal_Function::~Optimal_Function() {

    std::cout<<"Optimal_Function::~Optimal_Function()"<<std::endl;

}


void Optimal_Function::AddLocalNode(int trajectory_id, ros::Time time, const Eigen::Vector3d &pose_translation,
                                    const Eigen::Quaterniond &pose_rotation) {

    Node node;
    node.trajectory_id_=trajectory_id;
    node.time_=time;
    node.pose_rotation_=pose_rotation;
    node.pose_translation_=pose_translation;
    local_node_.push_back(node);

}

void Optimal_Function::AddGlobalNode() {
    pthread_mutex_lock(&laser_mutex_);
    pthread_mutex_lock(&imu_mutex_);
    pthread_mutex_lock(&fix_mutex_);

    if (Optimal_Function::first_pose_flag) {

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
    }
    else {

        if (Optimal_Function::laser_odom_.size()-1>Optimal_Function::laser_odom_id) {
            for (int i=Optimal_Function::laser_odom_id+1;i!=Optimal_Function::laser_odom_.size();i++)
            {
                Optimal_Function::global_node_.push_back(Node(Optimal_Function::laser_odom_[i].trajectory_id_,
                                                              Optimal_Function::laser_odom_[i].time_,
                                                              Optimal_Function::laser_odom_[i].pose_translation_,
                                                              Optimal_Function::laser_odom_[i].pose_rotation_));
            }
            Optimal_Function::laser_odom_id=Optimal_Function::laser_odom_.size()-1;

        }
    }

    pthread_mutex_unlock(&laser_mutex_);
    pthread_mutex_unlock(&imu_mutex_);
    pthread_mutex_unlock(&fix_mutex_);

}

void Optimal_Function::AddSubmap(int trajectory_id, const Eigen::Vector3d &global_submap_pose_translation,
                                 const Eigen::Quaterniond &global_submap_pose_rotation) {
    Submap submap;
    submap.global_submap_pose_rotation_=global_submap_pose_rotation;
    submap.global_submap_pose_translation_=global_submap_pose_translation;
    (Optimal_Function::submap_).push_back(submap);

}

void Optimal_Function::Local_Constraint() {
    if(Optimal_Function::global_node_.size()>=((Optimal_Function::trajectory_id_+1)*10) &&
            Optimal_Function::global_node_.size()<((Optimal_Function::trajectory_id_+2)*10))
    {
        pthread_mutex_lock(&node_mutex);
        for (int j=Optimal_Function::trajectory_id_*10;j!=(Optimal_Function::trajectory_id_+1)*10;j++)
        {
            Optimal_Function::global_node_[j].trajectory_id_=Optimal_Function::trajectory_id_;
            Optimal_Function::local_node_.push_back(Optimal_Function::global_node_[j]);

            for(int p=Optimal_Function::constraint_first_id;p!=Optimal_Function::imu_odom_.size();p++)
            {
                Optimal_Function::imu_odom_[p].trajectory_id_=Optimal_Function::trajectory_id_;
                if(Optimal_Function::imu_odom_[p].time_>=Optimal_Function::global_node_[j].time_)
                {
                    Optimal_Function::constraint_node_.push_back(
                            Optimal_Function::Interpolation(p,Optimal_Function::imu_odom_,Optimal_Function::global_node_[j].time_)) ;
                    if (Optimal_Function::constraint_node_.size()>=2)
                    {
                        Optimal_Function::constraint_.push_back(
                                Constraint(j-1,j,Optimal_Function::constraint_node_[j].trajectory_id_,
                                           Optimal_Function::constraint_node_[j-1].pose_rotation_.inverse()*
                                           (Optimal_Function::constraint_node_[j].pose_translation_
                                            -Optimal_Function::constraint_node_[j-1].pose_translation_),
                                           (Optimal_Function::constraint_node_[j-1].pose_rotation_.inverse()*
                                            Optimal_Function::constraint_node_[j].pose_rotation_)));
                    }
                    Optimal_Function::constraint_first_id=p;
                    break;
                }
            }

            for(int p=Optimal_Function::fix_constraint_first_id;p!=Optimal_Function::fix_odom_.size();p++)
            {
                Optimal_Function::fix_odom_[p].trajectory_id_=Optimal_Function::trajectory_id_;
                if(Optimal_Function::fix_odom_[p].time_>=local_node_[j].time_
                   && (Optimal_Function::fix_odom_[p].time_.toSec()-Optimal_Function::fix_odom_[p-1].time_.toSec())<0.1)
                {
                    Optimal_Function::fix_constraint_node_.push_back(
                            Constraint_Node(j,Optimal_Function::Interpolation(p,Optimal_Function::fix_odom_,Optimal_Function::local_node_[j].time_))) ;
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
                    if(fix_odom_[p].time_>=local_node_[j].time_){
                        std::cout<<"dfix_odom_time_"<<(fix_odom_[p].time_.toSec()-fix_odom_[p-1].time_.toSec())
                               <<std::endl;
                    }
                }
            }
        }
   //     std::cout<<"Optimal_Function::fix_constraint:"<<Optimal_Function::fix_constraint_.size()<<std::endl;
        pthread_mutex_unlock(&node_mutex);
        Optimal_Function::trajectory_id_++;
    }
}




void Fix_Constraint(std::vector<Node> &fix_odom_1,std::vector<Node>& global_node){


}
void Optimal_Function::Global_Constraint(std::vector<Node> imu_odom_1,std::vector<Node> laser_odom_1) {
    int laser_id = 0;
    int imu_id = 0;

}

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

void Optimal_Function::OptimalSolve(const std::vector<Node> &nodes, const std::vector<Constraint> &constraints,
                                    const std::vector<Constraint> &fix_constraints) {

    ceres::Problem problem;
    bool first_flag=true;
    std::cout<<"constraints:"<<constraints.size()<<std::endl;

    if(fix_constraints.size()!=0){
    //    std::cout<<"fix_constraint_temp:"<<fix_constraints.size()<<std::endl;

        //std::cout<<"fix_constraints[0].first_id:"<<fix_constraints[0].first_id_<<std::endl;
        if(fix_constraints[0].first_id_+1<fix_constraints[0].second_id_)
        {
            if(fix_constraints[0].first_id_<constraints[0].first_id_)
            {
                for(int i=fix_constraints[0].first_id_;i!=constraints[0].first_id_;i++)
                {
                    if(i==fix_constraints[0].first_id_)
                    {
                        std::cout<<Optimal_Function::constraint_[i].first_id_;
                    }
                    std::cout <<"f-c"<<Optimal_Function::constraint_[i].second_id_;
                    if(i==constraints[0].first_id_-1)
                    {
                        std::cout<< std::endl;
                    }
                    Constraint_Pose pose;
                    pose.rotation_weight=22.0;
                    pose.translation_weight=20.0;
                    pose.rotation= Eigen::Vector4d(Optimal_Function::constraint_[i].pose_rotation_.w(),
                                                   Optimal_Function::constraint_[i].pose_rotation_.x(),
                                                   Optimal_Function::constraint_[i].pose_rotation_.y(),
                                                   Optimal_Function::constraint_[i].pose_rotation_.z());
                    pose.translation=Eigen::Vector3d(Optimal_Function::constraint_[i].pose_translation_);
                    //  std::cout<<"nodes:"<<nodes.size()<<std::endl;
                    std::array<double, 4> temp1{{nodes[Optimal_Function::constraint_[i].first_id_].pose_rotation_.w(),
                                                        nodes[Optimal_Function::constraint_[i].first_id_].pose_rotation_.x(),
                                                        nodes[Optimal_Function::constraint_[i].first_id_].pose_rotation_.y(),
                                                        nodes[Optimal_Function::constraint_[i].first_id_].pose_rotation_.z()}};
                    //  std::cout<<"constraint.first_id_:"<<fix_constraint.first_id_<<std::endl;

                    std::array<double, 4> temp2{{nodes[Optimal_Function::constraint_[i].second_id_].pose_rotation_.w(),
                                                        nodes[Optimal_Function::constraint_[i].second_id_].pose_rotation_.x(),
                                                        nodes[Optimal_Function::constraint_[i].second_id_].pose_rotation_.y(),
                                                        nodes[Optimal_Function::constraint_[i].second_id_].pose_rotation_.z()}};

                    std::array<double, 3> temp3{{nodes[Optimal_Function::constraint_[i].first_id_].pose_translation_[0],
                                                        nodes[Optimal_Function::constraint_[i].first_id_].pose_translation_[1],
                                                        nodes[Optimal_Function::constraint_[i].first_id_].pose_translation_[2]}};

                    std::array<double, 3> temp4{{nodes[Optimal_Function::constraint_[i].second_id_].pose_translation_[0],
                                                        nodes[Optimal_Function::constraint_[i].second_id_].pose_translation_[1],
                                                        nodes[Optimal_Function::constraint_[i].second_id_].pose_translation_[2]}};
                    problem.AddParameterBlock(temp1.data(),4);
                    problem.AddParameterBlock(temp3.data(),3);
                    problem.AddParameterBlock(temp2.data(),4);
                    problem.AddParameterBlock(temp4.data(),3);
                    if (first_flag)
                    {
                        problem.SetParameterBlockConstant(temp1.data());
                        problem.SetParameterBlockConstant(temp3.data());
                        first_flag=false;
                    }
                    problem.AddResidualBlock(
                            SpaCostFunction::CreateAutoDiffCostFunction(pose),
                            nullptr /* loss function */,
                            temp1.data(),
                            temp3.data(),
                            temp2.data(),
                            temp4.data());


                }
            }
        }
        for(const Constraint& fix_constraint : fix_constraints)
        {
           // std::cout<<"test1:"<<fix_constraint.trajectory_id_<<std::endl;
            std::cout<<fix_constraint.first_id_<<"f-f"<<fix_constraint.second_id_<<std::endl;
            //std::cout<<fix_constraint.first_id_<<std::endl;
            Constraint_Pose pose;
            pose.translation_weight=100.0;
            pose.rotation_weight=120.0;
            pose.rotation= Eigen::Vector4d(fix_constraint.pose_rotation_.w(),
                                           fix_constraint.pose_rotation_.x(),
                                           fix_constraint.pose_rotation_.y(),
                                           fix_constraint.pose_rotation_.z());
            pose.translation=Eigen::Vector3d(fix_constraint.pose_translation_);
            //  std::cout<<"nodes:"<<nodes.size()<<std::endl;
            std::array<double, 4> temp1{{nodes[fix_constraint.first_id_].pose_rotation_.w(),
                                                nodes[fix_constraint.first_id_].pose_rotation_.x(),
                                                nodes[fix_constraint.first_id_].pose_rotation_.y(),
                                                nodes[fix_constraint.first_id_].pose_rotation_.z()}};
            //  std::cout<<"constraint.first_id_:"<<fix_constraint.first_id_<<std::endl;

            std::array<double, 4> temp2{{nodes[fix_constraint.second_id_].pose_rotation_.w(),
                                                nodes[fix_constraint.second_id_].pose_rotation_.x(),
                                                nodes[fix_constraint.second_id_].pose_rotation_.y(),
                                                nodes[fix_constraint.second_id_].pose_rotation_.z()}};

            std::array<double, 3> temp3{{nodes[fix_constraint.first_id_].pose_translation_[0],
                                                nodes[fix_constraint.first_id_].pose_translation_[1],
                                                nodes[fix_constraint.first_id_].pose_translation_[2]}};

            std::array<double, 3> temp4{{nodes[fix_constraint.second_id_].pose_translation_[0],
                                                nodes[fix_constraint.second_id_].pose_translation_[1],
                                                nodes[fix_constraint.second_id_].pose_translation_[2]}};
            problem.AddParameterBlock(temp1.data(),4);
            problem.AddParameterBlock(temp3.data(),3);
            problem.AddParameterBlock(temp2.data(),4);
            problem.AddParameterBlock(temp4.data(),3);
            if (first_flag)
            {
                problem.SetParameterBlockConstant(temp1.data());
                problem.SetParameterBlockConstant(temp3.data());
                first_flag=false;
            }
            problem.AddResidualBlock(
                    SpaCostFunction::CreateAutoDiffCostFunction(pose),
                    nullptr /* loss function */,
                    temp1.data(),
                    temp3.data(),
                    temp2.data(),
                    temp4.data());

        }
        //Optimal_Function::fix_constraint_temp_.clear();

   }


    bool constraint_flag=true;

   // std::cout<<"constraints:"<<constraints.size()<<std::endl;
    for (const Constraint& constraint : constraints) {
    //    std::cout<<"test:"<<constraint.trajectory_id_<<std::endl;
        if(constraint_flag)
        {
            std::cout<<constraint.first_id_;
            constraint_flag=false;
        }

        std::cout<<"c-c"<<constraint.second_id_;
        if(constraint.first_id_==constraints[constraints.size()-1].first_id_)
        {
            std::cout<<std::endl;
        }

        Constraint_Pose pose;
        pose.rotation= Eigen::Vector4d(constraint.pose_rotation_.w(),
                                       constraint.pose_rotation_.x(),
                                       constraint.pose_rotation_.y(),
                                       constraint.pose_rotation_.z());
        pose.translation=Eigen::Vector3d(constraint.pose_translation_);
       // std::cout<<"nodes:"<<nodes.size()<<std::endl;
        std::array<double, 4> temp1{{nodes[constraint.first_id_].pose_rotation_.w(),
                                            nodes[constraint.first_id_].pose_rotation_.x(),
                                            nodes[constraint.first_id_].pose_rotation_.y(),
                                            nodes[constraint.first_id_].pose_rotation_.z()}};
       // std::cout<<"constraint.first_id_:"<<constraint.first_id_<<std::endl;

        std::array<double, 4> temp2{{nodes[constraint.second_id_].pose_rotation_.w(),
                                            nodes[constraint.second_id_].pose_rotation_.x(),
                                            nodes[constraint.second_id_].pose_rotation_.y(),
                                            nodes[constraint.second_id_].pose_rotation_.z()}};

        std::array<double, 3> temp3{{nodes[constraint.first_id_].pose_translation_[0],
                                            nodes[constraint.first_id_].pose_translation_[1],
                                            nodes[constraint.first_id_].pose_translation_[2]}};

        std::array<double, 3> temp4{{nodes[constraint.second_id_].pose_translation_[0],
                                            nodes[constraint.second_id_].pose_translation_[1],
                                            nodes[constraint.second_id_].pose_translation_[2]}};
        problem.AddParameterBlock(temp1.data(),4);
        problem.AddParameterBlock(temp3.data(),3);
        problem.AddParameterBlock(temp2.data(),4);
        problem.AddParameterBlock(temp4.data(),3);
        if (first_flag)
        {
            problem.SetParameterBlockConstant(temp1.data());
            problem.SetParameterBlockConstant(temp3.data());
            first_flag=false;
        }
        problem.AddResidualBlock(
                SpaCostFunction::CreateAutoDiffCostFunction(pose),
                nullptr /* loss function */,
                temp1.data(),
                temp3.data(),
                temp2.data(),
                temp4.data());

    }

    ceres::Solver::Options options;
    options.linear_solver_type=ceres::DENSE_QR;
    //options.minimizer_progress_to_stdout=true;

    ceres::Solver::Summary summary;
  //  std::chrono::steady_clock::time_point t1=std::chrono::steady_clock::now();
    ceres::Solve(options,&problem,&summary);

    //储存优化结果
//    for (auto node :nodes)
//    {
//        opt_node_.push_back(node);
//    }
  //  std::chrono::steady_clock::time_point t2=
         //   std::chrono::steady_clock::now();
  //  std::chrono::duration<double> time_used =
         //   std::chrono::duration_cast<std::chrono::duration<double>>(t2-t1);
   // std::cout<<"solve time cost= "<<time_used.count()<<"seconds."<<std::endl;
   // std::cout<<summary.BriefReport() <<std::endl;
   // std::cout<<"estimated a,b,c = ";
 //   for ( auto node :nodes ) std::cout<<node<<" ";
  //  std::cout<<std::endl;

}


void Optimal_Function::AddImuNodeConstraintThread() {

 std::cout<<"AddImuNodeConstraintThread"<<std::endl;

    while(ros::ok())
    {
        if(Optimal_Function::imu_odom_.size()>0 && Optimal_Function::laser_odom_.size()>0)
        {
           Optimal_Function::AddGlobalNode();
           Optimal_Function::Local_Constraint();
           usleep(1000);
        }

    }

}


//优化线程
void Optimal_Function::OptimalThread() {

    std::cout<<"OptimalThread"<<std::endl;

    while(ros::ok())
    {
        if (Optimal_Function::constraint_.size()!=0 &&
            Optimal_Function::local_node_.size()!=0)
        {
            if(Optimal_Function::constraint_[Optimal_Function::constraint_.size()-1].trajectory_id_
               >= Optimal_Function::solve_constraint_id &&
               Optimal_Function::local_node_[Optimal_Function::local_node_.size()-1].trajectory_id_
               >=Optimal_Function::solve_node_id) {

                std::vector<Node> nodes_temp;
                std::vector<Constraint> constraints_temp;
                std::vector<Constraint> fix_constraints_temp;

                pthread_mutex_lock(&node_mutex);
                //  std::cout<<node_trajectory<<std::endl;
                for (int i=Optimal_Function::node_trajectory;i!=Optimal_Function::local_node_.size()-1;i++)
                {


                    if (Optimal_Function::local_node_[i].trajectory_id_==Optimal_Function::solve_node_id)
                    {
                        nodes_temp.push_back(Optimal_Function::local_node_[i]);
                    }
                    else
                    {
                        //std::cout<<"i:"<<i<<std::endl;
                        Optimal_Function::node_trajectory=i;
                        Optimal_Function::solve_node_id++;
                        break;
                    }

                }

                pthread_mutex_unlock(&node_mutex);

                pthread_mutex_lock(&constraint_mutex);
                if((Optimal_Function::constraint_.size()-Optimal_Function::constraint_trajectory)>0)
                {
                    for (int j=Optimal_Function::constraint_trajectory;j!=Optimal_Function::constraint_.size();j++)
                    {
                        //std::cout<<"constraint_trajectory:"<<Optimal_Function::constraint_trajectory<<std::endl;
                        if(Optimal_Function::constraint_[j].trajectory_id_==Optimal_Function::solve_constraint_id)
                        {
                            constraints_temp.push_back(Optimal_Function::constraint_[j]);
                            Optimal_Function::constraint_trajectory=j+1;
                            Optimal_Function::solve_fix_constraint_id=Optimal_Function::solve_constraint_id;
                            //  std::cout<<"constraints_temp:"<<constraints_temp.size()<<std::endl;
                        }
                        else
                        {
                            // std::cout<<"ddd"<<std::endl;
                            Optimal_Function::constraint_trajectory=j;
                            Optimal_Function::solve_constraint_id++;
                            break;
                        }

                    }
                }
                else
                {
                    constraints_temp.clear();
                }


//                std::cout<<
//                         "Optimal_Function::constraint_:"<<Optimal_Function::constraint_.size()-1<<","
//                         <<Optimal_Function::constraint_[Optimal_Function::constraint_.size()-1].trajectory_id_<<std::endl;
                pthread_mutex_unlock(&constraint_mutex);

                pthread_mutex_lock(&fix_constraint_mutex);
                //std::cout<<"fix_constraint_trajectory:"<<Optimal_Function::fix_constraint_trajectory<<std::endl;
                //std::cout<<"fix_constraint:"<<Optimal_Function::fix_constraint_.size()<<std::endl;
                if((Optimal_Function::fix_constraint_.size()-Optimal_Function::fix_constraint_trajectory)>0) {
                    if (Optimal_Function::fix_constraint_[Optimal_Function::fix_constraint_.size() - 1].trajectory_id_
                        >= Optimal_Function::solve_fix_constraint_id) {

                        for (int j = Optimal_Function::fix_constraint_trajectory;
                             j != Optimal_Function::fix_constraint_.size(); j++) {
                            if (Optimal_Function::fix_constraint_[j].trajectory_id_ ==
                                Optimal_Function::solve_fix_constraint_id) {
                                fix_constraints_temp.push_back(Optimal_Function::fix_constraint_[j]);
//                                std::cout<<Optimal_Function::fix_constraint_[j].trajectory_id_<<","
//                                         <<Optimal_Function::solve_fix_constraint_id<<std::endl;
                               // std::cout<<fix_constraints_temp[fix_constraints_temp.size()-1].trajectory_id_<<","<<fix_constraints_temp[fix_constraints_temp.size()-1].first_id_<<","<<fix_constraints_temp[fix_constraints_temp.size()-1].second_id_<<std::endl;
                                Optimal_Function::fix_constraint_trajectory=j+1;
                                //   std::cout<<"fix_constraints_temp:"<<fix_constraints_temp.size()<<std::endl;
                            }
                            else {
                                Optimal_Function::fix_constraint_trajectory = j;
                                Optimal_Function::solve_fix_constraint_id++;
                                break;
                            }

                        }

                    }
                }
                pthread_mutex_unlock(&fix_constraint_mutex);

//              std::cout<<
//                         "Optimal_Function::fix_constraint_:"<<Optimal_Function::fix_constraint_.size()-1<<","
//                         <<Optimal_Function::fix_constraint_[Optimal_Function::fix_constraint_.size()-1].trajectory_id_<<std::endl;
                if(nodes_temp[nodes_temp.size()-1].trajectory_id_==Optimal_Function::compare_node_id)
                {
                    //std::cout<<"opt_node"<<opt_node_.size()<<std::endl;

//                    if(opt_node_.size()!=0)
//                    {
//                        nodes_temp[0]=opt_node_[opt_node_.size()-1];
//                        nodes_temp[0].trajectory_id_++;
//                    }
                    Optimal_Function::compare_node_id++;
                    //std::cout<<"constraints_temp:"<<constraints_temp.size()<<std::endl;
                    Optimal_Function::OptimalSolve(Optimal_Function::local_node_,constraints_temp,fix_constraints_temp);
                }

                nodes_temp.clear();
                constraints_temp.clear();
                fix_constraints_temp.clear();


            }

        }


        usleep(1000);

    }
}


int main(int argc, char** argv)
{
    ros::init(argc, argv, "Optimal_Function");
    Optimal_Function opt;
    ros::MultiThreadedSpinner spinner(0); // Use all threads
    spinner.spin(); // spin() will not return until the node has been shutdown


}