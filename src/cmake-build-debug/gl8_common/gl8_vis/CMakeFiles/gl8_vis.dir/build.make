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
CMAKE_BINARY_DIR = /home/hl/google/src/cmake-build-debug

# Include any dependencies generated for this target.
include gl8_common/gl8_vis/CMakeFiles/gl8_vis.dir/depend.make

# Include the progress variables for this target.
include gl8_common/gl8_vis/CMakeFiles/gl8_vis.dir/progress.make

# Include the compile flags for this target's objects.
include gl8_common/gl8_vis/CMakeFiles/gl8_vis.dir/flags.make

gl8_common/gl8_vis/CMakeFiles/gl8_vis.dir/src/vis2d.cpp.o: gl8_common/gl8_vis/CMakeFiles/gl8_vis.dir/flags.make
gl8_common/gl8_vis/CMakeFiles/gl8_vis.dir/src/vis2d.cpp.o: ../gl8_common/gl8_vis/src/vis2d.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hl/google/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object gl8_common/gl8_vis/CMakeFiles/gl8_vis.dir/src/vis2d.cpp.o"
	cd /home/hl/google/src/cmake-build-debug/gl8_common/gl8_vis && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/gl8_vis.dir/src/vis2d.cpp.o -c /home/hl/google/src/gl8_common/gl8_vis/src/vis2d.cpp

gl8_common/gl8_vis/CMakeFiles/gl8_vis.dir/src/vis2d.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gl8_vis.dir/src/vis2d.cpp.i"
	cd /home/hl/google/src/cmake-build-debug/gl8_common/gl8_vis && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hl/google/src/gl8_common/gl8_vis/src/vis2d.cpp > CMakeFiles/gl8_vis.dir/src/vis2d.cpp.i

gl8_common/gl8_vis/CMakeFiles/gl8_vis.dir/src/vis2d.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gl8_vis.dir/src/vis2d.cpp.s"
	cd /home/hl/google/src/cmake-build-debug/gl8_common/gl8_vis && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hl/google/src/gl8_common/gl8_vis/src/vis2d.cpp -o CMakeFiles/gl8_vis.dir/src/vis2d.cpp.s

gl8_common/gl8_vis/CMakeFiles/gl8_vis.dir/src/vis2d.cpp.o.requires:

.PHONY : gl8_common/gl8_vis/CMakeFiles/gl8_vis.dir/src/vis2d.cpp.o.requires

gl8_common/gl8_vis/CMakeFiles/gl8_vis.dir/src/vis2d.cpp.o.provides: gl8_common/gl8_vis/CMakeFiles/gl8_vis.dir/src/vis2d.cpp.o.requires
	$(MAKE) -f gl8_common/gl8_vis/CMakeFiles/gl8_vis.dir/build.make gl8_common/gl8_vis/CMakeFiles/gl8_vis.dir/src/vis2d.cpp.o.provides.build
.PHONY : gl8_common/gl8_vis/CMakeFiles/gl8_vis.dir/src/vis2d.cpp.o.provides

gl8_common/gl8_vis/CMakeFiles/gl8_vis.dir/src/vis2d.cpp.o.provides.build: gl8_common/gl8_vis/CMakeFiles/gl8_vis.dir/src/vis2d.cpp.o


gl8_common/gl8_vis/CMakeFiles/gl8_vis.dir/src/vis3d.cpp.o: gl8_common/gl8_vis/CMakeFiles/gl8_vis.dir/flags.make
gl8_common/gl8_vis/CMakeFiles/gl8_vis.dir/src/vis3d.cpp.o: ../gl8_common/gl8_vis/src/vis3d.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hl/google/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object gl8_common/gl8_vis/CMakeFiles/gl8_vis.dir/src/vis3d.cpp.o"
	cd /home/hl/google/src/cmake-build-debug/gl8_common/gl8_vis && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/gl8_vis.dir/src/vis3d.cpp.o -c /home/hl/google/src/gl8_common/gl8_vis/src/vis3d.cpp

gl8_common/gl8_vis/CMakeFiles/gl8_vis.dir/src/vis3d.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gl8_vis.dir/src/vis3d.cpp.i"
	cd /home/hl/google/src/cmake-build-debug/gl8_common/gl8_vis && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hl/google/src/gl8_common/gl8_vis/src/vis3d.cpp > CMakeFiles/gl8_vis.dir/src/vis3d.cpp.i

gl8_common/gl8_vis/CMakeFiles/gl8_vis.dir/src/vis3d.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gl8_vis.dir/src/vis3d.cpp.s"
	cd /home/hl/google/src/cmake-build-debug/gl8_common/gl8_vis && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hl/google/src/gl8_common/gl8_vis/src/vis3d.cpp -o CMakeFiles/gl8_vis.dir/src/vis3d.cpp.s

gl8_common/gl8_vis/CMakeFiles/gl8_vis.dir/src/vis3d.cpp.o.requires:

.PHONY : gl8_common/gl8_vis/CMakeFiles/gl8_vis.dir/src/vis3d.cpp.o.requires

gl8_common/gl8_vis/CMakeFiles/gl8_vis.dir/src/vis3d.cpp.o.provides: gl8_common/gl8_vis/CMakeFiles/gl8_vis.dir/src/vis3d.cpp.o.requires
	$(MAKE) -f gl8_common/gl8_vis/CMakeFiles/gl8_vis.dir/build.make gl8_common/gl8_vis/CMakeFiles/gl8_vis.dir/src/vis3d.cpp.o.provides.build
.PHONY : gl8_common/gl8_vis/CMakeFiles/gl8_vis.dir/src/vis3d.cpp.o.provides

gl8_common/gl8_vis/CMakeFiles/gl8_vis.dir/src/vis3d.cpp.o.provides.build: gl8_common/gl8_vis/CMakeFiles/gl8_vis.dir/src/vis3d.cpp.o


# Object files for target gl8_vis
gl8_vis_OBJECTS = \
"CMakeFiles/gl8_vis.dir/src/vis2d.cpp.o" \
"CMakeFiles/gl8_vis.dir/src/vis3d.cpp.o"

# External object files for target gl8_vis
gl8_vis_EXTERNAL_OBJECTS =

devel/lib/libgl8_vis.so: gl8_common/gl8_vis/CMakeFiles/gl8_vis.dir/src/vis2d.cpp.o
devel/lib/libgl8_vis.so: gl8_common/gl8_vis/CMakeFiles/gl8_vis.dir/src/vis3d.cpp.o
devel/lib/libgl8_vis.so: gl8_common/gl8_vis/CMakeFiles/gl8_vis.dir/build.make
devel/lib/libgl8_vis.so: /usr/lib/x86_64-linux-gnu/libopencv_videostab.so.2.4.8
devel/lib/libgl8_vis.so: /usr/lib/x86_64-linux-gnu/libopencv_superres.so.2.4.8
devel/lib/libgl8_vis.so: /usr/lib/x86_64-linux-gnu/libopencv_stitching.so.2.4.8
devel/lib/libgl8_vis.so: /usr/lib/x86_64-linux-gnu/libopencv_ocl.so.2.4.8
devel/lib/libgl8_vis.so: /usr/lib/x86_64-linux-gnu/libopencv_gpu.so.2.4.8
devel/lib/libgl8_vis.so: /usr/lib/x86_64-linux-gnu/libopencv_contrib.so.2.4.8
devel/lib/libgl8_vis.so: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.2.4.8
devel/lib/libgl8_vis.so: /usr/lib/x86_64-linux-gnu/libopencv_legacy.so.2.4.8
devel/lib/libgl8_vis.so: /usr/lib/x86_64-linux-gnu/libopencv_video.so.2.4.8
devel/lib/libgl8_vis.so: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.2.4.8
devel/lib/libgl8_vis.so: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.2.4.8
devel/lib/libgl8_vis.so: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.2.4.8
devel/lib/libgl8_vis.so: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.2.4.8
devel/lib/libgl8_vis.so: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.2.4.8
devel/lib/libgl8_vis.so: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.2.4.8
devel/lib/libgl8_vis.so: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.2.4.8
devel/lib/libgl8_vis.so: /usr/lib/x86_64-linux-gnu/libopencv_core.so.2.4.8
devel/lib/libgl8_vis.so: gl8_common/gl8_vis/CMakeFiles/gl8_vis.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/hl/google/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX shared library ../../devel/lib/libgl8_vis.so"
	cd /home/hl/google/src/cmake-build-debug/gl8_common/gl8_vis && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gl8_vis.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
gl8_common/gl8_vis/CMakeFiles/gl8_vis.dir/build: devel/lib/libgl8_vis.so

.PHONY : gl8_common/gl8_vis/CMakeFiles/gl8_vis.dir/build

gl8_common/gl8_vis/CMakeFiles/gl8_vis.dir/requires: gl8_common/gl8_vis/CMakeFiles/gl8_vis.dir/src/vis2d.cpp.o.requires
gl8_common/gl8_vis/CMakeFiles/gl8_vis.dir/requires: gl8_common/gl8_vis/CMakeFiles/gl8_vis.dir/src/vis3d.cpp.o.requires

.PHONY : gl8_common/gl8_vis/CMakeFiles/gl8_vis.dir/requires

gl8_common/gl8_vis/CMakeFiles/gl8_vis.dir/clean:
	cd /home/hl/google/src/cmake-build-debug/gl8_common/gl8_vis && $(CMAKE_COMMAND) -P CMakeFiles/gl8_vis.dir/cmake_clean.cmake
.PHONY : gl8_common/gl8_vis/CMakeFiles/gl8_vis.dir/clean

gl8_common/gl8_vis/CMakeFiles/gl8_vis.dir/depend:
	cd /home/hl/google/src/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hl/google/src /home/hl/google/src/gl8_common/gl8_vis /home/hl/google/src/cmake-build-debug /home/hl/google/src/cmake-build-debug/gl8_common/gl8_vis /home/hl/google/src/cmake-build-debug/gl8_common/gl8_vis/CMakeFiles/gl8_vis.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : gl8_common/gl8_vis/CMakeFiles/gl8_vis.dir/depend

