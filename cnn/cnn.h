#pragma once
#include<iostream>
#include<vector>
#include"kernel.h"
#include<cmath>
#include"neuron.h"
#include"../chessv2/utilities.h"
#include"../chessv2/utilities.h"

class Cnn {
public:
	Cnn(vector<vector<int>> widths, vector<vector<int>> heights, vector<int> fcn);
	
	double eval(); //returns the evalutaion for the position double � [-1,1]
	void receive_input(char(&board)[8][8],int turn);

private:
	void calculate_subconvs(); //returns the output of all the subconvs
	void adapt();		
	double calculate_fcnn();   


	void save_weights();
	void load_weights();
	vector<double> subcnns_output;
	vector<Neuron> buffer; //needed for subconvs and fcnn to communicate
	vector<vector<double>>  input;
	vector<vector<Kernel>> conv_layers;
	vector<vector<Neuron>> fully_connected_layers;
};

//input goes through different subconvolutional neural networks,
// each with different combination of kernels
// ie: ->2x2->2x2->2x2
//	   ->3x2->2x2
//     ->2x3->2x2
//     ->1x8
//     ->8x1
//     ->diagonals
//output of all subcnns goes through the fully connected neural network


//conv_layers[0] 
//
//
//
//