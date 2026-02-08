#pragma once

#include "Game/NameObj/NameObj.hpp"


class Kinopio : public NameObj {
public:
    Kinopio(const char*);
    virtual ~Kinopio();

private:
    u8 mPad[(0x188) - sizeof(NameObj)];
};
