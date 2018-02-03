//
// Created by wlh on 17-7-11.
//

#ifndef PROJECT_VIS2D_H
#define PROJECT_VIS2D_H


#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>

namespace gl8{
namespace common{
namespace vis2d{


const cv::Scalar RGB_WHITE  =   cv::Scalar(255,255,255);
const cv::Scalar RGB_BLACK	=   cv::Scalar(0,0,0);
const cv::Scalar RGB_RED	=	cv::Scalar(0,0,255);
const cv::Scalar RGB_GREEN	=   cv::Scalar(0,255,0);
const cv::Scalar RGB_BLUE	=   cv::Scalar(255,0,0);
const cv::Scalar RGB_CYAN	=   cv::Scalar(255,255,0);	//青色，蓝绿色
const cv::Scalar RGB_MAGENTA=	cv::Scalar(255,0,255);	//洋红色，品红色
const cv::Scalar RGB_YELLOW	=   cv::Scalar(0,255,255);
const cv::Scalar RGB_GOLD	=   cv::Scalar(0,215,255);
const cv::Scalar RGB_VIOLET	=   cv::Scalar(238,130,238);	//紫罗兰
const cv::Scalar RGB_DARKRED=	cv::Scalar(0,0,139);	//深红色
const cv::Scalar RGB_ORANGE	=   cv::Scalar(0,165,255);	//橙色

}//namespace utils
}//namespace common
}//namespace gl8



#endif //PROJECT_VIS2D_H
