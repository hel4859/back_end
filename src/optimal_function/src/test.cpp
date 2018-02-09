//
// Created by hl on 18-2-8.
//
#include "optimal_function.h"
Optimal_Function::Optimal_Function() {

    std::cout<<"Optimal_Function::Optimal_Function()"<<std::endl;
    ceres::Problem problem;
    ceres::LocalParameterization* quaternion_local_parameterization =
            new ceres::EigenQuaternionParameterization;
    bool first_flag=true;
    //约束和节点创建
    for(int i=0;i!=101;i++)
    {
       nodes.push_back(Opt_Node(i,0, ros::Time::now(), std::array<double, 3>{{4.9*i,5.1*i,5.2*i}},
                                                   std::array<double, 4>{{0.00,0.0,0.0,1.0}}));
    }
    for(int i=1;i!=101;i++)
    {
        Optimal_Function::constraint_.push_back(
                Constraint(i-1,i,0, Eigen::Vector3d(1.0,1.0,1.0),
                           Eigen::Quaterniond(0.0,0.0,0.0,1.0)));
    }
    for(int i=1;i!=101;i++)
    {
        Optimal_Function::fix_constraint_.push_back(
                Constraint(i-1,i,0, Eigen::Vector3d(5.0,5.0,5.0),
                           Eigen::Quaterniond(1.0,0.0,0.0,0.0)));
    }
    Optimal_Function::fix_constraint_.push_back(
            Constraint(0,100,0, Eigen::Vector3d(500.0,500.0,500.0),
                       Eigen::Quaterniond(1.0,0.0,0.0,0.0)));


    //全局优化
//    for (const Constraint& constraint :constraint_ ) {
//        //    std::cout<<"test:"<<constraint.trajectory_id_<<std::endl;
////        if(constraint_flag)
////        {
////            std::cout<<constraint.first_id_;
////            constraint_flag=false;
////        }
//
//
//        Constraint_Pose pose;
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
//        if (first_flag)
//        {
//            problem.SetParameterBlockConstant(nodes[constraint.first_id_].pose_rotation_array_.data());
//            problem.SetParameterBlockConstant(nodes[constraint.first_id_].pose_translation_array_.data());
//            first_flag=false;
//        }
//        problem.AddResidualBlock(
//                SpaCostFunction::CreateAutoDiffCostFunction(pose),
//                nullptr /* loss function */,
//                nodes[constraint.first_id_].pose_rotation_array_.data(),
//                nodes[constraint.first_id_].pose_translation_array_.data(),
//                nodes[constraint.second_id_].pose_rotation_array_.data(),
//                nodes[constraint.second_id_].pose_translation_array_.data());
//
//    }
    int last_node_id=0;
    for(const Constraint& fix_constraint : fix_constraint_)
    {


        //    std::cout<<fix_constraint.first_id_<<"f-f"<<fix_constraint.second_id_<<std::endl;
        Constraint_Pose pose;
        pose.translation_weight=100.0;
        pose.rotation_weight=100.0;
        pose.rotation= Eigen::Vector4d(fix_constraint.pose_rotation_.w(),
                                       fix_constraint.pose_rotation_.x(),
                                       fix_constraint.pose_rotation_.y(),
                                       fix_constraint.pose_rotation_.z());
        pose.translation=Eigen::Vector3d(fix_constraint.pose_translation_);
        //  std::cout<<"nodes:"<<nodes.size()<<std::endl;

        problem.AddParameterBlock(nodes[fix_constraint.first_id_].pose_rotation_array_.data(),4,quaternion_local_parameterization);
        problem.AddParameterBlock(nodes[fix_constraint.first_id_].pose_translation_array_.data(),3);
        problem.AddParameterBlock(nodes[fix_constraint.second_id_].pose_rotation_array_.data(),4,quaternion_local_parameterization);
        problem.AddParameterBlock(nodes[fix_constraint.second_id_].pose_translation_array_.data(),3);
        if (first_flag)
        {
            problem.SetParameterBlockConstant(nodes[fix_constraint.first_id_].pose_rotation_array_.data());
            problem.SetParameterBlockConstant(nodes[fix_constraint.first_id_].pose_translation_array_.data());
            first_flag=false;
            std::cout<<"fix first node:"<<nodes[fix_constraint.first_id_].pose_translation_array_[0]
                     <<" "<<nodes[fix_constraint.first_id_].pose_translation_array_[1]<<" "
                    <<nodes[fix_constraint.first_id_].pose_translation_array_[2]<<" "
                     <<nodes[fix_constraint.first_id_].pose_rotation_array_[0]
                     <<" "<<nodes[fix_constraint.first_id_].pose_rotation_array_[1]<<" "
                     <<nodes[fix_constraint.first_id_].pose_rotation_array_[2]<<" "
                     <<nodes[fix_constraint.first_id_].pose_rotation_array_[3]<<std::endl;
                    std::cout<<std::endl;

        }


        problem.AddResidualBlock(
                SpaCostFunction::CreateAutoDiffCostFunction(pose),
                nullptr /* loss function */,
                nodes[fix_constraint.first_id_].pose_rotation_array_.data(),
                nodes[fix_constraint.first_id_].pose_translation_array_.data(),
                nodes[fix_constraint.second_id_].pose_rotation_array_.data(),
                nodes[fix_constraint.second_id_].pose_translation_array_.data());

        last_node_id++;
    }

    ceres::Solver::Options options;
    options.linear_solver_type=ceres::DENSE_QR;
    options.minimizer_progress_to_stdout=true;
    options.num_threads=3;
    options.max_num_iterations=200;
   // options.trust_region_strategy_type=ceres::DOGLEG;
    //options.max_solver_time_in_seconds

    ceres::Solver::Summary summary;
    std::chrono::steady_clock::time_point t1=std::chrono::steady_clock::now();
    ceres::Solve(options,&problem,&summary);

    std::chrono::steady_clock::time_point t2=std::chrono::steady_clock::now();
    std::chrono::duration<double> time_used = std::chrono::duration_cast<std::chrono::duration<double>>(t2-t1);
    std::cout<<"solve time cost= "<<time_used.count()<<"seconds."<<std::endl;
    std::cout<<summary.BriefReport() <<std::endl;
    for (auto node:nodes)
    {
        std::cout<<node.pose_translation_array_[0]<<" "<<node.pose_translation_array_[1]<<" "<<node.pose_translation_array_[2]
                 <<" "<<node.pose_rotation_array_[0]<<" "<<node.pose_rotation_array_[1]<<" "<<node.pose_rotation_array_[2]
                 <<" "<<node.pose_rotation_array_[3]<<std::endl;
    }
}

//析构函数
Optimal_Function::~Optimal_Function() {}
//-------------------------------------------主函数----------------------------------------------------------
int main(int argc, char** argv)
{
    ros::init(argc, argv, "Optimal_Function_test");
    Optimal_Function opt;
    ros::MultiThreadedSpinner spinner(0); // Use all threads
    spinner.spin(); // spin() will not return until the node has been shutdown
}
