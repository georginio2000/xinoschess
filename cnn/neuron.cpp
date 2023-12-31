#include"neuron.h"

Neuron::Neuron(int n,int i,double v) {
	srand(time(NULL));
	vector<double> temp;
	for (int i = 0; i < n; ++i)temp.push_back((rand()-RAND_MAX/2) / static_cast<double>(RAND_MAX));
	weights = temp;
	value = v;
	index = i;
}

void Neuron::calculate(vector<Neuron>& previous) {
	value = 0;
	for (int i = 0; i < previous.size(); ++i) {
		value += previous[i].value * previous[i].weights[index];
	}
	value = tanh(value);
}