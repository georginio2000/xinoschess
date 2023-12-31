#pragma once

#include "move.h"
#include<vector>
using namespace std;

class Piece {
public:
    Piece(char a, int c, int d);
    void movepiece(Move move);
    void promote(char newtype);//promotion of pawns
    int getcolour();
    char gettype();
    void  getdiagonalmoves(vector<Move>& , char board[8][8]);//pushes back all the diagonal moves(bishop style) that a piece can execute before finding friendly piece,border, or eating an enemys piece
    void  gethorizontalmoves(vector<Move>& , char board[8][8]);//same as diagonal except rook style
    void  possiblemoves(vector<Move>&, char board[8][8],int);//all moves current piece can do disregarding illegalities
    void mypieceassert(bool expr,char board[8][8]);
public:
    char value;//K for white king, n for black knight etc
    int  x, y;//0 to 7
    bool ingame;//is the piece still on the board?
};
