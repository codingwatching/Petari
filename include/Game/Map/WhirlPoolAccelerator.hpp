#pragma once

#include "Game/NameObj/NameObj.hpp"


class WhirlPoolAccelerator : public NameObj {
public:
    WhirlPoolAccelerator(const char*);
    virtual ~WhirlPoolAccelerator();

private:
    u8 mPad[(0xC4) - sizeof(NameObj)];
};
