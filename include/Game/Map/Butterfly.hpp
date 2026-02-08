#pragma once

#include "Game/NameObj/NameObj.hpp"


class Butterfly : public NameObj {
public:
    Butterfly(const char*);
    virtual ~Butterfly();

private:
    u8 mPad[(0xB4) - sizeof(NameObj)];
};
