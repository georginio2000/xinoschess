# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

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
CMAKE_COMMAND = /snap/cmake/1361/bin/cmake

# The command to remove a file.
RM = /snap/cmake/1361/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/gkous/Desktop/xinoschess

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/gkous/Desktop/xinoschess/build

# Include any dependencies generated for this target.
include CMakeFiles/xinoschess.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/xinoschess.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/xinoschess.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/xinoschess.dir/flags.make

CMakeFiles/xinoschess.dir/cnn/cnn.cpp.o: CMakeFiles/xinoschess.dir/flags.make
CMakeFiles/xinoschess.dir/cnn/cnn.cpp.o: /home/gkous/Desktop/xinoschess/cnn/cnn.cpp
CMakeFiles/xinoschess.dir/cnn/cnn.cpp.o: CMakeFiles/xinoschess.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/gkous/Desktop/xinoschess/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/xinoschess.dir/cnn/cnn.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/xinoschess.dir/cnn/cnn.cpp.o -MF CMakeFiles/xinoschess.dir/cnn/cnn.cpp.o.d -o CMakeFiles/xinoschess.dir/cnn/cnn.cpp.o -c /home/gkous/Desktop/xinoschess/cnn/cnn.cpp

CMakeFiles/xinoschess.dir/cnn/cnn.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/xinoschess.dir/cnn/cnn.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gkous/Desktop/xinoschess/cnn/cnn.cpp > CMakeFiles/xinoschess.dir/cnn/cnn.cpp.i

CMakeFiles/xinoschess.dir/cnn/cnn.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/xinoschess.dir/cnn/cnn.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gkous/Desktop/xinoschess/cnn/cnn.cpp -o CMakeFiles/xinoschess.dir/cnn/cnn.cpp.s

CMakeFiles/xinoschess.dir/cnn/kernel.cpp.o: CMakeFiles/xinoschess.dir/flags.make
CMakeFiles/xinoschess.dir/cnn/kernel.cpp.o: /home/gkous/Desktop/xinoschess/cnn/kernel.cpp
CMakeFiles/xinoschess.dir/cnn/kernel.cpp.o: CMakeFiles/xinoschess.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/gkous/Desktop/xinoschess/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/xinoschess.dir/cnn/kernel.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/xinoschess.dir/cnn/kernel.cpp.o -MF CMakeFiles/xinoschess.dir/cnn/kernel.cpp.o.d -o CMakeFiles/xinoschess.dir/cnn/kernel.cpp.o -c /home/gkous/Desktop/xinoschess/cnn/kernel.cpp

CMakeFiles/xinoschess.dir/cnn/kernel.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/xinoschess.dir/cnn/kernel.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gkous/Desktop/xinoschess/cnn/kernel.cpp > CMakeFiles/xinoschess.dir/cnn/kernel.cpp.i

CMakeFiles/xinoschess.dir/cnn/kernel.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/xinoschess.dir/cnn/kernel.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gkous/Desktop/xinoschess/cnn/kernel.cpp -o CMakeFiles/xinoschess.dir/cnn/kernel.cpp.s

CMakeFiles/xinoschess.dir/main.cpp.o: CMakeFiles/xinoschess.dir/flags.make
CMakeFiles/xinoschess.dir/main.cpp.o: /home/gkous/Desktop/xinoschess/main.cpp
CMakeFiles/xinoschess.dir/main.cpp.o: CMakeFiles/xinoschess.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/gkous/Desktop/xinoschess/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/xinoschess.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/xinoschess.dir/main.cpp.o -MF CMakeFiles/xinoschess.dir/main.cpp.o.d -o CMakeFiles/xinoschess.dir/main.cpp.o -c /home/gkous/Desktop/xinoschess/main.cpp

CMakeFiles/xinoschess.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/xinoschess.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gkous/Desktop/xinoschess/main.cpp > CMakeFiles/xinoschess.dir/main.cpp.i

CMakeFiles/xinoschess.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/xinoschess.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gkous/Desktop/xinoschess/main.cpp -o CMakeFiles/xinoschess.dir/main.cpp.s

CMakeFiles/xinoschess.dir/chessv2/game.cpp.o: CMakeFiles/xinoschess.dir/flags.make
CMakeFiles/xinoschess.dir/chessv2/game.cpp.o: /home/gkous/Desktop/xinoschess/chessv2/game.cpp
CMakeFiles/xinoschess.dir/chessv2/game.cpp.o: CMakeFiles/xinoschess.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/gkous/Desktop/xinoschess/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/xinoschess.dir/chessv2/game.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/xinoschess.dir/chessv2/game.cpp.o -MF CMakeFiles/xinoschess.dir/chessv2/game.cpp.o.d -o CMakeFiles/xinoschess.dir/chessv2/game.cpp.o -c /home/gkous/Desktop/xinoschess/chessv2/game.cpp

CMakeFiles/xinoschess.dir/chessv2/game.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/xinoschess.dir/chessv2/game.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gkous/Desktop/xinoschess/chessv2/game.cpp > CMakeFiles/xinoschess.dir/chessv2/game.cpp.i

CMakeFiles/xinoschess.dir/chessv2/game.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/xinoschess.dir/chessv2/game.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gkous/Desktop/xinoschess/chessv2/game.cpp -o CMakeFiles/xinoschess.dir/chessv2/game.cpp.s

CMakeFiles/xinoschess.dir/chessv2/move.cpp.o: CMakeFiles/xinoschess.dir/flags.make
CMakeFiles/xinoschess.dir/chessv2/move.cpp.o: /home/gkous/Desktop/xinoschess/chessv2/move.cpp
CMakeFiles/xinoschess.dir/chessv2/move.cpp.o: CMakeFiles/xinoschess.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/gkous/Desktop/xinoschess/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/xinoschess.dir/chessv2/move.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/xinoschess.dir/chessv2/move.cpp.o -MF CMakeFiles/xinoschess.dir/chessv2/move.cpp.o.d -o CMakeFiles/xinoschess.dir/chessv2/move.cpp.o -c /home/gkous/Desktop/xinoschess/chessv2/move.cpp

CMakeFiles/xinoschess.dir/chessv2/move.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/xinoschess.dir/chessv2/move.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gkous/Desktop/xinoschess/chessv2/move.cpp > CMakeFiles/xinoschess.dir/chessv2/move.cpp.i

CMakeFiles/xinoschess.dir/chessv2/move.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/xinoschess.dir/chessv2/move.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gkous/Desktop/xinoschess/chessv2/move.cpp -o CMakeFiles/xinoschess.dir/chessv2/move.cpp.s

CMakeFiles/xinoschess.dir/chessv2/piece.cpp.o: CMakeFiles/xinoschess.dir/flags.make
CMakeFiles/xinoschess.dir/chessv2/piece.cpp.o: /home/gkous/Desktop/xinoschess/chessv2/piece.cpp
CMakeFiles/xinoschess.dir/chessv2/piece.cpp.o: CMakeFiles/xinoschess.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/gkous/Desktop/xinoschess/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/xinoschess.dir/chessv2/piece.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/xinoschess.dir/chessv2/piece.cpp.o -MF CMakeFiles/xinoschess.dir/chessv2/piece.cpp.o.d -o CMakeFiles/xinoschess.dir/chessv2/piece.cpp.o -c /home/gkous/Desktop/xinoschess/chessv2/piece.cpp

CMakeFiles/xinoschess.dir/chessv2/piece.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/xinoschess.dir/chessv2/piece.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gkous/Desktop/xinoschess/chessv2/piece.cpp > CMakeFiles/xinoschess.dir/chessv2/piece.cpp.i

CMakeFiles/xinoschess.dir/chessv2/piece.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/xinoschess.dir/chessv2/piece.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gkous/Desktop/xinoschess/chessv2/piece.cpp -o CMakeFiles/xinoschess.dir/chessv2/piece.cpp.s

CMakeFiles/xinoschess.dir/chessv2/utilities.cpp.o: CMakeFiles/xinoschess.dir/flags.make
CMakeFiles/xinoschess.dir/chessv2/utilities.cpp.o: /home/gkous/Desktop/xinoschess/chessv2/utilities.cpp
CMakeFiles/xinoschess.dir/chessv2/utilities.cpp.o: CMakeFiles/xinoschess.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/gkous/Desktop/xinoschess/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/xinoschess.dir/chessv2/utilities.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/xinoschess.dir/chessv2/utilities.cpp.o -MF CMakeFiles/xinoschess.dir/chessv2/utilities.cpp.o.d -o CMakeFiles/xinoschess.dir/chessv2/utilities.cpp.o -c /home/gkous/Desktop/xinoschess/chessv2/utilities.cpp

CMakeFiles/xinoschess.dir/chessv2/utilities.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/xinoschess.dir/chessv2/utilities.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gkous/Desktop/xinoschess/chessv2/utilities.cpp > CMakeFiles/xinoschess.dir/chessv2/utilities.cpp.i

CMakeFiles/xinoschess.dir/chessv2/utilities.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/xinoschess.dir/chessv2/utilities.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gkous/Desktop/xinoschess/chessv2/utilities.cpp -o CMakeFiles/xinoschess.dir/chessv2/utilities.cpp.s

CMakeFiles/xinoschess.dir/cnn/neuron.cpp.o: CMakeFiles/xinoschess.dir/flags.make
CMakeFiles/xinoschess.dir/cnn/neuron.cpp.o: /home/gkous/Desktop/xinoschess/cnn/neuron.cpp
CMakeFiles/xinoschess.dir/cnn/neuron.cpp.o: CMakeFiles/xinoschess.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/gkous/Desktop/xinoschess/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/xinoschess.dir/cnn/neuron.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/xinoschess.dir/cnn/neuron.cpp.o -MF CMakeFiles/xinoschess.dir/cnn/neuron.cpp.o.d -o CMakeFiles/xinoschess.dir/cnn/neuron.cpp.o -c /home/gkous/Desktop/xinoschess/cnn/neuron.cpp

CMakeFiles/xinoschess.dir/cnn/neuron.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/xinoschess.dir/cnn/neuron.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gkous/Desktop/xinoschess/cnn/neuron.cpp > CMakeFiles/xinoschess.dir/cnn/neuron.cpp.i

CMakeFiles/xinoschess.dir/cnn/neuron.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/xinoschess.dir/cnn/neuron.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gkous/Desktop/xinoschess/cnn/neuron.cpp -o CMakeFiles/xinoschess.dir/cnn/neuron.cpp.s

CMakeFiles/xinoschess.dir/mcts/mcts.cpp.o: CMakeFiles/xinoschess.dir/flags.make
CMakeFiles/xinoschess.dir/mcts/mcts.cpp.o: /home/gkous/Desktop/xinoschess/mcts/mcts.cpp
CMakeFiles/xinoschess.dir/mcts/mcts.cpp.o: CMakeFiles/xinoschess.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/gkous/Desktop/xinoschess/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/xinoschess.dir/mcts/mcts.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/xinoschess.dir/mcts/mcts.cpp.o -MF CMakeFiles/xinoschess.dir/mcts/mcts.cpp.o.d -o CMakeFiles/xinoschess.dir/mcts/mcts.cpp.o -c /home/gkous/Desktop/xinoschess/mcts/mcts.cpp

CMakeFiles/xinoschess.dir/mcts/mcts.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/xinoschess.dir/mcts/mcts.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gkous/Desktop/xinoschess/mcts/mcts.cpp > CMakeFiles/xinoschess.dir/mcts/mcts.cpp.i

CMakeFiles/xinoschess.dir/mcts/mcts.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/xinoschess.dir/mcts/mcts.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gkous/Desktop/xinoschess/mcts/mcts.cpp -o CMakeFiles/xinoschess.dir/mcts/mcts.cpp.s

CMakeFiles/xinoschess.dir/mcts/node.cpp.o: CMakeFiles/xinoschess.dir/flags.make
CMakeFiles/xinoschess.dir/mcts/node.cpp.o: /home/gkous/Desktop/xinoschess/mcts/node.cpp
CMakeFiles/xinoschess.dir/mcts/node.cpp.o: CMakeFiles/xinoschess.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/gkous/Desktop/xinoschess/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/xinoschess.dir/mcts/node.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/xinoschess.dir/mcts/node.cpp.o -MF CMakeFiles/xinoschess.dir/mcts/node.cpp.o.d -o CMakeFiles/xinoschess.dir/mcts/node.cpp.o -c /home/gkous/Desktop/xinoschess/mcts/node.cpp

CMakeFiles/xinoschess.dir/mcts/node.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/xinoschess.dir/mcts/node.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gkous/Desktop/xinoschess/mcts/node.cpp > CMakeFiles/xinoschess.dir/mcts/node.cpp.i

CMakeFiles/xinoschess.dir/mcts/node.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/xinoschess.dir/mcts/node.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gkous/Desktop/xinoschess/mcts/node.cpp -o CMakeFiles/xinoschess.dir/mcts/node.cpp.s

# Object files for target xinoschess
xinoschess_OBJECTS = \
"CMakeFiles/xinoschess.dir/cnn/cnn.cpp.o" \
"CMakeFiles/xinoschess.dir/cnn/kernel.cpp.o" \
"CMakeFiles/xinoschess.dir/main.cpp.o" \
"CMakeFiles/xinoschess.dir/chessv2/game.cpp.o" \
"CMakeFiles/xinoschess.dir/chessv2/move.cpp.o" \
"CMakeFiles/xinoschess.dir/chessv2/piece.cpp.o" \
"CMakeFiles/xinoschess.dir/chessv2/utilities.cpp.o" \
"CMakeFiles/xinoschess.dir/cnn/neuron.cpp.o" \
"CMakeFiles/xinoschess.dir/mcts/mcts.cpp.o" \
"CMakeFiles/xinoschess.dir/mcts/node.cpp.o"

# External object files for target xinoschess
xinoschess_EXTERNAL_OBJECTS =

xinoschess: CMakeFiles/xinoschess.dir/cnn/cnn.cpp.o
xinoschess: CMakeFiles/xinoschess.dir/cnn/kernel.cpp.o
xinoschess: CMakeFiles/xinoschess.dir/main.cpp.o
xinoschess: CMakeFiles/xinoschess.dir/chessv2/game.cpp.o
xinoschess: CMakeFiles/xinoschess.dir/chessv2/move.cpp.o
xinoschess: CMakeFiles/xinoschess.dir/chessv2/piece.cpp.o
xinoschess: CMakeFiles/xinoschess.dir/chessv2/utilities.cpp.o
xinoschess: CMakeFiles/xinoschess.dir/cnn/neuron.cpp.o
xinoschess: CMakeFiles/xinoschess.dir/mcts/mcts.cpp.o
xinoschess: CMakeFiles/xinoschess.dir/mcts/node.cpp.o
xinoschess: CMakeFiles/xinoschess.dir/build.make
xinoschess: CMakeFiles/xinoschess.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/gkous/Desktop/xinoschess/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Linking CXX executable xinoschess"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/xinoschess.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/xinoschess.dir/build: xinoschess
.PHONY : CMakeFiles/xinoschess.dir/build

CMakeFiles/xinoschess.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/xinoschess.dir/cmake_clean.cmake
.PHONY : CMakeFiles/xinoschess.dir/clean

CMakeFiles/xinoschess.dir/depend:
	cd /home/gkous/Desktop/xinoschess/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/gkous/Desktop/xinoschess /home/gkous/Desktop/xinoschess /home/gkous/Desktop/xinoschess/build /home/gkous/Desktop/xinoschess/build /home/gkous/Desktop/xinoschess/build/CMakeFiles/xinoschess.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/xinoschess.dir/depend
