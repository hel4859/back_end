#ifndef _MAP_FRAME_H
#define _MAP_FRAME_H

#include "sensor_msgs/NavSatFix.h"

namespace tiggo{
namespace common{
namespace util{

const double EARTH_RAD_EQ = 6378.137 * 1000; //unit: m
const double SCALE = 0.857167300702;
const double OFFSET_X = 41633;//-12257-80784;
const double OFFSET_Y = 3150;//47354-1180;
const double ORIGIN_X = 11545750.7201;
const double ORIGIN_Y = 3113873.77736;

class MapFrame{
public:
    double x_;//east
    double y_;//north

    MapFrame(const double x_in=0.0,
             const double y_in=0.0):
        x_(x_in),
        y_(y_in){}

    MapFrame(const MapFrame &pos):
        x_(pos.x_),
        y_(pos.y_){}

    ~MapFrame(){}

    sensor_msgs::NavSatFix MapFrame2GPS();

    void GPS2MapFrame(const sensor_msgs::NavSatFix &gps);

    void GPS2MapFrame(const double &lon, const double &lat);

    static void GPS2MapFrame(const double& lon, const double& lat, double& east, double& north );

    static double Lon2MapFrame(const double& lon);

    static double Lat2MapFrame(const double& lat);

    double calcDistance(const MapFrame &another);

    double getX();

    double getY();

    void setX(const double &x);

    void setY(const double &y);

    void setXY(const double &x, const double &y);
};

}//namespace utils
}//namespace common
}//namespace gl8

#endif
