#include"kernel.h"

Kernel::Kernel( int w,  int h) {
    srand(time(NULL));
    width = w;
    height = h;
    weights = new double[int(w*h)];
    for (int i = 0; i < w*h; ++i) {
        weights[i] = (rand() - RAND_MAX / 2) / static_cast<double>(RAND_MAX);
    }
}

vector<vector<double>> Kernel::conv(vector<vector<double>> input) {
    vector<vector<double>> result;
    for (int i = 0; i <= input.size() - height; ++i) {
        vector<double> t;
        result.push_back(t);
        for (int j = 0; j <= input[0].size() - width; ++j) {
            double temp = 0;
            for (int k = 0; k < height; ++k) {
                for (int n = 0; n < width; ++n) {
                    temp += weights[k*width +n] * input[i+k][j+n];
                }
            }
            result[i].push_back(temp);
        }
    }
    return result;
}