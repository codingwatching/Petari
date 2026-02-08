#pragma once

#include "Game/NameObj/NameObj.hpp"


class Syati : public NameObj {
public:
    Syati(const char*);
    virtual ~Syati();

private:
    u8 mPad[(0x15C) - sizeof(NameObj)];
};
