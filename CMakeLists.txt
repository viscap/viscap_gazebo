cmake_minimum_required(VERSION 2.8.3)
project(viscap_gazebo)

find_package(catkin REQUIRED COMPONENTS
    imav_2017
)

catkin_package(
    CATKIN_DEPENDS imav_2017
)

include_directories(
    ${catkin_INCLUDE_DIRS}
)
