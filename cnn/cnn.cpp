#include"cnn.h"
#include<assert.h>

Cnn::Cnn(vector<vector<int>> widths, vector<vector<int>> heights, vector<int>fcn) {
	vector<vector<Kernel>> temp1;
	for (int i = 0; i < widths.size(); ++i) {
		vector<Kernel> q;
		for (int j = 0; j < widths[i].size(); ++j) {
			Kernel p(widths[i][j], heights[i][j]);
			q.push_back(p);
		}
		temp1.push_back(q);
	}
	conv_layers = temp1;
	vector<vector<Neuron>> temp;
	vector<Neuron> t;
	for (int i = 0; i < fcn.size()-1; ++i) {
		temp.push_back(t);
		for (int j = 0; j < fcn[i]; ++j) {
			Neuron q(fcn[i + 1], j);
			temp[i].push_back(q);
		}
	}
	temp.push_back(t);
	for (int i = 0; i < fcn[fcn.size() - 1]; ++i){
		Neuron p(1,i);
		temp[fcn.size()-1].push_back(p);
	}
	fully_connected_layers = temp;
}

double Cnn::eval() {
	subcnns_output.clear();
	calculate_subconvs();
	adapt();
	return calculate_fcnn();
}

void Cnn::receive_input(char(&board)[8][8],int turn) {
	vector<vector<double>> result;
	vector<double> e;
	if (turn == 1) {
		for (int i = 0; i < 8; ++i) {
			result.push_back(e);
			for (int j = 0; j < 8; ++j)
				result[i].push_back(util::piece_to_double[board[i][j]]);
		}
	}
	else {
		for (int i = 7; i >= 0; --i) {
			result.push_back(e);
			for (int j = 7; j >=0; --j)
				result[i].push_back(-1*util::piece_to_double[board[i][j]]);
		}
	}
	input = result;
}


void Cnn::calculate_subconvs() {
	vector<double> result;
	for (int i = 0; i < conv_layers.size(); ++i) {
		vector<vector<double>> temp = input;
		for (int j = 0; j < conv_layers[i].size(); ++j) {
			temp = conv_layers[i][j].conv(temp);
		}
		vector<double> out = util::serialize(temp);
		result.insert(result.end(), out.begin(), out.end());
	}
	subcnns_output =  result;
}


void Cnn::adapt() {
	vector<Neuron> result;
	for (int i = 0; i < subcnns_output.size(); ++i) {
		double temp = tanh(subcnns_output[i]);
		Neuron p(fully_connected_layers[0].size(), i, temp);
		result.push_back(p);
	}
	buffer = result;
}


double Cnn::calculate_fcnn() {
	vector<Neuron>& p = buffer;
	for (int i = 0; i < fully_connected_layers.size(); ++i) {
		for (int j = 0; j < fully_connected_layers[i].size(); ++j) {
			fully_connected_layers[i][j].calculate(p);
		}
		p = fully_connected_layers[i];
	}
	Neuron result(0,0,0);
	result.calculate(fully_connected_layers[fully_connected_layers.size() - 1]);
	return result.get_value();
}
