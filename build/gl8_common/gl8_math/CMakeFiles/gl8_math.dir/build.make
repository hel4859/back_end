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
include gl8_common/gl8_math/CMakeFiles/gl8_math.dir/depend.make

# Include the progress variables for this target.
include gl8_common/gl8_math/CMakeFiles/gl8_math.dir/progress.make

# Include the compile flags for this target's objects.
include gl8_common/gl8_math/CMakeFiles/gl8_math.dir/flags.make

gl8_common/gl8_math/CMakeFiles/gl8_math.dir/src/gl8_math.cpp.o: gl8_common/gl8_math/CMakeFiles/gl8_math.dir/flags.make
gl8_common/gl8_math/CMakeFiles/gl8_math.dir/src/gl8_math.cpp.o: /home/hl/google/src/gl8_common/gl8_math/src/gl8_math.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hl/google/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object gl8_common/gl8_math/CMakeFiles/gl8_math.dir/src/gl8_math.cpp.o"
	cd /home/hl/google/build/gl8_common/gl8_math && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/gl8_math.dir/src/gl8_math.cpp.o -c /home/hl/google/src/gl8_common/gl8_math/src/gl8_math.cpp

gl8_common/gl8_math/CMakeFiles/gl8_math.dir/src/gl8_math.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gl8_math.dir/src/gl8_math.cpp.i"
	cd /home/hl/google/build/gl8_common/gl8_math && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hl/google/src/gl8_common/gl8_math/src/gl8_math.cpp > CMakeFiles/gl8_math.dir/src/gl8_math.cpp.i

gl8_common/gl8_math/CMakeFiles/gl8_math.dir/src/gl8_math.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gl8_math.dir/src/gl8_math.cpp.s"
	cd /home/hl/google/build/gl8_common/gl8_math && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hl/google/src/gl8_common/gl8_math/src/gl8_math.cpp -o CMakeFiles/gl8_math.dir/src/gl8_math.cpp.s

gl8_common/gl8_math/CMakeFiles/gl8_math.dir/src/gl8_math.cpp.o.requires:

.PHONY : gl8_common/gl8_math/CMakeFiles/gl8_math.dir/src/gl8_math.cpp.o.requires

gl8_common/gl8_math/CMakeFiles/gl8_math.dir/src/gl8_math.cpp.o.provides: gl8_common/gl8_math/CMakeFiles/gl8_math.dir/src/gl8_math.cpp.o.requires
	$(MAKE) -f gl8_common/gl8_math/CMakeFiles/gl8_math.dir/build.make gl8_common/gl8_math/CMakeFiles/gl8_math.dir/src/gl8_math.cpp.o.provides.build
.PHONY : gl8_common/gl8_math/CMakeFiles/gl8_math.dir/src/gl8_math.cpp.o.provides

gl8_common/gl8_math/CMakeFiles/gl8_math.dir/src/gl8_math.cpp.o.provides.build: gl8_common/gl8_math/CMakeFiles/gl8_math.dir/src/gl8_math.cpp.o


# Object files for target gl8_math
gl8_math_OBJECTS = \
"CMakeFiles/gl8_math.dir/src/gl8_math.cpp.o"

# External object files for target gl8_math
gl8_math_EXTERNAL_OBJECTS =

/home/hl/google/devel/lib/libgl8_math.so: gl8_common/gl8_math/CMakeFiles/gl8_math.dir/src/gl8_math.cpp.o
/home/hl/google/devel/lib/libgl8_math.so: gl8_common/gl8_math/CMakeFiles/gl8_math.dir/build.make
/home/hl/google/devel/lib/libgl8_math.so: gl8_common/gl8_math/CMakeFiles/gl8_math.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/hl/google/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library /home/hl/google/devel/lib/libgl8_math.so"
	cd /home/hl/google/build/gl8_common/gl8_math && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gl8_math.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
gl8_common/gl8_math/CMakeFiles/gl8_math.dir/build: /home/hl/google/devel/lib/libgl8_math.so

.PHONY : gl8_common/gl8_math/CMakeFiles/gl8_math.dir/build

gl8_common/gl8_math/CMakeFiles/gl8_math.dir/requires: gl8_common/gl8_math/CMakeFiles/gl8_math.dir/src/gl8_math.cpp.o.requires

.PHONY : gl8_common/gl8_math/CMakeFiles/gl8_math.dir/requires

gl8_common/gl8_math/CMakeFiles/gl8_math.dir/clean:
	cd /home/hl/google/build/gl8_common/gl8_math && $(CMAKE_COMMAND) -P CMakeFiles/gl8_math.dir/cmake_clean.cmake
.PHONY : gl8_common/gl8_math/CMakeFiles/gl8_math.dir/clean

gl8_common/gl8_math/CMakeFiles/gl8_math.dir/depend:
	cd /home/hl/google/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hl/google/src /home/hl/google/src/gl8_common/gl8_math /home/hl/google/build /home/hl/google/build/gl8_common/gl8_math /home/hl/google/build/gl8_common/gl8_math/CMakeFiles/gl8_math.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : gl8_common/gl8_math/CMakeFiles/gl8_math.dir/depend

