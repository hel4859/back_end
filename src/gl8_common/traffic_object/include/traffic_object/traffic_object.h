//
// Created by wlh on 17-7-22.
//

#ifndef PROJECT_TRAFFIC_OBJECT_H
#define PROJECT_TRAFFIC_OBJECT_H

#include "traffic_object/basic_type.h"

namespace gl8 {
namespace common {
namespace traffic_object {

class TrafficObject
{
public:
    TrafficObject(){}

    TrafficObject(int id, Pose pose, Size size):
            id_(id),pose_(pose),size_(size){}

    virtual ~TrafficObject(){}

    int id() const;

    Pose pose() const;

    Size size() const;

    void set_id(const int& id);

    void set_pose(const Pose& pose);

    void set_size(const Size& size);

protected:
    int id_;
    Pose pose_;
    Size size_;
};


}//namespace traffic_object
}//namespace common
}//namespace gl8

#endif //PROJECT_TRAFFIC_OBJECT_H
