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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.30.1/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.30.1/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/mrphoonmoji/Projects/gitrepos/SimpleTD

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/mrphoonmoji/Projects/gitrepos/SimpleTD/build

# Include any dependencies generated for this target.
include CMakeFiles/SimpleTD.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/SimpleTD.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/SimpleTD.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/SimpleTD.dir/flags.make

CMakeFiles/SimpleTD.dir/src/main.cpp.o: CMakeFiles/SimpleTD.dir/flags.make
CMakeFiles/SimpleTD.dir/src/main.cpp.o: /Users/mrphoonmoji/Projects/gitrepos/SimpleTD/src/main.cpp
CMakeFiles/SimpleTD.dir/src/main.cpp.o: CMakeFiles/SimpleTD.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/mrphoonmoji/Projects/gitrepos/SimpleTD/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/SimpleTD.dir/src/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SimpleTD.dir/src/main.cpp.o -MF CMakeFiles/SimpleTD.dir/src/main.cpp.o.d -o CMakeFiles/SimpleTD.dir/src/main.cpp.o -c /Users/mrphoonmoji/Projects/gitrepos/SimpleTD/src/main.cpp

CMakeFiles/SimpleTD.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/SimpleTD.dir/src/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/mrphoonmoji/Projects/gitrepos/SimpleTD/src/main.cpp > CMakeFiles/SimpleTD.dir/src/main.cpp.i

CMakeFiles/SimpleTD.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/SimpleTD.dir/src/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/mrphoonmoji/Projects/gitrepos/SimpleTD/src/main.cpp -o CMakeFiles/SimpleTD.dir/src/main.cpp.s

CMakeFiles/SimpleTD.dir/src/glad/glad.c.o: CMakeFiles/SimpleTD.dir/flags.make
CMakeFiles/SimpleTD.dir/src/glad/glad.c.o: /Users/mrphoonmoji/Projects/gitrepos/SimpleTD/src/glad/glad.c
CMakeFiles/SimpleTD.dir/src/glad/glad.c.o: CMakeFiles/SimpleTD.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/mrphoonmoji/Projects/gitrepos/SimpleTD/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/SimpleTD.dir/src/glad/glad.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/SimpleTD.dir/src/glad/glad.c.o -MF CMakeFiles/SimpleTD.dir/src/glad/glad.c.o.d -o CMakeFiles/SimpleTD.dir/src/glad/glad.c.o -c /Users/mrphoonmoji/Projects/gitrepos/SimpleTD/src/glad/glad.c

CMakeFiles/SimpleTD.dir/src/glad/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/SimpleTD.dir/src/glad/glad.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/mrphoonmoji/Projects/gitrepos/SimpleTD/src/glad/glad.c > CMakeFiles/SimpleTD.dir/src/glad/glad.c.i

CMakeFiles/SimpleTD.dir/src/glad/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/SimpleTD.dir/src/glad/glad.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/mrphoonmoji/Projects/gitrepos/SimpleTD/src/glad/glad.c -o CMakeFiles/SimpleTD.dir/src/glad/glad.c.s

CMakeFiles/SimpleTD.dir/src/engine/window.cpp.o: CMakeFiles/SimpleTD.dir/flags.make
CMakeFiles/SimpleTD.dir/src/engine/window.cpp.o: /Users/mrphoonmoji/Projects/gitrepos/SimpleTD/src/engine/window.cpp
CMakeFiles/SimpleTD.dir/src/engine/window.cpp.o: CMakeFiles/SimpleTD.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/mrphoonmoji/Projects/gitrepos/SimpleTD/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/SimpleTD.dir/src/engine/window.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SimpleTD.dir/src/engine/window.cpp.o -MF CMakeFiles/SimpleTD.dir/src/engine/window.cpp.o.d -o CMakeFiles/SimpleTD.dir/src/engine/window.cpp.o -c /Users/mrphoonmoji/Projects/gitrepos/SimpleTD/src/engine/window.cpp

CMakeFiles/SimpleTD.dir/src/engine/window.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/SimpleTD.dir/src/engine/window.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/mrphoonmoji/Projects/gitrepos/SimpleTD/src/engine/window.cpp > CMakeFiles/SimpleTD.dir/src/engine/window.cpp.i

CMakeFiles/SimpleTD.dir/src/engine/window.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/SimpleTD.dir/src/engine/window.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/mrphoonmoji/Projects/gitrepos/SimpleTD/src/engine/window.cpp -o CMakeFiles/SimpleTD.dir/src/engine/window.cpp.s

CMakeFiles/SimpleTD.dir/src/engine/shader_utils.cpp.o: CMakeFiles/SimpleTD.dir/flags.make
CMakeFiles/SimpleTD.dir/src/engine/shader_utils.cpp.o: /Users/mrphoonmoji/Projects/gitrepos/SimpleTD/src/engine/shader_utils.cpp
CMakeFiles/SimpleTD.dir/src/engine/shader_utils.cpp.o: CMakeFiles/SimpleTD.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/mrphoonmoji/Projects/gitrepos/SimpleTD/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/SimpleTD.dir/src/engine/shader_utils.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SimpleTD.dir/src/engine/shader_utils.cpp.o -MF CMakeFiles/SimpleTD.dir/src/engine/shader_utils.cpp.o.d -o CMakeFiles/SimpleTD.dir/src/engine/shader_utils.cpp.o -c /Users/mrphoonmoji/Projects/gitrepos/SimpleTD/src/engine/shader_utils.cpp

CMakeFiles/SimpleTD.dir/src/engine/shader_utils.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/SimpleTD.dir/src/engine/shader_utils.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/mrphoonmoji/Projects/gitrepos/SimpleTD/src/engine/shader_utils.cpp > CMakeFiles/SimpleTD.dir/src/engine/shader_utils.cpp.i

CMakeFiles/SimpleTD.dir/src/engine/shader_utils.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/SimpleTD.dir/src/engine/shader_utils.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/mrphoonmoji/Projects/gitrepos/SimpleTD/src/engine/shader_utils.cpp -o CMakeFiles/SimpleTD.dir/src/engine/shader_utils.cpp.s

CMakeFiles/SimpleTD.dir/src/engine/draw_proc.cpp.o: CMakeFiles/SimpleTD.dir/flags.make
CMakeFiles/SimpleTD.dir/src/engine/draw_proc.cpp.o: /Users/mrphoonmoji/Projects/gitrepos/SimpleTD/src/engine/draw_proc.cpp
CMakeFiles/SimpleTD.dir/src/engine/draw_proc.cpp.o: CMakeFiles/SimpleTD.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/mrphoonmoji/Projects/gitrepos/SimpleTD/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/SimpleTD.dir/src/engine/draw_proc.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SimpleTD.dir/src/engine/draw_proc.cpp.o -MF CMakeFiles/SimpleTD.dir/src/engine/draw_proc.cpp.o.d -o CMakeFiles/SimpleTD.dir/src/engine/draw_proc.cpp.o -c /Users/mrphoonmoji/Projects/gitrepos/SimpleTD/src/engine/draw_proc.cpp

CMakeFiles/SimpleTD.dir/src/engine/draw_proc.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/SimpleTD.dir/src/engine/draw_proc.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/mrphoonmoji/Projects/gitrepos/SimpleTD/src/engine/draw_proc.cpp > CMakeFiles/SimpleTD.dir/src/engine/draw_proc.cpp.i

CMakeFiles/SimpleTD.dir/src/engine/draw_proc.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/SimpleTD.dir/src/engine/draw_proc.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/mrphoonmoji/Projects/gitrepos/SimpleTD/src/engine/draw_proc.cpp -o CMakeFiles/SimpleTD.dir/src/engine/draw_proc.cpp.s

CMakeFiles/SimpleTD.dir/src/engine/vector2d.cpp.o: CMakeFiles/SimpleTD.dir/flags.make
CMakeFiles/SimpleTD.dir/src/engine/vector2d.cpp.o: /Users/mrphoonmoji/Projects/gitrepos/SimpleTD/src/engine/vector2d.cpp
CMakeFiles/SimpleTD.dir/src/engine/vector2d.cpp.o: CMakeFiles/SimpleTD.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/mrphoonmoji/Projects/gitrepos/SimpleTD/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/SimpleTD.dir/src/engine/vector2d.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SimpleTD.dir/src/engine/vector2d.cpp.o -MF CMakeFiles/SimpleTD.dir/src/engine/vector2d.cpp.o.d -o CMakeFiles/SimpleTD.dir/src/engine/vector2d.cpp.o -c /Users/mrphoonmoji/Projects/gitrepos/SimpleTD/src/engine/vector2d.cpp

CMakeFiles/SimpleTD.dir/src/engine/vector2d.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/SimpleTD.dir/src/engine/vector2d.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/mrphoonmoji/Projects/gitrepos/SimpleTD/src/engine/vector2d.cpp > CMakeFiles/SimpleTD.dir/src/engine/vector2d.cpp.i

CMakeFiles/SimpleTD.dir/src/engine/vector2d.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/SimpleTD.dir/src/engine/vector2d.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/mrphoonmoji/Projects/gitrepos/SimpleTD/src/engine/vector2d.cpp -o CMakeFiles/SimpleTD.dir/src/engine/vector2d.cpp.s

CMakeFiles/SimpleTD.dir/src/engine/input_handler.cpp.o: CMakeFiles/SimpleTD.dir/flags.make
CMakeFiles/SimpleTD.dir/src/engine/input_handler.cpp.o: /Users/mrphoonmoji/Projects/gitrepos/SimpleTD/src/engine/input_handler.cpp
CMakeFiles/SimpleTD.dir/src/engine/input_handler.cpp.o: CMakeFiles/SimpleTD.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/mrphoonmoji/Projects/gitrepos/SimpleTD/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/SimpleTD.dir/src/engine/input_handler.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SimpleTD.dir/src/engine/input_handler.cpp.o -MF CMakeFiles/SimpleTD.dir/src/engine/input_handler.cpp.o.d -o CMakeFiles/SimpleTD.dir/src/engine/input_handler.cpp.o -c /Users/mrphoonmoji/Projects/gitrepos/SimpleTD/src/engine/input_handler.cpp

CMakeFiles/SimpleTD.dir/src/engine/input_handler.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/SimpleTD.dir/src/engine/input_handler.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/mrphoonmoji/Projects/gitrepos/SimpleTD/src/engine/input_handler.cpp > CMakeFiles/SimpleTD.dir/src/engine/input_handler.cpp.i

CMakeFiles/SimpleTD.dir/src/engine/input_handler.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/SimpleTD.dir/src/engine/input_handler.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/mrphoonmoji/Projects/gitrepos/SimpleTD/src/engine/input_handler.cpp -o CMakeFiles/SimpleTD.dir/src/engine/input_handler.cpp.s

CMakeFiles/SimpleTD.dir/src/engine/scene.cpp.o: CMakeFiles/SimpleTD.dir/flags.make
CMakeFiles/SimpleTD.dir/src/engine/scene.cpp.o: /Users/mrphoonmoji/Projects/gitrepos/SimpleTD/src/engine/scene.cpp
CMakeFiles/SimpleTD.dir/src/engine/scene.cpp.o: CMakeFiles/SimpleTD.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/mrphoonmoji/Projects/gitrepos/SimpleTD/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/SimpleTD.dir/src/engine/scene.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SimpleTD.dir/src/engine/scene.cpp.o -MF CMakeFiles/SimpleTD.dir/src/engine/scene.cpp.o.d -o CMakeFiles/SimpleTD.dir/src/engine/scene.cpp.o -c /Users/mrphoonmoji/Projects/gitrepos/SimpleTD/src/engine/scene.cpp

CMakeFiles/SimpleTD.dir/src/engine/scene.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/SimpleTD.dir/src/engine/scene.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/mrphoonmoji/Projects/gitrepos/SimpleTD/src/engine/scene.cpp > CMakeFiles/SimpleTD.dir/src/engine/scene.cpp.i

CMakeFiles/SimpleTD.dir/src/engine/scene.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/SimpleTD.dir/src/engine/scene.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/mrphoonmoji/Projects/gitrepos/SimpleTD/src/engine/scene.cpp -o CMakeFiles/SimpleTD.dir/src/engine/scene.cpp.s

CMakeFiles/SimpleTD.dir/src/engine/object_manager.cpp.o: CMakeFiles/SimpleTD.dir/flags.make
CMakeFiles/SimpleTD.dir/src/engine/object_manager.cpp.o: /Users/mrphoonmoji/Projects/gitrepos/SimpleTD/src/engine/object_manager.cpp
CMakeFiles/SimpleTD.dir/src/engine/object_manager.cpp.o: CMakeFiles/SimpleTD.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/mrphoonmoji/Projects/gitrepos/SimpleTD/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/SimpleTD.dir/src/engine/object_manager.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SimpleTD.dir/src/engine/object_manager.cpp.o -MF CMakeFiles/SimpleTD.dir/src/engine/object_manager.cpp.o.d -o CMakeFiles/SimpleTD.dir/src/engine/object_manager.cpp.o -c /Users/mrphoonmoji/Projects/gitrepos/SimpleTD/src/engine/object_manager.cpp

CMakeFiles/SimpleTD.dir/src/engine/object_manager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/SimpleTD.dir/src/engine/object_manager.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/mrphoonmoji/Projects/gitrepos/SimpleTD/src/engine/object_manager.cpp > CMakeFiles/SimpleTD.dir/src/engine/object_manager.cpp.i

CMakeFiles/SimpleTD.dir/src/engine/object_manager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/SimpleTD.dir/src/engine/object_manager.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/mrphoonmoji/Projects/gitrepos/SimpleTD/src/engine/object_manager.cpp -o CMakeFiles/SimpleTD.dir/src/engine/object_manager.cpp.s

CMakeFiles/SimpleTD.dir/src/engine/draw_proc_util.cpp.o: CMakeFiles/SimpleTD.dir/flags.make
CMakeFiles/SimpleTD.dir/src/engine/draw_proc_util.cpp.o: /Users/mrphoonmoji/Projects/gitrepos/SimpleTD/src/engine/draw_proc_util.cpp
CMakeFiles/SimpleTD.dir/src/engine/draw_proc_util.cpp.o: CMakeFiles/SimpleTD.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/mrphoonmoji/Projects/gitrepos/SimpleTD/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/SimpleTD.dir/src/engine/draw_proc_util.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SimpleTD.dir/src/engine/draw_proc_util.cpp.o -MF CMakeFiles/SimpleTD.dir/src/engine/draw_proc_util.cpp.o.d -o CMakeFiles/SimpleTD.dir/src/engine/draw_proc_util.cpp.o -c /Users/mrphoonmoji/Projects/gitrepos/SimpleTD/src/engine/draw_proc_util.cpp

CMakeFiles/SimpleTD.dir/src/engine/draw_proc_util.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/SimpleTD.dir/src/engine/draw_proc_util.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/mrphoonmoji/Projects/gitrepos/SimpleTD/src/engine/draw_proc_util.cpp > CMakeFiles/SimpleTD.dir/src/engine/draw_proc_util.cpp.i

CMakeFiles/SimpleTD.dir/src/engine/draw_proc_util.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/SimpleTD.dir/src/engine/draw_proc_util.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/mrphoonmoji/Projects/gitrepos/SimpleTD/src/engine/draw_proc_util.cpp -o CMakeFiles/SimpleTD.dir/src/engine/draw_proc_util.cpp.s

CMakeFiles/SimpleTD.dir/src/game/end_scene.cpp.o: CMakeFiles/SimpleTD.dir/flags.make
CMakeFiles/SimpleTD.dir/src/game/end_scene.cpp.o: /Users/mrphoonmoji/Projects/gitrepos/SimpleTD/src/game/end_scene.cpp
CMakeFiles/SimpleTD.dir/src/game/end_scene.cpp.o: CMakeFiles/SimpleTD.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/mrphoonmoji/Projects/gitrepos/SimpleTD/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/SimpleTD.dir/src/game/end_scene.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SimpleTD.dir/src/game/end_scene.cpp.o -MF CMakeFiles/SimpleTD.dir/src/game/end_scene.cpp.o.d -o CMakeFiles/SimpleTD.dir/src/game/end_scene.cpp.o -c /Users/mrphoonmoji/Projects/gitrepos/SimpleTD/src/game/end_scene.cpp

CMakeFiles/SimpleTD.dir/src/game/end_scene.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/SimpleTD.dir/src/game/end_scene.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/mrphoonmoji/Projects/gitrepos/SimpleTD/src/game/end_scene.cpp > CMakeFiles/SimpleTD.dir/src/game/end_scene.cpp.i

CMakeFiles/SimpleTD.dir/src/game/end_scene.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/SimpleTD.dir/src/game/end_scene.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/mrphoonmoji/Projects/gitrepos/SimpleTD/src/game/end_scene.cpp -o CMakeFiles/SimpleTD.dir/src/game/end_scene.cpp.s

CMakeFiles/SimpleTD.dir/src/game/game_scene.cpp.o: CMakeFiles/SimpleTD.dir/flags.make
CMakeFiles/SimpleTD.dir/src/game/game_scene.cpp.o: /Users/mrphoonmoji/Projects/gitrepos/SimpleTD/src/game/game_scene.cpp
CMakeFiles/SimpleTD.dir/src/game/game_scene.cpp.o: CMakeFiles/SimpleTD.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/mrphoonmoji/Projects/gitrepos/SimpleTD/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/SimpleTD.dir/src/game/game_scene.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SimpleTD.dir/src/game/game_scene.cpp.o -MF CMakeFiles/SimpleTD.dir/src/game/game_scene.cpp.o.d -o CMakeFiles/SimpleTD.dir/src/game/game_scene.cpp.o -c /Users/mrphoonmoji/Projects/gitrepos/SimpleTD/src/game/game_scene.cpp

CMakeFiles/SimpleTD.dir/src/game/game_scene.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/SimpleTD.dir/src/game/game_scene.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/mrphoonmoji/Projects/gitrepos/SimpleTD/src/game/game_scene.cpp > CMakeFiles/SimpleTD.dir/src/game/game_scene.cpp.i

CMakeFiles/SimpleTD.dir/src/game/game_scene.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/SimpleTD.dir/src/game/game_scene.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/mrphoonmoji/Projects/gitrepos/SimpleTD/src/game/game_scene.cpp -o CMakeFiles/SimpleTD.dir/src/game/game_scene.cpp.s

CMakeFiles/SimpleTD.dir/src/game/menu_scene.cpp.o: CMakeFiles/SimpleTD.dir/flags.make
CMakeFiles/SimpleTD.dir/src/game/menu_scene.cpp.o: /Users/mrphoonmoji/Projects/gitrepos/SimpleTD/src/game/menu_scene.cpp
CMakeFiles/SimpleTD.dir/src/game/menu_scene.cpp.o: CMakeFiles/SimpleTD.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/mrphoonmoji/Projects/gitrepos/SimpleTD/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/SimpleTD.dir/src/game/menu_scene.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SimpleTD.dir/src/game/menu_scene.cpp.o -MF CMakeFiles/SimpleTD.dir/src/game/menu_scene.cpp.o.d -o CMakeFiles/SimpleTD.dir/src/game/menu_scene.cpp.o -c /Users/mrphoonmoji/Projects/gitrepos/SimpleTD/src/game/menu_scene.cpp

CMakeFiles/SimpleTD.dir/src/game/menu_scene.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/SimpleTD.dir/src/game/menu_scene.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/mrphoonmoji/Projects/gitrepos/SimpleTD/src/game/menu_scene.cpp > CMakeFiles/SimpleTD.dir/src/game/menu_scene.cpp.i

CMakeFiles/SimpleTD.dir/src/game/menu_scene.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/SimpleTD.dir/src/game/menu_scene.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/mrphoonmoji/Projects/gitrepos/SimpleTD/src/game/menu_scene.cpp -o CMakeFiles/SimpleTD.dir/src/game/menu_scene.cpp.s

CMakeFiles/SimpleTD.dir/src/app/app.cpp.o: CMakeFiles/SimpleTD.dir/flags.make
CMakeFiles/SimpleTD.dir/src/app/app.cpp.o: /Users/mrphoonmoji/Projects/gitrepos/SimpleTD/src/app/app.cpp
CMakeFiles/SimpleTD.dir/src/app/app.cpp.o: CMakeFiles/SimpleTD.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/mrphoonmoji/Projects/gitrepos/SimpleTD/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object CMakeFiles/SimpleTD.dir/src/app/app.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SimpleTD.dir/src/app/app.cpp.o -MF CMakeFiles/SimpleTD.dir/src/app/app.cpp.o.d -o CMakeFiles/SimpleTD.dir/src/app/app.cpp.o -c /Users/mrphoonmoji/Projects/gitrepos/SimpleTD/src/app/app.cpp

CMakeFiles/SimpleTD.dir/src/app/app.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/SimpleTD.dir/src/app/app.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/mrphoonmoji/Projects/gitrepos/SimpleTD/src/app/app.cpp > CMakeFiles/SimpleTD.dir/src/app/app.cpp.i

CMakeFiles/SimpleTD.dir/src/app/app.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/SimpleTD.dir/src/app/app.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/mrphoonmoji/Projects/gitrepos/SimpleTD/src/app/app.cpp -o CMakeFiles/SimpleTD.dir/src/app/app.cpp.s

# Object files for target SimpleTD
SimpleTD_OBJECTS = \
"CMakeFiles/SimpleTD.dir/src/main.cpp.o" \
"CMakeFiles/SimpleTD.dir/src/glad/glad.c.o" \
"CMakeFiles/SimpleTD.dir/src/engine/window.cpp.o" \
"CMakeFiles/SimpleTD.dir/src/engine/shader_utils.cpp.o" \
"CMakeFiles/SimpleTD.dir/src/engine/draw_proc.cpp.o" \
"CMakeFiles/SimpleTD.dir/src/engine/vector2d.cpp.o" \
"CMakeFiles/SimpleTD.dir/src/engine/input_handler.cpp.o" \
"CMakeFiles/SimpleTD.dir/src/engine/scene.cpp.o" \
"CMakeFiles/SimpleTD.dir/src/engine/object_manager.cpp.o" \
"CMakeFiles/SimpleTD.dir/src/engine/draw_proc_util.cpp.o" \
"CMakeFiles/SimpleTD.dir/src/game/end_scene.cpp.o" \
"CMakeFiles/SimpleTD.dir/src/game/game_scene.cpp.o" \
"CMakeFiles/SimpleTD.dir/src/game/menu_scene.cpp.o" \
"CMakeFiles/SimpleTD.dir/src/app/app.cpp.o"

# External object files for target SimpleTD
SimpleTD_EXTERNAL_OBJECTS =

/Users/mrphoonmoji/Projects/gitrepos/SimpleTD/bin/SimpleTD: CMakeFiles/SimpleTD.dir/src/main.cpp.o
/Users/mrphoonmoji/Projects/gitrepos/SimpleTD/bin/SimpleTD: CMakeFiles/SimpleTD.dir/src/glad/glad.c.o
/Users/mrphoonmoji/Projects/gitrepos/SimpleTD/bin/SimpleTD: CMakeFiles/SimpleTD.dir/src/engine/window.cpp.o
/Users/mrphoonmoji/Projects/gitrepos/SimpleTD/bin/SimpleTD: CMakeFiles/SimpleTD.dir/src/engine/shader_utils.cpp.o
/Users/mrphoonmoji/Projects/gitrepos/SimpleTD/bin/SimpleTD: CMakeFiles/SimpleTD.dir/src/engine/draw_proc.cpp.o
/Users/mrphoonmoji/Projects/gitrepos/SimpleTD/bin/SimpleTD: CMakeFiles/SimpleTD.dir/src/engine/vector2d.cpp.o
/Users/mrphoonmoji/Projects/gitrepos/SimpleTD/bin/SimpleTD: CMakeFiles/SimpleTD.dir/src/engine/input_handler.cpp.o
/Users/mrphoonmoji/Projects/gitrepos/SimpleTD/bin/SimpleTD: CMakeFiles/SimpleTD.dir/src/engine/scene.cpp.o
/Users/mrphoonmoji/Projects/gitrepos/SimpleTD/bin/SimpleTD: CMakeFiles/SimpleTD.dir/src/engine/object_manager.cpp.o
/Users/mrphoonmoji/Projects/gitrepos/SimpleTD/bin/SimpleTD: CMakeFiles/SimpleTD.dir/src/engine/draw_proc_util.cpp.o
/Users/mrphoonmoji/Projects/gitrepos/SimpleTD/bin/SimpleTD: CMakeFiles/SimpleTD.dir/src/game/end_scene.cpp.o
/Users/mrphoonmoji/Projects/gitrepos/SimpleTD/bin/SimpleTD: CMakeFiles/SimpleTD.dir/src/game/game_scene.cpp.o
/Users/mrphoonmoji/Projects/gitrepos/SimpleTD/bin/SimpleTD: CMakeFiles/SimpleTD.dir/src/game/menu_scene.cpp.o
/Users/mrphoonmoji/Projects/gitrepos/SimpleTD/bin/SimpleTD: CMakeFiles/SimpleTD.dir/src/app/app.cpp.o
/Users/mrphoonmoji/Projects/gitrepos/SimpleTD/bin/SimpleTD: CMakeFiles/SimpleTD.dir/build.make
/Users/mrphoonmoji/Projects/gitrepos/SimpleTD/bin/SimpleTD: /usr/local/lib/libglfw.3.4.dylib
/Users/mrphoonmoji/Projects/gitrepos/SimpleTD/bin/SimpleTD: /usr/local/lib/libglm.dylib
/Users/mrphoonmoji/Projects/gitrepos/SimpleTD/bin/SimpleTD: CMakeFiles/SimpleTD.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/mrphoonmoji/Projects/gitrepos/SimpleTD/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Linking CXX executable /Users/mrphoonmoji/Projects/gitrepos/SimpleTD/bin/SimpleTD"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/SimpleTD.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/SimpleTD.dir/build: /Users/mrphoonmoji/Projects/gitrepos/SimpleTD/bin/SimpleTD
.PHONY : CMakeFiles/SimpleTD.dir/build

CMakeFiles/SimpleTD.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/SimpleTD.dir/cmake_clean.cmake
.PHONY : CMakeFiles/SimpleTD.dir/clean

CMakeFiles/SimpleTD.dir/depend:
	cd /Users/mrphoonmoji/Projects/gitrepos/SimpleTD/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/mrphoonmoji/Projects/gitrepos/SimpleTD /Users/mrphoonmoji/Projects/gitrepos/SimpleTD /Users/mrphoonmoji/Projects/gitrepos/SimpleTD/build /Users/mrphoonmoji/Projects/gitrepos/SimpleTD/build /Users/mrphoonmoji/Projects/gitrepos/SimpleTD/build/CMakeFiles/SimpleTD.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/SimpleTD.dir/depend

