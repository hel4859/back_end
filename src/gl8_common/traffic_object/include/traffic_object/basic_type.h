//
// Created by wlh on 17-7-22.
//

#ifndef PROJECT_BASIC_TYPE_H
#define PROJECT_BASIC_TYPE_H

namespace gl8 {
namespace common {
namespace traffic_object {


class Pose
{
public:
    Pose(){};

    Pose(double x, double y, double z, double heading): x_(x),y_(y),z_(z),heading_(heading){}

    double x() const { return x_;}

    double y() const { return y_;}

    double z() const { return z_;}

    double heading() const { return heading_;}

    void set_x(const double& x){x_=x;}

    void set_y(const double& y){y_=y;}

    void set_z(const double& z){z_=z;}

    void set_heading(const double& heading){heading_=heading;}

    const Pose& operator=(const Pose& another)
    {
        if(this!=&another)
        {
            x_=another.x();
            y_=another.y();
            z_=another.z();
            heading_=another.heading();
        }
        return (*this);
    }

private:
    double x_;
    double y_;
    double z_;
    double heading_;
};

class Motion
{
public:
    Motion(){};

    Motion(double linear_velocity, double angular_velocity, double linear_acceleration):
            linear_v_(linear_velocity),angular_v_(angular_velocity),linear_a_(linear_acceleration){}

    double linear_velocity() const { return linear_v_;}

    double angular_velocity() const { return angular_v_;}

    double linear_acceleration() const { return linear_a_;}

    void set_linear_velocity(const double& linear_velocity){linear_v_=linear_velocity;}

    void set_angular_velocity(const double& angular_velocity){angular_v_=angular_velocity;}

    void set_linear_acceleration(const double& linear_acceleration){linear_a_=linear_acceleration;}

private:
    double linear_v_;
    double angular_v_;
    double linear_a_;
};

class Size
{
public:

    Size(){};

    Size(double l, double w, double h): l_(l),w_(w),h_(h){}

    double l() const { return l_;}

    double w() const { return w_;}

    double h() const { return h_;}

    void set_l(const double& l){l_=l;}

    void set_w(const double& w){w_=w;}

    void set_h(const double& h){h_=h;}

private:
    double l_;
    double w_;
    double h_;
};


}//namespace traffic_object
}//namespace common
}//namespace gl8

#endif //PROJECT_BASIC_TYPE_H
