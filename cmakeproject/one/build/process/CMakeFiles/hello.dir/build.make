# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.18

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/winter/study/cmakeproject/one

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/winter/study/cmakeproject/one/build

# Include any dependencies generated for this target.
include process/CMakeFiles/hello.dir/depend.make

# Include the progress variables for this target.
include process/CMakeFiles/hello.dir/progress.make

# Include the compile flags for this target's objects.
include process/CMakeFiles/hello.dir/flags.make

process/CMakeFiles/hello.dir/src/main.cpp.o: process/CMakeFiles/hello.dir/flags.make
process/CMakeFiles/hello.dir/src/main.cpp.o: ../process/src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/winter/study/cmakeproject/one/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object process/CMakeFiles/hello.dir/src/main.cpp.o"
	cd /home/winter/study/cmakeproject/one/build/process && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/hello.dir/src/main.cpp.o -c /home/winter/study/cmakeproject/one/process/src/main.cpp

process/CMakeFiles/hello.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hello.dir/src/main.cpp.i"
	cd /home/winter/study/cmakeproject/one/build/process && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/winter/study/cmakeproject/one/process/src/main.cpp > CMakeFiles/hello.dir/src/main.cpp.i

process/CMakeFiles/hello.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hello.dir/src/main.cpp.s"
	cd /home/winter/study/cmakeproject/one/build/process && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/winter/study/cmakeproject/one/process/src/main.cpp -o CMakeFiles/hello.dir/src/main.cpp.s

# Object files for target hello
hello_OBJECTS = \
"CMakeFiles/hello.dir/src/main.cpp.o"

# External object files for target hello
hello_EXTERNAL_OBJECTS =

process/hello: process/CMakeFiles/hello.dir/src/main.cpp.o
process/hello: process/CMakeFiles/hello.dir/build.make
process/hello: module/libmodule.so
process/hello: process/CMakeFiles/hello.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/winter/study/cmakeproject/one/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable hello"
	cd /home/winter/study/cmakeproject/one/build/process && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/hello.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
process/CMakeFiles/hello.dir/build: process/hello

.PHONY : process/CMakeFiles/hello.dir/build

process/CMakeFiles/hello.dir/clean:
	cd /home/winter/study/cmakeproject/one/build/process && $(CMAKE_COMMAND) -P CMakeFiles/hello.dir/cmake_clean.cmake
.PHONY : process/CMakeFiles/hello.dir/clean

process/CMakeFiles/hello.dir/depend:
	cd /home/winter/study/cmakeproject/one/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/winter/study/cmakeproject/one /home/winter/study/cmakeproject/one/process /home/winter/study/cmakeproject/one/build /home/winter/study/cmakeproject/one/build/process /home/winter/study/cmakeproject/one/build/process/CMakeFiles/hello.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : process/CMakeFiles/hello.dir/depend
