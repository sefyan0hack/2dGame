# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.30

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
CMAKE_COMMAND = "C:/Program Files/CMake/bin/cmake.exe"

# The command to remove a file.
RM = "C:/Program Files/CMake/bin/cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:/Users/sefyan/Documents/2dGame

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:/Users/sefyan/Documents/2dGame/build

# Include any dependencies generated for this target.
include CMakeFiles/glad.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/glad.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/glad.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/glad.dir/flags.make

CMakeFiles/glad.dir/3party/glad/glad.c.obj: CMakeFiles/glad.dir/flags.make
CMakeFiles/glad.dir/3party/glad/glad.c.obj: CMakeFiles/glad.dir/includes_C.rsp
CMakeFiles/glad.dir/3party/glad/glad.c.obj: C:/Users/sefyan/Documents/2dGame/3party/glad/glad.c
CMakeFiles/glad.dir/3party/glad/glad.c.obj: CMakeFiles/glad.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:/Users/sefyan/Documents/2dGame/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/glad.dir/3party/glad/glad.c.obj"
	C:/msys64/mingw64/bin/cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/glad.dir/3party/glad/glad.c.obj -MF CMakeFiles/glad.dir/3party/glad/glad.c.obj.d -o CMakeFiles/glad.dir/3party/glad/glad.c.obj -c C:/Users/sefyan/Documents/2dGame/3party/glad/glad.c

CMakeFiles/glad.dir/3party/glad/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/glad.dir/3party/glad/glad.c.i"
	C:/msys64/mingw64/bin/cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:/Users/sefyan/Documents/2dGame/3party/glad/glad.c > CMakeFiles/glad.dir/3party/glad/glad.c.i

CMakeFiles/glad.dir/3party/glad/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/glad.dir/3party/glad/glad.c.s"
	C:/msys64/mingw64/bin/cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:/Users/sefyan/Documents/2dGame/3party/glad/glad.c -o CMakeFiles/glad.dir/3party/glad/glad.c.s

# Object files for target glad
glad_OBJECTS = \
"CMakeFiles/glad.dir/3party/glad/glad.c.obj"

# External object files for target glad
glad_EXTERNAL_OBJECTS =

lib/libglad.a: CMakeFiles/glad.dir/3party/glad/glad.c.obj
lib/libglad.a: CMakeFiles/glad.dir/build.make
lib/libglad.a: CMakeFiles/glad.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=C:/Users/sefyan/Documents/2dGame/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library lib/libglad.a"
	$(CMAKE_COMMAND) -P CMakeFiles/glad.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/glad.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/glad.dir/build: lib/libglad.a
.PHONY : CMakeFiles/glad.dir/build

CMakeFiles/glad.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/glad.dir/cmake_clean.cmake
.PHONY : CMakeFiles/glad.dir/clean

CMakeFiles/glad.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" C:/Users/sefyan/Documents/2dGame C:/Users/sefyan/Documents/2dGame C:/Users/sefyan/Documents/2dGame/build C:/Users/sefyan/Documents/2dGame/build C:/Users/sefyan/Documents/2dGame/build/CMakeFiles/glad.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/glad.dir/depend

