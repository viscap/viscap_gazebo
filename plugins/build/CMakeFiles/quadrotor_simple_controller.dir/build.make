# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/faeru/simulation/ros_catkin_ws/src/viscap_gazebo/plugins

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/faeru/simulation/ros_catkin_ws/src/viscap_gazebo/plugins/build

# Include any dependencies generated for this target.
include CMakeFiles/quadrotor_simple_controller.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/quadrotor_simple_controller.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/quadrotor_simple_controller.dir/flags.make

CMakeFiles/quadrotor_simple_controller.dir/src/quadrotor_simple_controller.cpp.o: CMakeFiles/quadrotor_simple_controller.dir/flags.make
CMakeFiles/quadrotor_simple_controller.dir/src/quadrotor_simple_controller.cpp.o: ../src/quadrotor_simple_controller.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/faeru/simulation/ros_catkin_ws/src/viscap_gazebo/plugins/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/quadrotor_simple_controller.dir/src/quadrotor_simple_controller.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/quadrotor_simple_controller.dir/src/quadrotor_simple_controller.cpp.o -c /home/faeru/simulation/ros_catkin_ws/src/viscap_gazebo/plugins/src/quadrotor_simple_controller.cpp

CMakeFiles/quadrotor_simple_controller.dir/src/quadrotor_simple_controller.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/quadrotor_simple_controller.dir/src/quadrotor_simple_controller.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/faeru/simulation/ros_catkin_ws/src/viscap_gazebo/plugins/src/quadrotor_simple_controller.cpp > CMakeFiles/quadrotor_simple_controller.dir/src/quadrotor_simple_controller.cpp.i

CMakeFiles/quadrotor_simple_controller.dir/src/quadrotor_simple_controller.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/quadrotor_simple_controller.dir/src/quadrotor_simple_controller.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/faeru/simulation/ros_catkin_ws/src/viscap_gazebo/plugins/src/quadrotor_simple_controller.cpp -o CMakeFiles/quadrotor_simple_controller.dir/src/quadrotor_simple_controller.cpp.s

CMakeFiles/quadrotor_simple_controller.dir/src/quadrotor_simple_controller.cpp.o.requires:
.PHONY : CMakeFiles/quadrotor_simple_controller.dir/src/quadrotor_simple_controller.cpp.o.requires

CMakeFiles/quadrotor_simple_controller.dir/src/quadrotor_simple_controller.cpp.o.provides: CMakeFiles/quadrotor_simple_controller.dir/src/quadrotor_simple_controller.cpp.o.requires
	$(MAKE) -f CMakeFiles/quadrotor_simple_controller.dir/build.make CMakeFiles/quadrotor_simple_controller.dir/src/quadrotor_simple_controller.cpp.o.provides.build
.PHONY : CMakeFiles/quadrotor_simple_controller.dir/src/quadrotor_simple_controller.cpp.o.provides

CMakeFiles/quadrotor_simple_controller.dir/src/quadrotor_simple_controller.cpp.o.provides.build: CMakeFiles/quadrotor_simple_controller.dir/src/quadrotor_simple_controller.cpp.o

# Object files for target quadrotor_simple_controller
quadrotor_simple_controller_OBJECTS = \
"CMakeFiles/quadrotor_simple_controller.dir/src/quadrotor_simple_controller.cpp.o"

# External object files for target quadrotor_simple_controller
quadrotor_simple_controller_EXTERNAL_OBJECTS =

libquadrotor_simple_controller.so: CMakeFiles/quadrotor_simple_controller.dir/src/quadrotor_simple_controller.cpp.o
libquadrotor_simple_controller.so: CMakeFiles/quadrotor_simple_controller.dir/build.make
libquadrotor_simple_controller.so: CMakeFiles/quadrotor_simple_controller.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared library libquadrotor_simple_controller.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/quadrotor_simple_controller.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/quadrotor_simple_controller.dir/build: libquadrotor_simple_controller.so
.PHONY : CMakeFiles/quadrotor_simple_controller.dir/build

CMakeFiles/quadrotor_simple_controller.dir/requires: CMakeFiles/quadrotor_simple_controller.dir/src/quadrotor_simple_controller.cpp.o.requires
.PHONY : CMakeFiles/quadrotor_simple_controller.dir/requires

CMakeFiles/quadrotor_simple_controller.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/quadrotor_simple_controller.dir/cmake_clean.cmake
.PHONY : CMakeFiles/quadrotor_simple_controller.dir/clean

CMakeFiles/quadrotor_simple_controller.dir/depend:
	cd /home/faeru/simulation/ros_catkin_ws/src/viscap_gazebo/plugins/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/faeru/simulation/ros_catkin_ws/src/viscap_gazebo/plugins /home/faeru/simulation/ros_catkin_ws/src/viscap_gazebo/plugins /home/faeru/simulation/ros_catkin_ws/src/viscap_gazebo/plugins/build /home/faeru/simulation/ros_catkin_ws/src/viscap_gazebo/plugins/build /home/faeru/simulation/ros_catkin_ws/src/viscap_gazebo/plugins/build/CMakeFiles/quadrotor_simple_controller.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/quadrotor_simple_controller.dir/depend

