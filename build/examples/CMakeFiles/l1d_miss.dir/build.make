# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Produce verbose output by default.
VERBOSE = 1

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /nix/store/k7lm30wld0jhdks4maz47v7ak8ydv2g6-cmake-3.22.3/bin/cmake

# The command to remove a file.
RM = /nix/store/k7lm30wld0jhdks4maz47v7ak8ydv2g6-cmake-3.22.3/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/duda/Downloads/programming/b63

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/duda/Downloads/programming/b63/build

# Include any dependencies generated for this target.
include examples/CMakeFiles/l1d_miss.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include examples/CMakeFiles/l1d_miss.dir/compiler_depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/l1d_miss.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/l1d_miss.dir/flags.make

examples/CMakeFiles/l1d_miss.dir/l1d_miss.cpp.o: examples/CMakeFiles/l1d_miss.dir/flags.make
examples/CMakeFiles/l1d_miss.dir/l1d_miss.cpp.o: ../examples/l1d_miss.cpp
examples/CMakeFiles/l1d_miss.dir/l1d_miss.cpp.o: examples/CMakeFiles/l1d_miss.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/duda/Downloads/programming/b63/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/CMakeFiles/l1d_miss.dir/l1d_miss.cpp.o"
	cd /home/duda/Downloads/programming/b63/build/examples && /nix/store/lsyzzki1iv9gwk4vdss7i1cjxrnxling-gcc-wrapper-11.3.0/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT examples/CMakeFiles/l1d_miss.dir/l1d_miss.cpp.o -MF CMakeFiles/l1d_miss.dir/l1d_miss.cpp.o.d -o CMakeFiles/l1d_miss.dir/l1d_miss.cpp.o -c /home/duda/Downloads/programming/b63/examples/l1d_miss.cpp

examples/CMakeFiles/l1d_miss.dir/l1d_miss.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/l1d_miss.dir/l1d_miss.cpp.i"
	cd /home/duda/Downloads/programming/b63/build/examples && /nix/store/lsyzzki1iv9gwk4vdss7i1cjxrnxling-gcc-wrapper-11.3.0/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/duda/Downloads/programming/b63/examples/l1d_miss.cpp > CMakeFiles/l1d_miss.dir/l1d_miss.cpp.i

examples/CMakeFiles/l1d_miss.dir/l1d_miss.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/l1d_miss.dir/l1d_miss.cpp.s"
	cd /home/duda/Downloads/programming/b63/build/examples && /nix/store/lsyzzki1iv9gwk4vdss7i1cjxrnxling-gcc-wrapper-11.3.0/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/duda/Downloads/programming/b63/examples/l1d_miss.cpp -o CMakeFiles/l1d_miss.dir/l1d_miss.cpp.s

# Object files for target l1d_miss
l1d_miss_OBJECTS = \
"CMakeFiles/l1d_miss.dir/l1d_miss.cpp.o"

# External object files for target l1d_miss
l1d_miss_EXTERNAL_OBJECTS =

examples/l1d_miss: examples/CMakeFiles/l1d_miss.dir/l1d_miss.cpp.o
examples/l1d_miss: examples/CMakeFiles/l1d_miss.dir/build.make
examples/l1d_miss: examples/CMakeFiles/l1d_miss.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/duda/Downloads/programming/b63/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable l1d_miss"
	cd /home/duda/Downloads/programming/b63/build/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/l1d_miss.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/CMakeFiles/l1d_miss.dir/build: examples/l1d_miss
.PHONY : examples/CMakeFiles/l1d_miss.dir/build

examples/CMakeFiles/l1d_miss.dir/clean:
	cd /home/duda/Downloads/programming/b63/build/examples && $(CMAKE_COMMAND) -P CMakeFiles/l1d_miss.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/l1d_miss.dir/clean

examples/CMakeFiles/l1d_miss.dir/depend:
	cd /home/duda/Downloads/programming/b63/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/duda/Downloads/programming/b63 /home/duda/Downloads/programming/b63/examples /home/duda/Downloads/programming/b63/build /home/duda/Downloads/programming/b63/build/examples /home/duda/Downloads/programming/b63/build/examples/CMakeFiles/l1d_miss.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/CMakeFiles/l1d_miss.dir/depend

