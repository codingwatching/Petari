#pragma once

#include "Game/NameObj/NameObj.hpp"


class Shellfish : public NameObj {
public:
    Shellfish(const char*);
    virtual ~Shellfish();

private:
    u8 mPad[(0xA8) - sizeof(NameObj)];
};
