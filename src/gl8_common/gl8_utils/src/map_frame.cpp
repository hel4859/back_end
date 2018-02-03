#include "gl8_utils/map_frame.h"

namespace gl8{
namespace common{
namespace util{

    sensor_msgs::NavSatFix MapFrame::MapFrame2GPS(){
        double lat = 360.0 / M_PI * atan(exp( (y_+OFFSET_Y) /(SCALE * EARTH_RAD_EQ)))-90.0;
        double lon = 180.0 * (x_ + OFFSET_X) / (SCALE * EARTH_RAD_EQ * M_PI);
        sensor_msgs::NavSatFix gps;
        gps.latitude = lat;
        gps.longitude = lon;
        return gps;
    }

    void MapFrame::GPS2MapFrame(const sensor_msgs::NavSatFix &gps){
//        x = SCALE * EARTH_RAD_EQ * gps.longitude * M_PI / 180.0 - OFFSET_X;
//        y = SCALE * EARTH_RAD_EQ * log(tan((90.0 + gps.latitude) * (M_PI / 360.0))) - OFFSET_Y;
        GPS2MapFrame(gps.longitude, gps.latitude, x_, y_);
    }

    void MapFrame::GPS2MapFrame(const double &lon, const double &lat)
    {
        GPS2MapFrame(lon, lat, x_, y_);
    }

    void MapFrame::GPS2MapFrame(const double &lon, const double &lat, double &east, double& north)
    {
        east = Lon2MapFrame(lon);
        north = Lat2MapFrame(lat);
    }

    double MapFrame::Lon2MapFrame(const double &lon)
    {
        return (SCALE * EARTH_RAD_EQ * lon * M_PI / 180.0 - OFFSET_X - ORIGIN_X);
    }

    double MapFrame::Lat2MapFrame(const double &lat)
    {
        return (SCALE * EARTH_RAD_EQ * log(tan((90.0 + lat) * (M_PI / 360.0))) - OFFSET_Y - ORIGIN_Y);
    }

    double MapFrame::calcDistance(const MapFrame &another)
    {
        return sqrt(pow(x_ - another.x_,2) + pow(y_ - another.y_,2));
    }

}//namespace utils
}//namespace common
}//namespace gl8
