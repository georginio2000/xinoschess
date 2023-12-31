#pragma once
#include"../cnn/kernel.h"
#include<iostream>
#include<vector>
#include<unordered_map>
#include<assert.h>

namespace util {
    extern unordered_map<char, double> piece_to_double;

    void init_piece_to_double();

    inline bool isnumber(char x) {//used to check input integrity
        if (x - 48 >= 0 && x - 48 <= 9) return true;
        else return false;
    }


    inline int numberise(char x) {//char to int, ie '9' to 9 
        if (isnumber(x)) return x - 48;
        else return -1;
    }


    string numstocoords(int x1, int y1, int x2, int y2);

    vector<uint64_t> board_to_bitmaps(char(&board)[8][8]);

    vector<double> serialize(vector<vector<double>>& in);

}