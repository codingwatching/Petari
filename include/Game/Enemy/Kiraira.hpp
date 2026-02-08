#pragma once

#include "Game/NameObj/NameObj.hpp"


class Kiraira : public NameObj {
public:
    Kiraira(const char*);
    virtual ~Kiraira();

private:
    u8 mPad[(0xB8) - sizeof(NameObj)];
};
