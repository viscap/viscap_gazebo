// Esse node recebe mensagens do tipo sensor_msgs/Joy geradas por um joystick e converte para mensagens
// geometry_msgs/Twist para controlar o drone na simulação.
#include <ros/ros.h>
#include <geometry_msgs/Twist.h>
#include <sensor_msgs/Joy.h>


double roll = 0.0, pitch = 0.0, yaw = 0.0, throttle = 0.0;
double factor = 1.0;


void joyCb(const sensor_msgs::Joy::ConstPtr& msg)
{
  roll = factor * msg->axes[3];
  pitch = factor * msg->axes[4];
  yaw = factor * msg->axes[0];
  throttle = factor * msg->axes[1];
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "joystick_control");
  ros::NodeHandle nh;

  ros::Subscriber joySubscriber = nh.subscribe("/joy", 1000, joyCb);
  ros::Publisher velPub = nh.advertise<geometry_msgs::Twist>("/quadrotor_1/cmd_vel", 1000);

  ros::Rate rate(10);
  while (ros::ok())
  {
    geometry_msgs::Twist msg;

    msg.linear.x = pitch;
    msg.linear.y = roll;
    msg.linear.z = throttle;
    msg.angular.z = yaw;

    velPub.publish(msg);

    ros::spinOnce();
    rate.sleep();
  }
}
