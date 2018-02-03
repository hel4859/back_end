//
// Created by wlh on 17-7-22.
//

#include "traffic_object/vehicle.h"


namespace gl8 {
namespace common {
namespace traffic_object {


    Motion Vehicle::motion() const
    {
        return motion_;
    }


    void Vehicle::set_motion(const Motion &motion)
    {
        motion_ = motion;
    }



}//namespace traffic_object
}//namespace common
}//namespace gl8