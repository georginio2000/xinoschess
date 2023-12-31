#pragma once
#include<vector>
#include<iostream>
#include <cstdlib>
#include <ctime>
using namespace std;

class Neuron {
public:
	Neuron(int n,int i,double v = 1);
	void calculate(vector<Neuron>& previous);
	inline double get_value() { return value; }
private:
	int index;
	vector<double> weights;
	double value;
};
