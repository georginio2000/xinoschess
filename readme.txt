README

chessv2: throws error in some edge cases(pawns reaching the edge and not promoting)
	DONE-fix edge cases
	DONE-redifine class for const correctness and memory management

cnn: currently the neural network is able to take board as input and output an evalutaion based on random weights
	-backpropagation
	-implement policy head

mcts: basic structure is defined but does not work correct during tests(need to fix chess v2 edge cases first)
	-fix backpropagation
	-make functions to toggle between choosing move randomly and based on the evaluation network 

	...
	4/1/24: created logger
	5/1/24: improved chessv2 const correctness
	6/1/24: fixed chessv2 edge cases, now i can continue mcts and cnn backpropagation(everything runs smoothly)
			TODO: -make mcts more efficient using unique pointers;
				  -chessv2 private and public class parts
	