#pragma once
#include"../chessv2/game.h"
#include<cmath>
#include<vector>

class Node {
public:
	friend class MCTS;
	Node(Game* g, Node* p);
	double uct();
	inline int get_visited() { return visited; }
private: 
	int turn;
	Game* state;
	int visited, won,lost;
	Node* parent;
	vector<Node*> children;
};