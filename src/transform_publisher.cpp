// Esse nó publica dois frames no tf: o frame odom do drone e o frame do laser
#include <ros/ros.h>
#include <tf/transform_broadcaster.h>
#include <tf/transform_listener.h>
#include <nav_msgs/Odometry.h>


/*void odomCb(const nav_msgs::OdometryConstPtr& msg){
  static tf::TransformBroadcaster br;
  tf::Transform transform;
  transform.setOrigin( tf::Vector3(msg->pose.pose.position.x, msg->pose.pose.position.y, msg->pose.pose.position.z) );
  transform.setRotation(tf::Quaternion( msg->pose.pose.orientation.x, msg->pose.pose.orientation.y, msg->pose.pose.orientation.z, msg->pose.pose.orientation.w) );
  br.sendTransform(tf::StampedTransform(transform, ros::Time::now(), "map", "odom"));
}*/

int main(int argc, char** argv){
  ros::init(argc, argv, "transform_publisher");
  ros::NodeHandle nh;

  //ros::Subscriber odomSub = nh.subscribe("/quadrotor_1/state", 1000, &odomCb);


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
    laserTransform.setOrigin( baseTransform.getOrigin() + tf::Vector3(0.0, 0.0, 0.08) );
    laserTransform.setRotation( baseTransform.getRotation() * tf::Quaternion(1.0, 0.0, 0.0, 0.0) );
    laserBroadcaster.sendTransform(tf::StampedTransform(laserTransform, ros::Time::now(), "/map", "/quadrotor_1/laser0_frame"));

    ros::spinOnce();
  }
}
