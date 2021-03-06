# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.21

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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.21.3_1/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.21.3_1/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/munseongjeong/git/cpprest

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/munseongjeong/git/cpprest/build/Debug

# Utility rule file for libcrypto.

# Include any custom commands dependencies for this target.
include app/CMakeFiles/libcrypto.dir/compiler_depend.make

# Include the progress variables for this target.
include app/CMakeFiles/libcrypto.dir/progress.make

app/CMakeFiles/libcrypto: third_party/libcrypto.a

third_party/libcrypto.a:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/munseongjeong/git/cpprest/build/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating ../third_party/libcrypto.a"
	cd /Users/munseongjeong/git/cpprest/third_party/openssl && mkdir -p /Users/munseongjeong/git/cpprest/build/Debug/third_party
	cd /Users/munseongjeong/git/cpprest/third_party/openssl && CC=/usr/bin/clang CXX=/usr/bin/clang++ ./Configure darwin64-arm64-cc --prefix=/Users/munseongjeong/git/cpprest/build/Debug/third_party/openssl no-tests
	cd /Users/munseongjeong/git/cpprest/third_party/openssl && perl configdata.pm --dump
	cd /Users/munseongjeong/git/cpprest/third_party/openssl && make
	cd /Users/munseongjeong/git/cpprest/third_party/openssl && make install
	cd /Users/munseongjeong/git/cpprest/third_party/openssl && cp `find /Users/munseongjeong/git/cpprest/build/Debug/third_party/openssl -name '*.a'` /Users/munseongjeong/git/cpprest/build/Debug/third_party/

libcrypto: app/CMakeFiles/libcrypto
libcrypto: third_party/libcrypto.a
libcrypto: app/CMakeFiles/libcrypto.dir/build.make
.PHONY : libcrypto

# Rule to build all files generated by this target.
app/CMakeFiles/libcrypto.dir/build: libcrypto
.PHONY : app/CMakeFiles/libcrypto.dir/build

app/CMakeFiles/libcrypto.dir/clean:
	cd /Users/munseongjeong/git/cpprest/build/Debug/app && $(CMAKE_COMMAND) -P CMakeFiles/libcrypto.dir/cmake_clean.cmake
.PHONY : app/CMakeFiles/libcrypto.dir/clean

app/CMakeFiles/libcrypto.dir/depend:
	cd /Users/munseongjeong/git/cpprest/build/Debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/munseongjeong/git/cpprest /Users/munseongjeong/git/cpprest/app /Users/munseongjeong/git/cpprest/build/Debug /Users/munseongjeong/git/cpprest/build/Debug/app /Users/munseongjeong/git/cpprest/build/Debug/app/CMakeFiles/libcrypto.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : app/CMakeFiles/libcrypto.dir/depend

