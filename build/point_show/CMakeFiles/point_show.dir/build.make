# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.6

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/hl/google/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/hl/google/build

# Include any dependencies generated for this target.
include point_show/CMakeFiles/point_show.dir/depend.make

# Include the progress variables for this target.
include point_show/CMakeFiles/point_show.dir/progress.make

# Include the compile flags for this target's objects.
include point_show/CMakeFiles/point_show.dir/flags.make

point_show/CMakeFiles/point_show.dir/point_show.cpp.o: point_show/CMakeFiles/point_show.dir/flags.make
point_show/CMakeFiles/point_show.dir/point_show.cpp.o: /home/hl/google/src/point_show/point_show.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hl/google/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object point_show/CMakeFiles/point_show.dir/point_show.cpp.o"
	cd /home/hl/google/build/point_show && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/point_show.dir/point_show.cpp.o -c /home/hl/google/src/point_show/point_show.cpp

point_show/CMakeFiles/point_show.dir/point_show.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/point_show.dir/point_show.cpp.i"
	cd /home/hl/google/build/point_show && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hl/google/src/point_show/point_show.cpp > CMakeFiles/point_show.dir/point_show.cpp.i

point_show/CMakeFiles/point_show.dir/point_show.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/point_show.dir/point_show.cpp.s"
	cd /home/hl/google/build/point_show && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hl/google/src/point_show/point_show.cpp -o CMakeFiles/point_show.dir/point_show.cpp.s

point_show/CMakeFiles/point_show.dir/point_show.cpp.o.requires:

.PHONY : point_show/CMakeFiles/point_show.dir/point_show.cpp.o.requires

point_show/CMakeFiles/point_show.dir/point_show.cpp.o.provides: point_show/CMakeFiles/point_show.dir/point_show.cpp.o.requires
	$(MAKE) -f point_show/CMakeFiles/point_show.dir/build.make point_show/CMakeFiles/point_show.dir/point_show.cpp.o.provides.build
.PHONY : point_show/CMakeFiles/point_show.dir/point_show.cpp.o.provides

point_show/CMakeFiles/point_show.dir/point_show.cpp.o.provides.build: point_show/CMakeFiles/point_show.dir/point_show.cpp.o


# Object files for target point_show
point_show_OBJECTS = \
"CMakeFiles/point_show.dir/point_show.cpp.o"

# External object files for target point_show
point_show_EXTERNAL_OBJECTS =

/home/hl/google/devel/lib/point_show/point_show: point_show/CMakeFiles/point_show.dir/point_show.cpp.o
/home/hl/google/devel/lib/point_show/point_show: point_show/CMakeFiles/point_show.dir/build.make
/home/hl/google/devel/lib/point_show/point_show: /opt/ros/indigo/lib/libpcl_ros_filters.so
/home/hl/google/devel/lib/point_show/point_show: /opt/ros/indigo/lib/libpcl_ros_io.so
/home/hl/google/devel/lib/point_show/point_show: /opt/ros/indigo/lib/libpcl_ros_tf.so
/home/hl/google/devel/lib/point_show/point_show: /usr/lib/libpcl_common.so
/home/hl/google/devel/lib/point_show/point_show: /usr/lib/libpcl_octree.so
/home/hl/google/devel/lib/point_show/point_show: /usr/lib/libpcl_io.so
/home/hl/google/devel/lib/point_show/point_show: /usr/lib/libpcl_kdtree.so
/home/hl/google/devel/lib/point_show/point_show: /usr/lib/libpcl_search.so
/home/hl/google/devel/lib/point_show/point_show: /usr/lib/libpcl_sample_consensus.so
/home/hl/google/devel/lib/point_show/point_show: /usr/lib/libpcl_filters.so
/home/hl/google/devel/lib/point_show/point_show: /usr/lib/libpcl_features.so
/home/hl/google/devel/lib/point_show/point_show: /usr/lib/libpcl_keypoints.so
/home/hl/google/devel/lib/point_show/point_show: /usr/lib/libpcl_segmentation.so
/home/hl/google/devel/lib/point_show/point_show: /usr/lib/libpcl_visualization.so
/home/hl/google/devel/lib/point_show/point_show: /usr/lib/libpcl_outofcore.so
/home/hl/google/devel/lib/point_show/point_show: /usr/lib/libpcl_registration.so
/home/hl/google/devel/lib/point_show/point_show: /usr/lib/libpcl_recognition.so
/home/hl/google/devel/lib/point_show/point_show: /usr/lib/libpcl_surface.so
/home/hl/google/devel/lib/point_show/point_show: /usr/lib/libpcl_people.so
/home/hl/google/devel/lib/point_show/point_show: /usr/lib/libpcl_tracking.so
/home/hl/google/devel/lib/point_show/point_show: /usr/lib/libpcl_apps.so
/home/hl/google/devel/lib/point_show/point_show: /usr/lib/x86_64-linux-gnu/libboost_iostreams.so
/home/hl/google/devel/lib/point_show/point_show: /usr/lib/x86_64-linux-gnu/libboost_serialization.so
/home/hl/google/devel/lib/point_show/point_show: /usr/lib/x86_64-linux-gnu/libqhull.so
/home/hl/google/devel/lib/point_show/point_show: /usr/lib/libOpenNI.so
/home/hl/google/devel/lib/point_show/point_show: /usr/lib/x86_64-linux-gnu/libflann_cpp_s.a
/home/hl/google/devel/lib/point_show/point_show: /usr/lib/libvtkCommon.so.5.8.0
/home/hl/google/devel/lib/point_show/point_show: /usr/lib/libvtkRendering.so.5.8.0
/home/hl/google/devel/lib/point_show/point_show: /usr/lib/libvtkHybrid.so.5.8.0
/home/hl/google/devel/lib/point_show/point_show: /usr/lib/libvtkCharts.so.5.8.0
/home/hl/google/devel/lib/point_show/point_show: /opt/ros/indigo/lib/libdynamic_reconfigure_config_init_mutex.so
/home/hl/google/devel/lib/point_show/point_show: /opt/ros/indigo/lib/libnodeletlib.so
/home/hl/google/devel/lib/point_show/point_show: /opt/ros/indigo/lib/libbondcpp.so
/home/hl/google/devel/lib/point_show/point_show: /usr/lib/x86_64-linux-gnu/libuuid.so
/home/hl/google/devel/lib/point_show/point_show: /usr/lib/x86_64-linux-gnu/libtinyxml.so
/home/hl/google/devel/lib/point_show/point_show: /opt/ros/indigo/lib/libclass_loader.so
/home/hl/google/devel/lib/point_show/point_show: /usr/lib/libPocoFoundation.so
/home/hl/google/devel/lib/point_show/point_show: /usr/lib/x86_64-linux-gnu/libdl.so
/home/hl/google/devel/lib/point_show/point_show: /opt/ros/indigo/lib/libroslib.so
/home/hl/google/devel/lib/point_show/point_show: /opt/ros/indigo/lib/librosbag.so
/home/hl/google/devel/lib/point_show/point_show: /opt/ros/indigo/lib/librosbag_storage.so
/home/hl/google/devel/lib/point_show/point_show: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
/home/hl/google/devel/lib/point_show/point_show: /opt/ros/indigo/lib/libroslz4.so
/home/hl/google/devel/lib/point_show/point_show: /usr/lib/x86_64-linux-gnu/liblz4.so
/home/hl/google/devel/lib/point_show/point_show: /opt/ros/indigo/lib/libtopic_tools.so
/home/hl/google/devel/lib/point_show/point_show: /opt/ros/indigo/lib/libtf.so
/home/hl/google/devel/lib/point_show/point_show: /opt/ros/indigo/lib/liborocos-kdl.so
/home/hl/google/devel/lib/point_show/point_show: /opt/ros/indigo/lib/liborocos-kdl.so.1.3.0
/home/hl/google/devel/lib/point_show/point_show: /opt/ros/indigo/lib/libtf2_ros.so
/home/hl/google/devel/lib/point_show/point_show: /opt/ros/indigo/lib/libactionlib.so
/home/hl/google/devel/lib/point_show/point_show: /opt/ros/indigo/lib/libmessage_filters.so
/home/hl/google/devel/lib/point_show/point_show: /opt/ros/indigo/lib/libroscpp.so
/home/hl/google/devel/lib/point_show/point_show: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/hl/google/devel/lib/point_show/point_show: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/hl/google/devel/lib/point_show/point_show: /opt/ros/indigo/lib/librosconsole.so
/home/hl/google/devel/lib/point_show/point_show: /opt/ros/indigo/lib/librosconsole_log4cxx.so
/home/hl/google/devel/lib/point_show/point_show: /opt/ros/indigo/lib/librosconsole_backend_interface.so
/home/hl/google/devel/lib/point_show/point_show: /usr/lib/liblog4cxx.so
/home/hl/google/devel/lib/point_show/point_show: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/hl/google/devel/lib/point_show/point_show: /opt/ros/indigo/lib/libxmlrpcpp.so
/home/hl/google/devel/lib/point_show/point_show: /opt/ros/indigo/lib/libtf2.so
/home/hl/google/devel/lib/point_show/point_show: /opt/ros/indigo/lib/libroscpp_serialization.so
/home/hl/google/devel/lib/point_show/point_show: /opt/ros/indigo/lib/librostime.so
/home/hl/google/devel/lib/point_show/point_show: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/hl/google/devel/lib/point_show/point_show: /opt/ros/indigo/lib/libcpp_common.so
/home/hl/google/devel/lib/point_show/point_show: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/hl/google/devel/lib/point_show/point_show: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/hl/google/devel/lib/point_show/point_show: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/hl/google/devel/lib/point_show/point_show: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/hl/google/devel/lib/point_show/point_show: point_show/CMakeFiles/point_show.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/hl/google/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/hl/google/devel/lib/point_show/point_show"
	cd /home/hl/google/build/point_show && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/point_show.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
point_show/CMakeFiles/point_show.dir/build: /home/hl/google/devel/lib/point_show/point_show

.PHONY : point_show/CMakeFiles/point_show.dir/build

point_show/CMakeFiles/point_show.dir/requires: point_show/CMakeFiles/point_show.dir/point_show.cpp.o.requires

.PHONY : point_show/CMakeFiles/point_show.dir/requires

point_show/CMakeFiles/point_show.dir/clean:
	cd /home/hl/google/build/point_show && $(CMAKE_COMMAND) -P CMakeFiles/point_show.dir/cmake_clean.cmake
.PHONY : point_show/CMakeFiles/point_show.dir/clean

point_show/CMakeFiles/point_show.dir/depend:
	cd /home/hl/google/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hl/google/src /home/hl/google/src/point_show /home/hl/google/build /home/hl/google/build/point_show /home/hl/google/build/point_show/CMakeFiles/point_show.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : point_show/CMakeFiles/point_show.dir/depend

