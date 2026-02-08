#pragma once

#include "Game/NameObj/NameObj.hpp"


class SeesawMoveNut : public NameObj {
public:
    SeesawMoveNut(const char*);
    virtual ~SeesawMoveNut();

private:
    u8 mPad[(0xD0) - sizeof(NameObj)];
};
