#include"node.h"


Node::Node(Game* g, Node* p) : parent(p), state(g), visited(0), won(0),lost(0) { };


double Node::uct() {
	if (visited == 0) return 0.0;
	double result = won / visited + sqrt(2 * log(parent->get_visited()) / visited);
	return result;
}