#pragma once
#include<iostream>
#include"../chessv2/game.h"
#include"node.h"
#include"../chessv2/game.h"
#include<vector>
#include <cstdlib>
#include <ctime>

class MCTS {
public:
	MCTS(Game *g, int d,int p);
	void run();
	void print();
private:
	void expand();
	void playout();
	void backpropagate();
	void select();
	Node* current_parent;
	Node* current_leaf;
	Node* root;
	int depth;
	int num_of_playouts;
};