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

# Utility rule file for clean_test_results_serial.

# Include the progress variables for this target.
include serial/tests/CMakeFiles/clean_test_results_serial.dir/progress.make

serial/tests/CMakeFiles/clean_test_results_serial:
	cd /home/hl/google/src/cmake-build-debug/serial/tests && /usr/bin/python /opt/ros/indigo/share/catkin/cmake/test/remove_test_results.py /home/hl/google/src/cmake-build-debug/test_results/serial

clean_test_results_serial: serial/tests/CMakeFiles/clean_test_results_serial
clean_test_results_serial: serial/tests/CMakeFiles/clean_test_results_serial.dir/build.make

.PHONY : clean_test_results_serial

# Rule to build all files generated by this target.
serial/tests/CMakeFiles/clean_test_results_serial.dir/build: clean_test_results_serial

.PHONY : serial/tests/CMakeFiles/clean_test_results_serial.dir/build

serial/tests/CMakeFiles/clean_test_results_serial.dir/clean:
	cd /home/hl/google/src/cmake-build-debug/serial/tests && $(CMAKE_COMMAND) -P CMakeFiles/clean_test_results_serial.dir/cmake_clean.cmake
.PHONY : serial/tests/CMakeFiles/clean_test_results_serial.dir/clean

serial/tests/CMakeFiles/clean_test_results_serial.dir/depend:
	cd /home/hl/google/src/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hl/google/src /home/hl/google/src/serial/tests /home/hl/google/src/cmake-build-debug /home/hl/google/src/cmake-build-debug/serial/tests /home/hl/google/src/cmake-build-debug/serial/tests/CMakeFiles/clean_test_results_serial.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : serial/tests/CMakeFiles/clean_test_results_serial.dir/depend

