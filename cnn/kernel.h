#pragma once
#include<vector>
#include<iostream>
#include <cstdlib>
#include <ctime>
using namespace std;


class Kernel {
public:
	Kernel( int w, int h);
	vector<vector<double>> conv(vector<vector<double>> input);
private:
	int width, height;
	double* weights;
};

//
//   -----------     ^
//   |         |     |
//   |         |  height 
//   |         |     |
//   -----------     v
//   <--width-->
//
