#include <iostream>
#include <APP.hpp>

using namespace std;
class Game: public  APP
{
private:
    
public:
    Game() {

    }
    virtual void Update(float delta) override{
        cout << delta << endl;
    }
    ~Game() {

    }
};