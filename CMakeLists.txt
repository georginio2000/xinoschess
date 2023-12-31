# CMakeList.txt : CMake project for xinoschess, include source and define
# project specific logic here.
#
cmake_minimum_required (VERSION 3.8)

project ("xinoschess")

# Add source to this project's executable.
add_executable (xinoschess     "cnn/cnn.cpp"  "cnn/cnn.h" "cnn/kernel.cpp" "cnn/kernel.h" "cnn/neuron.h" "main.cpp" "chessv2/game.cpp" "chessv2/game.h" "chessv2/move.cpp" "chessv2/move.h"  "chessv2/piece.cpp" "chessv2/piece.h" "chessv2/utilities.cpp" "chessv2/utilities.h" "cnn/neuron.cpp" "mcts/mcts.h" "mcts/mcts.cpp" "mcts/node.h" "mcts/node.cpp")

# TODO: Add tests and install targets if needed.
