//
// Created by wlh on 17-8-13.
//

#include "gl8_math/gl8_math.h"
#include <math.h>

namespace gl8{
namespace common{
namespace math{

    //-PI~PI
    void normaliza_angle(double& angle_rad)
    {
        while (angle_rad < -M_PI)
            angle_rad += 2*M_PI;
        while (angle_rad > M_PI)
            angle_rad -= 2*M_PI;

    }

}//gl8
}//common
}//math
