#include <ros/ros.h>
#include <sensor_msgs/NavSatFix.h>
#include <geometry_msgs/Twist.h>


double goal_lat = 49.9001713369;
double goal_lon = 8.9000074402;

ros::Subscriber gpsSub;
ros::Publisher velPub;


void gpsCb( const sensor_msgs::NavSatFixPtr& msg )
{
    double velX = goal_lat - msg->latitude;
    double velY = goal_lon - msg->longitude;

    double modulo = sqrt( velX * velX + velY * velY );

    velX /= modulo;
    velY /= modulo;

    geometry_msgs::Twist twist;

    twist.linear.x = velX;
    twist.linear.y = -velY;


    velPub.publish(twist);

}


int main(int argc, char **argv)
{
    // Set up ROS.
    ros::init(argc, argv, "go_to_position");
    ros::NodeHandle nh;

    gpsSub = nh.subscribe("/quadrotor_1/fix", 1000, gpsCb);

    velPub = nh.advertise<geometry_msgs::Twist>("/quadrotor_1/cmd_vel", 1000);



    ros::spin();
}
