//
// Created by hl on 18-2-6.
//

#ifndef PROJECT_SPACOSTFUNCTION_H
#define PROJECT_SPACOSTFUNCTION_H
#include "quaterniontorpy.h"
#include <iostream>
#include <Eigen/Core>
#include <Eigen/Geometry>

//建立约束的类
class Constraint_Pose
{
public:
    // Constraint_Pose(Eigen::Vector4d rotation_,Eigen::Vector3d translation_): rotation_(rotation),translation_(translation){};
    double translation_weight=0.001;
    double rotation_weight=0.002;
    Eigen::Vector4d rotation;
    Eigen::Vector3d translation;

};

//约束的首尾位置
class Constraint_Node
{
public:
    Node node_;
    int node_id_;
    Constraint_Node(int node_id,Node node): node_id_(node_id),node_(node){};
    Constraint_Node(){};

};

//用于优化的节点的类
class Opt_Node
{
public:

    Opt_Node(int node_id,int trajectory_id,
             ros::Time time,
             std::array<double, 3> pose_translation_array,
             std::array<double, 4> pose_rotation_array):node_id_(node_id),
                                                        trajectory_id_(trajectory_id),
                                                        time_(time),pose_translation_array_(pose_translation_array),
                                                        pose_rotation_array_(pose_rotation_array){};
    Opt_Node(){};
    int node_id_;
    int trajectory_id_;
    ros::Time time_;
    std::array<double, 3> pose_translation_array_;
    std::array<double, 4> pose_rotation_array_;

};

//约束
class Constraint
{
public:
    int first_id_;
    int second_id_;
    int trajectory_id_;
    Eigen::Vector3d pose_translation_;
    Eigen::Quaterniond pose_rotation_;
    Constraint(int first_id, int second_id,
               int trajectory_id,
               Eigen::Vector3d pose_translation,
               Eigen::Quaterniond pose_rotation):first_id_(first_id),second_id_(second_id),trajectory_id_(trajectory_id),pose_translation_(pose_translation),pose_rotation_(pose_rotation){};

    friend std::ostream& operator<<(std::ostream &out, Constraint &c1);
};

//重载输出约束的数据
std::ostream  &operator<<(std::ostream &out, Constraint &c1)
{
    std::cout<<"constraint:"<<std::endl;
    std::cout<<"first_id: "<<c1.first_id_<<"second_id: "<<c1.second_id_<<","<<"trajectory_id: "<<c1.trajectory_id_<<","<<"pose_translation: "<<c1.pose_translation_<<"pose_rotation: "<<c1.pose_rotation_<<std::endl;
    return out;
}

//重载输出节点的数据
std::ostream &operator<<(std::ostream &out, Node &c1)
{
    std::cout<<"node"<<std::endl;
    std::cout<<"trajectory_id: "<<c1.trajectory_id_<<","<<"pose_translation: "<<c1.pose_translation_<<"pose_rotation: "<<c1.pose_rotation_<<std::endl;
    return out;
}

//优化函数
class SpaCostFunction
{
public:
    static ceres::CostFunction* CreateAutoDiffCostFunction(const Constraint_Pose &pose)
    {
        return new ceres::AutoDiffCostFunction<SpaCostFunction,6,4,3,4,3>(new SpaCostFunction(pose));
    }

    template <typename T>
    bool operator()(const T* const c_i_rotation, const T*const c_i_translation,
                    const T*const c_j_rotation, const T*const c_j_translation,
                    T*const e)const {
        ComputeScaledError(pose_,c_i_rotation,c_i_translation,
                           c_j_rotation,c_j_translation,e);
        return true;

    }

    template <typename T>
    static std::array<T,6> ComputeUnscaledError(const Constraint_Pose &pose,
                                                const T* const c_i_rotation,const T* const c_i_translation,
                                                const T* const c_j_rotation, const T* const c_j_translation)
    {
        const Eigen::Quaternion<T> Ri_inverse(c_i_rotation[3],-c_i_rotation[0], -c_i_rotation[1], -c_i_rotation[2]);
        const Eigen::Matrix<T, 3, 1> Tr(c_j_translation[0] - c_i_translation[0],
                                        c_j_translation[1] - c_i_translation[1],
                                        c_j_translation[2] - c_i_translation[2]);

        const Eigen::Matrix<T, 3, 1> h_translation =Ri_inverse*Tr;
        const Eigen::Quaternion<T> h_rotation=
                Ri_inverse*Eigen::Quaternion<T> (c_j_rotation[3],c_j_rotation[0], c_j_rotation[1], c_j_rotation[2]);
        const Eigen::Quaternion<T> rotation_different= Eigen::Quaternion<T>(T(pose.rotation[0]),T(-pose.rotation[1]),
                                                                            T(-pose.rotation[2]),T(-pose.rotation[3]))*h_rotation;


        const Eigen::Matrix<T,3,1> angle_axis_difference=RotationQuaternionToAngleAxisVector(rotation_different);

//       / const Eigen::Matrix<T,3,1> angle_axis_difference(T(1.0),T(1.0),T(1.0));
        const Eigen::Matrix<T, 3, 1> translation_difference(T(pose.translation[0])-h_translation[0],
                                                            T(pose.translation[1])-h_translation[1],
                                                            T(pose.translation[2])-h_translation[2]);
        return {{translation_difference[0],translation_difference[1],translation_difference[2],
                        angle_axis_difference[0], angle_axis_difference[1], angle_axis_difference[2]}};

    }

    template <typename T>
    static void ComputeScaledError(const Constraint_Pose& pose,
                                   const T*const c_i_rotation,
                                   const T*const c_i_translation,
                                   const T*const c_j_rotation,
                                   const T*const c_j_translation,
                                   T*const e)
    {
        const  std::array<T,6> e_ij=
                ComputeUnscaledError(pose,c_i_rotation,c_i_translation,
                                     c_j_rotation,c_j_translation);
        for (int ij :{0,1,2})
        {
            e[ij]=e_ij[ij]*T(pose.translation_weight);
        }
        for (int ij:{3,4,5})
        {
            e[ij]=e_ij[ij]*T(pose.rotation_weight);
        }
    }




private:
    explicit SpaCostFunction(const Constraint_Pose& pose): pose_(pose){}
    const Constraint_Pose pose_;


};

#endif //PROJECT_SPACOSTFUNCTION_H
