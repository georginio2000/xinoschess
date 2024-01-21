#pragma once
#include"../chessv2/game.h"
#include<cmath>
#include<vector>
#include<memory>

class Node {
public:
	friend class MCTS;
	Node(Game* g, Node* p);
	Node(const Node& other);
	double uct();
	inline int get_visited() { return visited; }
private: 
	int turn;
	Game* state;
	int visited, won,lost;
	Node* parent;
	vector<Node*> children;
};