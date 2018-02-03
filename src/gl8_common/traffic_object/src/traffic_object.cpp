//
// Created by wlh on 17-7-22.
//

#include "traffic_object/traffic_object.h"

namespace gl8 {
namespace common {
namespace traffic_object {


int TrafficObject::id() const { return id_;}

Pose TrafficObject::pose() const { return pose_;}

Size TrafficObject::size() const { return size_;}

void TrafficObject::set_id(const int& id){id_=id;}

void TrafficObject::set_pose(const Pose& pose){pose_=pose;}

void TrafficObject::set_size(const Size& size){size_=size;}



}//namespace traffic_object
}//namespace common
}//namespace gl8