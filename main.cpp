#include "chessv2/game.h"
#include "chessv2/move.h"
#include "chessv2/utilities.h"
#include"cnn/cnn.h"
#include"mcts/mcts.h"
#include"mcts/node.h"

//INITIALISE PARAMETERS
bool TESTING = false;

void movetree(Game game, int d) {
    vector<Game> movetree;
    movetree.push_back(game);
    vector<int> depth_size;
    int depth = 1;
    const int desired_depth = d;
    int counter = 0;
    depth_size.push_back(0);
    depth_size.push_back(1);
    while (depth != desired_depth) {
        for (int counter = depth_size[depth - 1]; counter < depth_size[depth]; ++counter) {
            for (auto& element : movetree[counter].currentpossiblemoves) {
                if (element.allowed) {
                    //system("cls");
                    Game temp = movetree[counter];
                    temp.receivemove(element.coords);
                    temp.incrmovenum();
                    temp.currentenpassant = temp.lastmovedoublepush();
                    temp.updatecastlingbools();
                    temp.updatepossiblemoves();
                    bool checkmate = true;
                    movetree.push_back(temp);
                    //temp.draw();
                    //Sleep(500);
                }
            }
        }
        cout << depth << ' ' << movetree.size() - 1 << '\n';
        depth++;
        int giwrgos = movetree.size();
        depth_size.push_back(giwrgos - 1);
    }
    cout << movetree.size() - 1;
}

int main() {
    util::init_piece_to_double();
    //Game game("3rk3/8/8/8/8/8/8/1Q1RK3 w ----  -" );
    Game* game = new Game;
    game->updatepossiblemoves();
    string input;
    util::board_to_bitmaps(game->skakiera);
    if (!TESTING) {
        
        //*****proper*****
        while (input != "end") {
            game->draw();
            for (auto& element : game->currentpossiblemoves) {
                if (element.allowed == true) {
                    cout << element.coords;
                    cout << " ";
                }
            }
            cout<<"\n\nInput: ";
            cin >> input;
            game->receivemove(input);
            game->incrmovenum();
            game->currentenpassant = game->lastmovedoublepush();
            game->updatecastlingbools();
            game->updatepossiblemoves();
            bool checkmate = true;
            for (auto& element : game->currentpossiblemoves) {
                if (element.allowed == true)checkmate = false;
            }
            if (checkmate == true) {
                system("cls");
                game->draw();
                if (!game->check_check(-1)) {
                    cout << "game ended with stalemate\n";
                }
                else {
                    cout << "game ended with checkmate\n";
                }
                break;
            }
            system("cls");
        }
    }
    //**********for testing purposes*********
    else {
        MCTS tree(game, 5, 500);
        tree.run();
        tree.print();
    }
}

/*
    TODO:
    MOVETREE doneeeeeeeeeeeeeee magkasssssss
    stalemate done magkasssssss
    eaten pieces on the side of the board
    check beginning positions
    
*/
