//
// Created by wlh on 17-7-22.
//

#ifndef PROJECT_VEHICLE_H
#define PROJECT_VEHICLE_H

#include "traffic_object/traffic_object.h"

namespace gl8 {
namespace common {
namespace traffic_object {


    class Vehicle:public TrafficObject
    {
    public:

        Vehicle(){}

        Vehicle(int id, Pose pose, Motion motion, Size size):motion_(motion),TrafficObject(id,pose,size){}

        Motion motion() const;

        void set_motion(const Motion& motion);


    private:
        Motion motion_;
    };



}//namespace traffic_object
}//namespace common
}//namespace gl8

#endif //PROJECT_VEHICLE_H
