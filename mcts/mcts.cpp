#include"mcts.h"

MCTS::MCTS(Game *g, int d,int p):depth(d),num_of_playouts(p) {
	root = new Node(g, nullptr);
	current_parent = nullptr;
	current_leaf = nullptr;
}


void MCTS::run() {
	
	for (int i = 0; i < depth; ++i) {
		cout << "round";
		select();
		cout << "round select ";
		expand();
		cout << " round expand ";
		playout();
		backpropagate();
	}
}


void MCTS::print() {
	cout << "printing\n";
	std::cout << "visited " << root->visited << " and won " << root->won << '\n';
}


void MCTS::select() {
	Node* p = root;
	while (p->children.size() != 0) {
		double temp = p->children[0]->uct();
		int index = 0;
		for (int i = 0; i < p->children.size(); ++i) {
			if (p->children[i]->uct() < temp) {
				temp = p->children[i]->uct();
				index = i;
			}
		}
		p = p->children[index];
	}
	current_parent = p;
}

void MCTS::expand() {
	int num_of_leaves= current_parent->state->currentpossiblemoves.size();
	for (auto& element : current_parent->state->currentpossiblemoves)if (element.allowed == false)num_of_leaves--;
	for (auto& element : current_parent->state->currentpossiblemoves) {
		if (element.allowed == true) {
		//	cout << "0";
			Node* t =new Node(current_parent->state->play(element), current_parent);
		//	cout << "1";//////////////////////////////////////////////
			current_parent->children.push_back(move(t));
		//	cout << "2";
		}
	}
	if (current_parent->children.size() > 0) {
		current_leaf = current_parent->children[rand() % current_parent->children.size()];
	}
	else {
		//// Handle the case where no children were added
		cout << "beeeep";
		current_leaf = nullptr;
	}
	//current_leaf->state->draw();
//	cout << "sdon";
}


void MCTS::playout() {
	cout << "playout";
	for (int i = 0; i < num_of_playouts; ++i) {
		//current_leaf->state->draw();
		Game temp = *current_leaf->state;

		current_leaf->visited++;
		Move random_move = temp.choose_random_move();

	
		while (random_move.coords!="pain" && temp.ended() == 2) {
			temp = *temp.play(random_move);
			random_move = temp.choose_random_move();
			//cout << random_move.coords<<" giwrgo \n";
			//temp.draw();
		}
		if (temp.ended() == 1) {
			cout << "won";
			current_leaf->won++;
		}
		else if (temp.ended() == -1) {
			current_leaf->lost++;
			cout << "lost";
		}
		else cout << "draw";
		/*
		for (int i = 0; i < temp.movelog.size(); ++i) {
			cout << temp.movelog[i].coords << ' ';
		}
		cout << '\n';
		*/
	}
}


void MCTS::backpropagate() {
	int counter = 1;
	while (current_parent!= nullptr) {
		current_parent->visited += current_leaf->visited;
		if(counter%2==0)current_parent->won += current_leaf->lost;
		else current_parent->won += current_leaf->won;
		current_parent = current_parent->parent;
		++counter;
	}
}