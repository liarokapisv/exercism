# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/veritas/exercism/cpp/nucleotide-count

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/veritas/exercism/cpp/nucleotide-count/build

# Include any dependencies generated for this target.
include CMakeFiles/nucleotide-count.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/nucleotide-count.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/nucleotide-count.dir/flags.make

CMakeFiles/nucleotide-count.dir/nucleotide_count_test.cpp.o: CMakeFiles/nucleotide-count.dir/flags.make
CMakeFiles/nucleotide-count.dir/nucleotide_count_test.cpp.o: ../nucleotide_count_test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/veritas/exercism/cpp/nucleotide-count/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/nucleotide-count.dir/nucleotide_count_test.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/nucleotide-count.dir/nucleotide_count_test.cpp.o -c /home/veritas/exercism/cpp/nucleotide-count/nucleotide_count_test.cpp

CMakeFiles/nucleotide-count.dir/nucleotide_count_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/nucleotide-count.dir/nucleotide_count_test.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/veritas/exercism/cpp/nucleotide-count/nucleotide_count_test.cpp > CMakeFiles/nucleotide-count.dir/nucleotide_count_test.cpp.i

CMakeFiles/nucleotide-count.dir/nucleotide_count_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/nucleotide-count.dir/nucleotide_count_test.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/veritas/exercism/cpp/nucleotide-count/nucleotide_count_test.cpp -o CMakeFiles/nucleotide-count.dir/nucleotide_count_test.cpp.s

CMakeFiles/nucleotide-count.dir/nucleotide_count_test.cpp.o.requires:

.PHONY : CMakeFiles/nucleotide-count.dir/nucleotide_count_test.cpp.o.requires

CMakeFiles/nucleotide-count.dir/nucleotide_count_test.cpp.o.provides: CMakeFiles/nucleotide-count.dir/nucleotide_count_test.cpp.o.requires
	$(MAKE) -f CMakeFiles/nucleotide-count.dir/build.make CMakeFiles/nucleotide-count.dir/nucleotide_count_test.cpp.o.provides.build
.PHONY : CMakeFiles/nucleotide-count.dir/nucleotide_count_test.cpp.o.provides

CMakeFiles/nucleotide-count.dir/nucleotide_count_test.cpp.o.provides.build: CMakeFiles/nucleotide-count.dir/nucleotide_count_test.cpp.o


CMakeFiles/nucleotide-count.dir/nucleotide_count.cpp.o: CMakeFiles/nucleotide-count.dir/flags.make
CMakeFiles/nucleotide-count.dir/nucleotide_count.cpp.o: ../nucleotide_count.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/veritas/exercism/cpp/nucleotide-count/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/nucleotide-count.dir/nucleotide_count.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/nucleotide-count.dir/nucleotide_count.cpp.o -c /home/veritas/exercism/cpp/nucleotide-count/nucleotide_count.cpp

CMakeFiles/nucleotide-count.dir/nucleotide_count.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/nucleotide-count.dir/nucleotide_count.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/veritas/exercism/cpp/nucleotide-count/nucleotide_count.cpp > CMakeFiles/nucleotide-count.dir/nucleotide_count.cpp.i

CMakeFiles/nucleotide-count.dir/nucleotide_count.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/nucleotide-count.dir/nucleotide_count.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/veritas/exercism/cpp/nucleotide-count/nucleotide_count.cpp -o CMakeFiles/nucleotide-count.dir/nucleotide_count.cpp.s

CMakeFiles/nucleotide-count.dir/nucleotide_count.cpp.o.requires:

.PHONY : CMakeFiles/nucleotide-count.dir/nucleotide_count.cpp.o.requires

CMakeFiles/nucleotide-count.dir/nucleotide_count.cpp.o.provides: CMakeFiles/nucleotide-count.dir/nucleotide_count.cpp.o.requires
	$(MAKE) -f CMakeFiles/nucleotide-count.dir/build.make CMakeFiles/nucleotide-count.dir/nucleotide_count.cpp.o.provides.build
.PHONY : CMakeFiles/nucleotide-count.dir/nucleotide_count.cpp.o.provides

CMakeFiles/nucleotide-count.dir/nucleotide_count.cpp.o.provides.build: CMakeFiles/nucleotide-count.dir/nucleotide_count.cpp.o


# Object files for target nucleotide-count
nucleotide__count_OBJECTS = \
"CMakeFiles/nucleotide-count.dir/nucleotide_count_test.cpp.o" \
"CMakeFiles/nucleotide-count.dir/nucleotide_count.cpp.o"

# External object files for target nucleotide-count
nucleotide__count_EXTERNAL_OBJECTS =

nucleotide-count: CMakeFiles/nucleotide-count.dir/nucleotide_count_test.cpp.o
nucleotide-count: CMakeFiles/nucleotide-count.dir/nucleotide_count.cpp.o
nucleotide-count: CMakeFiles/nucleotide-count.dir/build.make
nucleotide-count: /usr/lib/x86_64-linux-gnu/libboost_unit_test_framework.a
nucleotide-count: /usr/lib/x86_64-linux-gnu/libboost_date_time.a
nucleotide-count: /usr/lib/x86_64-linux-gnu/libboost_regex.a
nucleotide-count: CMakeFiles/nucleotide-count.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/veritas/exercism/cpp/nucleotide-count/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable nucleotide-count"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/nucleotide-count.dir/link.txt --verbose=$(VERBOSE)
	./nucleotide-count

# Rule to build all files generated by this target.
CMakeFiles/nucleotide-count.dir/build: nucleotide-count

.PHONY : CMakeFiles/nucleotide-count.dir/build

CMakeFiles/nucleotide-count.dir/requires: CMakeFiles/nucleotide-count.dir/nucleotide_count_test.cpp.o.requires
CMakeFiles/nucleotide-count.dir/requires: CMakeFiles/nucleotide-count.dir/nucleotide_count.cpp.o.requires

.PHONY : CMakeFiles/nucleotide-count.dir/requires

CMakeFiles/nucleotide-count.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/nucleotide-count.dir/cmake_clean.cmake
.PHONY : CMakeFiles/nucleotide-count.dir/clean

CMakeFiles/nucleotide-count.dir/depend:
	cd /home/veritas/exercism/cpp/nucleotide-count/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/veritas/exercism/cpp/nucleotide-count /home/veritas/exercism/cpp/nucleotide-count /home/veritas/exercism/cpp/nucleotide-count/build /home/veritas/exercism/cpp/nucleotide-count/build /home/veritas/exercism/cpp/nucleotide-count/build/CMakeFiles/nucleotide-count.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/nucleotide-count.dir/depend

