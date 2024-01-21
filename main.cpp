#include "chessv2/game.h"
#include "chessv2/utilities.h"
<<<<<<< HEAD
#include"cnn/cnn.h"
=======
#include"cnn/Cnn.h"
>>>>>>> 1dfbd18b87e1985487bf2a615d59d201dd269c4e
#include"mcts/mcts.h"
#include<ctime>


//INITIALISE PARAMETERS
<<<<<<< HEAD
bool TESTING = false;
=======
bool TESTING = true;
bool MONTE_CARLO = true;

>>>>>>> 1dfbd18b87e1985487bf2a615d59d201dd269c4e

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
    time_t now = std::time(nullptr);
    tm* localTime = std::localtime(&now);

    util::init_piece_to_double();
    //Game game("3rk3/8/8/8/8/8/8/1Q1RK3 w ----  -" );
    Game* game = new Game;
    cout << game->getmovenum();
    game->updatepossiblemoves();
    string input;
    util::board_to_bitmaps(game->skakiera);


    if (!TESTING) {
        //*****proper game*****
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
    else if(!MONTE_CARLO){
        Move random_move = game->choose_random_move();
        Game temp = *game;
        while (random_move.coords != "pain" && temp.ended() == 2) {
            temp = *temp.play(random_move);
            random_move = temp.choose_random_move();
           // cout << random_move.coords;
        }
        for (int i = 0; i < temp.movelog.size(); ++i)cout << temp.movelog[i].coords;
        cout << '\n';
        game->draw();
        temp.draw();
        cout << "exited";
    }
    else {
        srand(time(NULL));
        MCTS test(game, 10, 10);
        test.run();
        test.print();
    }
}
