#pragma once

#include "Game/NameObj/NameObj.hpp"


class Balloonfish : public NameObj {
public:
    Balloonfish(const char*);
    virtual ~Balloonfish();

private:
    u8 mPad[(0xAC) - sizeof(NameObj)];
};
