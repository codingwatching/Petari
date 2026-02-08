#pragma once

#include "Game/NameObj/NameObj.hpp"


class Jellyfish : public NameObj {
public:
    Jellyfish(const char*);
    virtual ~Jellyfish();

private:
    u8 mPad[(0xC0) - sizeof(NameObj)];
};
