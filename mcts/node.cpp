#include"node.h"


Node::Node(Game* g, Node* p) : parent(p), state(g), visited(0), won(0),lost(0) { };

Node::Node(const Node& other) : turn(other.turn), state(new Game(*(other.state))), visited(other.visited),
won(other.won), lost(other.lost), parent(other.parent) {
    // Copy the children
    for (const auto& child : other.children) {
        children.push_back(new Node(*child));
    }
}

double Node::uct() {
	if (visited == 0) return 0.0;
	double result = won / visited + sqrt(2 * log(parent->get_visited()) / visited);
	return result;
}