README

chessv2: throws error in some edge cases(pawns reaching the edge and not promoting)
	-fix edge cases
	-redifine class for const correctness and memory management

cnn: currently the neural network is able to take board as input and output an evalutaion based on random weights
	-backpropagation
	-implement policy head

mcts: basic structure is defined but does not work correct during tests(need to fix chess v2 edge cases first)
	-fix backpropagation
	-make functions to toggle between choosing move randomly and based on the evaluation network 