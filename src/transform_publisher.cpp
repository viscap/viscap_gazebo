// Esse nó publica o frame do laser no tf
#include <ros/ros.h>
#include <tf/transform_broadcaster.h>
#include <tf/transform_listener.h>
#include <nav_msgs/Odometry.h>

int main(int argc, char** argv){
  ros::init(argc, argv, "transform_publisher");
  ros::NodeHandle nh;

  tf::TransformListener listener;

  while(ros::ok())
  {
    tf::StampedTransform baseTransform;
    try{
      listener.lookupTransform("/map", "/base_link", ros::Time(0), baseTransform);
    }
    catch (tf::TransformException ex){
      ROS_ERROR("%s",ex.what());
      ros::Duration(1.0).sleep();
    }

    static tf::TransformBroadcaster laserBroadcaster;
    tf::Transform laserTransform;
    laserTransform.setOrigin( baseTransform.getOrigin() + tf::Vector3(0.0, 0.0, 0.08) ); // O laser fica 8cm acima da base do quadrotor
    laserTransform.setRotation( baseTransform.getRotation() * tf::Quaternion(1.0, 0.0, 0.0, 0.0) ); // Rotação de 180 graus em torno do eixo X
    laserBroadcaster.sendTransform(tf::StampedTransform(laserTransform, ros::Time::now(), "/map", "/quadrotor_1/laser0_frame"));

    ros::spinOnce();
  }
}
