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
include optimal_function/CMakeFiles/optimal_function.dir/depend.make

# Include the progress variables for this target.
include optimal_function/CMakeFiles/optimal_function.dir/progress.make

# Include the compile flags for this target's objects.
include optimal_function/CMakeFiles/optimal_function.dir/flags.make

optimal_function/CMakeFiles/optimal_function.dir/src/optimal_funtion.cpp.o: optimal_function/CMakeFiles/optimal_function.dir/flags.make
optimal_function/CMakeFiles/optimal_function.dir/src/optimal_funtion.cpp.o: /home/hl/google/src/optimal_function/src/optimal_funtion.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hl/google/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object optimal_function/CMakeFiles/optimal_function.dir/src/optimal_funtion.cpp.o"
	cd /home/hl/google/build/optimal_function && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/optimal_function.dir/src/optimal_funtion.cpp.o -c /home/hl/google/src/optimal_function/src/optimal_funtion.cpp

optimal_function/CMakeFiles/optimal_function.dir/src/optimal_funtion.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/optimal_function.dir/src/optimal_funtion.cpp.i"
	cd /home/hl/google/build/optimal_function && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hl/google/src/optimal_function/src/optimal_funtion.cpp > CMakeFiles/optimal_function.dir/src/optimal_funtion.cpp.i

optimal_function/CMakeFiles/optimal_function.dir/src/optimal_funtion.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/optimal_function.dir/src/optimal_funtion.cpp.s"
	cd /home/hl/google/build/optimal_function && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hl/google/src/optimal_function/src/optimal_funtion.cpp -o CMakeFiles/optimal_function.dir/src/optimal_funtion.cpp.s

optimal_function/CMakeFiles/optimal_function.dir/src/optimal_funtion.cpp.o.requires:

.PHONY : optimal_function/CMakeFiles/optimal_function.dir/src/optimal_funtion.cpp.o.requires

optimal_function/CMakeFiles/optimal_function.dir/src/optimal_funtion.cpp.o.provides: optimal_function/CMakeFiles/optimal_function.dir/src/optimal_funtion.cpp.o.requires
	$(MAKE) -f optimal_function/CMakeFiles/optimal_function.dir/build.make optimal_function/CMakeFiles/optimal_function.dir/src/optimal_funtion.cpp.o.provides.build
.PHONY : optimal_function/CMakeFiles/optimal_function.dir/src/optimal_funtion.cpp.o.provides

optimal_function/CMakeFiles/optimal_function.dir/src/optimal_funtion.cpp.o.provides.build: optimal_function/CMakeFiles/optimal_function.dir/src/optimal_funtion.cpp.o


# Object files for target optimal_function
optimal_function_OBJECTS = \
"CMakeFiles/optimal_function.dir/src/optimal_funtion.cpp.o"

# External object files for target optimal_function
optimal_function_EXTERNAL_OBJECTS =

/home/hl/google/devel/lib/optimal_function/optimal_function: optimal_function/CMakeFiles/optimal_function.dir/src/optimal_funtion.cpp.o
/home/hl/google/devel/lib/optimal_function/optimal_function: optimal_function/CMakeFiles/optimal_function.dir/build.make
/home/hl/google/devel/lib/optimal_function/optimal_function: /opt/ros/indigo/lib/libpcl_ros_filters.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /opt/ros/indigo/lib/libpcl_ros_io.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /opt/ros/indigo/lib/libpcl_ros_tf.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/libpcl_common.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/libpcl_octree.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/libpcl_io.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/libpcl_kdtree.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/libpcl_search.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/libpcl_sample_consensus.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/libpcl_filters.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/libpcl_features.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/libpcl_keypoints.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/libpcl_segmentation.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/libpcl_visualization.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/libpcl_outofcore.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/libpcl_registration.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/libpcl_recognition.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/libpcl_surface.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/libpcl_people.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/libpcl_tracking.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/libpcl_apps.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/x86_64-linux-gnu/libboost_iostreams.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/x86_64-linux-gnu/libboost_serialization.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/x86_64-linux-gnu/libqhull.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/libOpenNI.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/x86_64-linux-gnu/libflann_cpp_s.a
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/libvtkCommon.so.5.8.0
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/libvtkRendering.so.5.8.0
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/libvtkHybrid.so.5.8.0
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/libvtkCharts.so.5.8.0
/home/hl/google/devel/lib/optimal_function/optimal_function: /opt/ros/indigo/lib/libdynamic_reconfigure_config_init_mutex.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /opt/ros/indigo/lib/libnodeletlib.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /opt/ros/indigo/lib/libbondcpp.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/x86_64-linux-gnu/libuuid.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/x86_64-linux-gnu/libtinyxml.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /opt/ros/indigo/lib/libclass_loader.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/libPocoFoundation.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/x86_64-linux-gnu/libdl.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /opt/ros/indigo/lib/libroslib.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /opt/ros/indigo/lib/librosbag.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /opt/ros/indigo/lib/librosbag_storage.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /opt/ros/indigo/lib/libroslz4.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/x86_64-linux-gnu/liblz4.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /opt/ros/indigo/lib/libtopic_tools.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /opt/ros/indigo/lib/libtf.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /opt/ros/indigo/lib/libtf2_ros.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /opt/ros/indigo/lib/libactionlib.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /opt/ros/indigo/lib/libmessage_filters.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /opt/ros/indigo/lib/libtf2.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /opt/ros/indigo/lib/libroscpp.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /opt/ros/indigo/lib/librosconsole.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /opt/ros/indigo/lib/librosconsole_log4cxx.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /opt/ros/indigo/lib/librosconsole_backend_interface.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/liblog4cxx.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /opt/ros/indigo/lib/libxmlrpcpp.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /opt/ros/indigo/lib/libroscpp_serialization.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /opt/ros/indigo/lib/librostime.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /opt/ros/indigo/lib/libcpp_common.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/local/lib/libceres.a
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/x86_64-linux-gnu/libopencv_videostab.so.2.4.8
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/x86_64-linux-gnu/libopencv_superres.so.2.4.8
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/x86_64-linux-gnu/libopencv_stitching.so.2.4.8
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/x86_64-linux-gnu/libopencv_ocl.so.2.4.8
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/x86_64-linux-gnu/libopencv_gpu.so.2.4.8
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/x86_64-linux-gnu/libopencv_contrib.so.2.4.8
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/x86_64-linux-gnu/libglog.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/x86_64-linux-gnu/libgflags.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/x86_64-linux-gnu/libspqr.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/libtbb.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/libtbbmalloc.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/x86_64-linux-gnu/libcholmod.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/x86_64-linux-gnu/libccolamd.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/x86_64-linux-gnu/libcamd.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/x86_64-linux-gnu/libcolamd.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/x86_64-linux-gnu/libamd.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/liblapack.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/libf77blas.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/libatlas.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/x86_64-linux-gnu/libsuitesparseconfig.a
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/x86_64-linux-gnu/librt.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/local/lib/libmetis.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/x86_64-linux-gnu/libcxsparse.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/x86_64-linux-gnu/libspqr.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/libtbb.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/libtbbmalloc.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/x86_64-linux-gnu/libcholmod.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/x86_64-linux-gnu/libccolamd.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/x86_64-linux-gnu/libcamd.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/x86_64-linux-gnu/libcolamd.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/x86_64-linux-gnu/libamd.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/liblapack.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/libf77blas.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/libatlas.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/x86_64-linux-gnu/libsuitesparseconfig.a
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/x86_64-linux-gnu/librt.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/local/lib/libmetis.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/x86_64-linux-gnu/libcxsparse.so
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.2.4.8
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/x86_64-linux-gnu/libopencv_legacy.so.2.4.8
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/x86_64-linux-gnu/libopencv_video.so.2.4.8
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.2.4.8
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.2.4.8
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.2.4.8
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.2.4.8
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.2.4.8
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.2.4.8
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.2.4.8
/home/hl/google/devel/lib/optimal_function/optimal_function: /usr/lib/x86_64-linux-gnu/libopencv_core.so.2.4.8
/home/hl/google/devel/lib/optimal_function/optimal_function: optimal_function/CMakeFiles/optimal_function.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/hl/google/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/hl/google/devel/lib/optimal_function/optimal_function"
	cd /home/hl/google/build/optimal_function && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/optimal_function.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
optimal_function/CMakeFiles/optimal_function.dir/build: /home/hl/google/devel/lib/optimal_function/optimal_function

.PHONY : optimal_function/CMakeFiles/optimal_function.dir/build

optimal_function/CMakeFiles/optimal_function.dir/requires: optimal_function/CMakeFiles/optimal_function.dir/src/optimal_funtion.cpp.o.requires

.PHONY : optimal_function/CMakeFiles/optimal_function.dir/requires

optimal_function/CMakeFiles/optimal_function.dir/clean:
	cd /home/hl/google/build/optimal_function && $(CMAKE_COMMAND) -P CMakeFiles/optimal_function.dir/cmake_clean.cmake
.PHONY : optimal_function/CMakeFiles/optimal_function.dir/clean

optimal_function/CMakeFiles/optimal_function.dir/depend:
	cd /home/hl/google/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hl/google/src /home/hl/google/src/optimal_function /home/hl/google/build /home/hl/google/build/optimal_function /home/hl/google/build/optimal_function/CMakeFiles/optimal_function.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : optimal_function/CMakeFiles/optimal_function.dir/depend

