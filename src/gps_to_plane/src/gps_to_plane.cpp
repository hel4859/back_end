#include "gps_to_plane.h"
//void yaw_callback(const gl8_msgs::Heading::ConstPtr& yawIn)
//{
//	coordinate[3]=yawIn->data;
//	yaw_flag=true;
//}
//void fix_raw_callback(const sensor_msgs::NavSatFix::ConstPtr& fixrawIn)
//{
//    altitude=fixrawIn->altitude;
//}
void orientation_callback(const sensor_msgs::Imu::ConstPtr& imuIn )
{
	coordinate[3]=imuIn->orientation.x;
	coordinate[4]=imuIn->orientation.y;
	coordinate[5]=imuIn->orientation.z;
	coordinate[6]=imuIn->orientation.w;
	yaw_flag=true;

}

void fix_callback(const sensor_msgs::NavSatFix::ConstPtr& fixIn )
{

	static const double Ellipse_n = (Ellipse_a - Ellipse_b) / (Ellipse_a + Ellipse_b);
	static const double Ellipse_e = sqrt(Ellipse_a*Ellipse_a - Ellipse_b*Ellipse_b) / Ellipse_a;
	static const double Ellipse_ee = sqrt(Ellipse_a*Ellipse_a - Ellipse_b*Ellipse_b) / Ellipse_b;
	static const double Ellipse_C0 = (Ellipse_a + Ellipse_b)*(1 + 0.25*pow(Ellipse_n, 2) + 0.015625*pow(Ellipse_n, 4))*0.5;
	static const double Ellipse_C1 = -1.5*Ellipse_n + 0.5625*pow(Ellipse_n, 3) - 0.09375*pow(Ellipse_n, 5);
	static const double Ellipse_C2 = 0.9375*pow(Ellipse_n, 2) - 0.46875*pow(Ellipse_n, 4);
	static const double Ellipse_C3 = -35 / 48 * pow(Ellipse_n, 3) + 0.41015625*pow(Ellipse_n, 5);
	static const double Ellipse_C4 = 0.615234375*pow(Ellipse_n, 4);

	double Ellipse_lat =fixIn->latitude*PI / 180;
	double Ellipse_lon = (fixIn->longitude - Ellipse_L0)*PI / 180;
	double Ellipse_N = Ellipse_a / sqrt(1 - pow(Ellipse_e*sin(Ellipse_lat), 2));
	double Ellipse_t = tan(Ellipse_lat);
	double Ellipse_g = Ellipse_ee*cos(Ellipse_lat);
	double Ellipse_m = cos(Ellipse_lat)*Ellipse_lon;

	double Ellipse_X = Ellipse_C0*(Ellipse_lat + Ellipse_C1*sin(2 * Ellipse_lat) + Ellipse_C2*sin(4 * Ellipse_lat) + Ellipse_C3*sin(6 * Ellipse_lat) + Ellipse_C4*sin(8 * Ellipse_lat));
	//--------------------------solution----------------------------------

	double tempy = Ellipse_X + 0.5*Ellipse_N*Ellipse_t*pow(Ellipse_m, 2);
	tempy += 0.041666666666666666666666666667*Ellipse_N*Ellipse_t*(5 - pow(Ellipse_t, 2) + 9 * pow(Ellipse_g, 2) + 4 * pow(Ellipse_g, 4))*pow(Ellipse_m, 4);
	tempy += 0.0013888888888888888888888888889*Ellipse_N*Ellipse_t*(61 - 58 * pow(Ellipse_t, 2) + pow(Ellipse_t, 4) + 270 * pow(Ellipse_g, 2) - 330 * pow(Ellipse_g, 2)*pow(Ellipse_t, 2))*pow(Ellipse_m, 6);
	tempy += 0.0000248015873015873*Ellipse_t*Ellipse_N*pow(Ellipse_m, 8)*(1385 - 3111 * pow(Ellipse_t, 2) + 543 * pow(Ellipse_t, 4) - pow(Ellipse_t, 6));

	double tempx = Ellipse_N*Ellipse_m + Ellipse_N*pow(Ellipse_m, 3)*(1 - pow(Ellipse_t, 2) + pow(Ellipse_g, 2))*0.16666666666666666666666666666666666667;
	tempx += Ellipse_N*(5 - 18 * pow(Ellipse_t, 2) + pow(Ellipse_t, 4) + 14 * pow(Ellipse_g, 2) - 58 * pow(Ellipse_g, 2)*pow(Ellipse_t, 2))*pow(Ellipse_m, 5)*0.008333333333333333333333333333;
	tempx += Ellipse_N*(61 - 479 * pow(Ellipse_t, 2) + 179 * pow(Ellipse_t, 4) - pow(Ellipse_t, 6))*pow(Ellipse_m, 7)*0.000198412698412698 + 500000;

	tempx = tempx * 100 - OriginX * 100;     //cm
	tempy = tempy * 100 - OriginY * 100;     //cm

	tempx += OffsetX * 100;
	tempy += OffsetY * 100;

	//coordinate[0]=fixIn->header.stamp;
    coordinate[0] = (tempx) / 100.0;
    coordinate[1] = (tempy) / 100.0;
    coordinate[2]=fixIn->altitude;
	if (fixIn->position_covariance[0]<0.01 && fixIn->position_covariance[4]<0.01 && fixIn->position_covariance[8]<0.05 && yaw_flag) {
	yaw_flag=false;
		gps_data << std::fixed << std::setprecision(12) << fixIn->header.stamp << " " << coordinate[0] << " "
				 << coordinate[1] << " " << coordinate[2] << " " << coordinate[3]<<" "<< coordinate[4]<<" "<<coordinate[5]<<" "<<coordinate[6]<< std::endl;//投影之后的x,y
	}

}

int main(int argc, char** argv)
{
	ros::init(argc, argv, "fix");
	ros::NodeHandle nh;
    gps_data.open ("/home/hl/helei_ws/src/loam_velodyne/txt/fix.txt");//保存x,y
//    fix_raw = nh.subscribe("/Inertial/gps/fix",10,fix_raw_callback);
orientation= nh.subscribe("/Inertial/imu/data",100,orientation_callback);
	fix = nh.subscribe("/Inertial/gps/fix",10,fix_callback);
//	yaw= nh.subscribe("yaw_filtered",10,yaw_callback);
	

	ros::MultiThreadedSpinner spinner(16); // Use all threads
	spinner.spin(); // spin() will not return until the node has been shutdown
}
