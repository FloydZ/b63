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
include examples/CMakeFiles/assert_memory.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include examples/CMakeFiles/assert_memory.dir/compiler_depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/assert_memory.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/assert_memory.dir/flags.make

examples/CMakeFiles/assert_memory.dir/assert.c.o: examples/CMakeFiles/assert_memory.dir/flags.make
examples/CMakeFiles/assert_memory.dir/assert.c.o: ../examples/assert.c
examples/CMakeFiles/assert_memory.dir/assert.c.o: examples/CMakeFiles/assert_memory.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/duda/Downloads/programming/b63/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object examples/CMakeFiles/assert_memory.dir/assert.c.o"
	cd /home/duda/Downloads/programming/b63/build/examples && /nix/store/lsyzzki1iv9gwk4vdss7i1cjxrnxling-gcc-wrapper-11.3.0/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT examples/CMakeFiles/assert_memory.dir/assert.c.o -MF CMakeFiles/assert_memory.dir/assert.c.o.d -o CMakeFiles/assert_memory.dir/assert.c.o -c /home/duda/Downloads/programming/b63/examples/assert.c

examples/CMakeFiles/assert_memory.dir/assert.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/assert_memory.dir/assert.c.i"
	cd /home/duda/Downloads/programming/b63/build/examples && /nix/store/lsyzzki1iv9gwk4vdss7i1cjxrnxling-gcc-wrapper-11.3.0/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/duda/Downloads/programming/b63/examples/assert.c > CMakeFiles/assert_memory.dir/assert.c.i

examples/CMakeFiles/assert_memory.dir/assert.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/assert_memory.dir/assert.c.s"
	cd /home/duda/Downloads/programming/b63/build/examples && /nix/store/lsyzzki1iv9gwk4vdss7i1cjxrnxling-gcc-wrapper-11.3.0/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/duda/Downloads/programming/b63/examples/assert.c -o CMakeFiles/assert_memory.dir/assert.c.s

# Object files for target assert_memory
assert_memory_OBJECTS = \
"CMakeFiles/assert_memory.dir/assert.c.o"

# External object files for target assert_memory
assert_memory_EXTERNAL_OBJECTS =

examples/assert_memory: examples/CMakeFiles/assert_memory.dir/assert.c.o
examples/assert_memory: examples/CMakeFiles/assert_memory.dir/build.make
examples/assert_memory: examples/CMakeFiles/assert_memory.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/duda/Downloads/programming/b63/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable assert_memory"
	cd /home/duda/Downloads/programming/b63/build/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/assert_memory.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/CMakeFiles/assert_memory.dir/build: examples/assert_memory
.PHONY : examples/CMakeFiles/assert_memory.dir/build

examples/CMakeFiles/assert_memory.dir/clean:
	cd /home/duda/Downloads/programming/b63/build/examples && $(CMAKE_COMMAND) -P CMakeFiles/assert_memory.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/assert_memory.dir/clean

examples/CMakeFiles/assert_memory.dir/depend:
	cd /home/duda/Downloads/programming/b63/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/duda/Downloads/programming/b63 /home/duda/Downloads/programming/b63/examples /home/duda/Downloads/programming/b63/build /home/duda/Downloads/programming/b63/build/examples /home/duda/Downloads/programming/b63/build/examples/CMakeFiles/assert_memory.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/CMakeFiles/assert_memory.dir/depend

