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
include examples/CMakeFiles/jemalloc_address.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include examples/CMakeFiles/jemalloc_address.dir/compiler_depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/jemalloc_address.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/jemalloc_address.dir/flags.make

examples/CMakeFiles/jemalloc_address.dir/jemalloc.cpp.o: examples/CMakeFiles/jemalloc_address.dir/flags.make
examples/CMakeFiles/jemalloc_address.dir/jemalloc.cpp.o: ../examples/jemalloc.cpp
examples/CMakeFiles/jemalloc_address.dir/jemalloc.cpp.o: examples/CMakeFiles/jemalloc_address.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/duda/Downloads/programming/b63/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/CMakeFiles/jemalloc_address.dir/jemalloc.cpp.o"
	cd /home/duda/Downloads/programming/b63/build/examples && /nix/store/lsyzzki1iv9gwk4vdss7i1cjxrnxling-gcc-wrapper-11.3.0/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT examples/CMakeFiles/jemalloc_address.dir/jemalloc.cpp.o -MF CMakeFiles/jemalloc_address.dir/jemalloc.cpp.o.d -o CMakeFiles/jemalloc_address.dir/jemalloc.cpp.o -c /home/duda/Downloads/programming/b63/examples/jemalloc.cpp

examples/CMakeFiles/jemalloc_address.dir/jemalloc.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/jemalloc_address.dir/jemalloc.cpp.i"
	cd /home/duda/Downloads/programming/b63/build/examples && /nix/store/lsyzzki1iv9gwk4vdss7i1cjxrnxling-gcc-wrapper-11.3.0/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/duda/Downloads/programming/b63/examples/jemalloc.cpp > CMakeFiles/jemalloc_address.dir/jemalloc.cpp.i

examples/CMakeFiles/jemalloc_address.dir/jemalloc.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/jemalloc_address.dir/jemalloc.cpp.s"
	cd /home/duda/Downloads/programming/b63/build/examples && /nix/store/lsyzzki1iv9gwk4vdss7i1cjxrnxling-gcc-wrapper-11.3.0/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/duda/Downloads/programming/b63/examples/jemalloc.cpp -o CMakeFiles/jemalloc_address.dir/jemalloc.cpp.s

# Object files for target jemalloc_address
jemalloc_address_OBJECTS = \
"CMakeFiles/jemalloc_address.dir/jemalloc.cpp.o"

# External object files for target jemalloc_address
jemalloc_address_EXTERNAL_OBJECTS =

examples/jemalloc_address: examples/CMakeFiles/jemalloc_address.dir/jemalloc.cpp.o
examples/jemalloc_address: examples/CMakeFiles/jemalloc_address.dir/build.make
examples/jemalloc_address: examples/CMakeFiles/jemalloc_address.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/duda/Downloads/programming/b63/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable jemalloc_address"
	cd /home/duda/Downloads/programming/b63/build/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/jemalloc_address.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/CMakeFiles/jemalloc_address.dir/build: examples/jemalloc_address
.PHONY : examples/CMakeFiles/jemalloc_address.dir/build

examples/CMakeFiles/jemalloc_address.dir/clean:
	cd /home/duda/Downloads/programming/b63/build/examples && $(CMAKE_COMMAND) -P CMakeFiles/jemalloc_address.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/jemalloc_address.dir/clean

examples/CMakeFiles/jemalloc_address.dir/depend:
	cd /home/duda/Downloads/programming/b63/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/duda/Downloads/programming/b63 /home/duda/Downloads/programming/b63/examples /home/duda/Downloads/programming/b63/build /home/duda/Downloads/programming/b63/build/examples /home/duda/Downloads/programming/b63/build/examples/CMakeFiles/jemalloc_address.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/CMakeFiles/jemalloc_address.dir/depend

