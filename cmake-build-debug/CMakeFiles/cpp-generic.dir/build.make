# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/mrityunjaykumar/educative

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/mrityunjaykumar/educative/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/cpp-generic.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/cpp-generic.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/cpp-generic.dir/flags.make

CMakeFiles/cpp-generic.dir/cpp-generic/intro.cpp.o: CMakeFiles/cpp-generic.dir/flags.make
CMakeFiles/cpp-generic.dir/cpp-generic/intro.cpp.o: ../cpp-generic/intro.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/mrityunjaykumar/educative/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/cpp-generic.dir/cpp-generic/intro.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cpp-generic.dir/cpp-generic/intro.cpp.o -c /Users/mrityunjaykumar/educative/cpp-generic/intro.cpp

CMakeFiles/cpp-generic.dir/cpp-generic/intro.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cpp-generic.dir/cpp-generic/intro.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/mrityunjaykumar/educative/cpp-generic/intro.cpp > CMakeFiles/cpp-generic.dir/cpp-generic/intro.cpp.i

CMakeFiles/cpp-generic.dir/cpp-generic/intro.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cpp-generic.dir/cpp-generic/intro.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/mrityunjaykumar/educative/cpp-generic/intro.cpp -o CMakeFiles/cpp-generic.dir/cpp-generic/intro.cpp.s

# Object files for target cpp-generic
cpp__generic_OBJECTS = \
"CMakeFiles/cpp-generic.dir/cpp-generic/intro.cpp.o"

# External object files for target cpp-generic
cpp__generic_EXTERNAL_OBJECTS =

cpp-generic: CMakeFiles/cpp-generic.dir/cpp-generic/intro.cpp.o
cpp-generic: CMakeFiles/cpp-generic.dir/build.make
cpp-generic: CMakeFiles/cpp-generic.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/mrityunjaykumar/educative/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable cpp-generic"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cpp-generic.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/cpp-generic.dir/build: cpp-generic

.PHONY : CMakeFiles/cpp-generic.dir/build

CMakeFiles/cpp-generic.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/cpp-generic.dir/cmake_clean.cmake
.PHONY : CMakeFiles/cpp-generic.dir/clean

CMakeFiles/cpp-generic.dir/depend:
	cd /Users/mrityunjaykumar/educative/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/mrityunjaykumar/educative /Users/mrityunjaykumar/educative /Users/mrityunjaykumar/educative/cmake-build-debug /Users/mrityunjaykumar/educative/cmake-build-debug /Users/mrityunjaykumar/educative/cmake-build-debug/CMakeFiles/cpp-generic.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/cpp-generic.dir/depend

