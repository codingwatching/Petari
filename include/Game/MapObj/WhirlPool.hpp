#pragma once

#include "Game/NameObj/NameObj.hpp"


class WhirlPool : public NameObj {
public:
    WhirlPool(const char*);
    virtual ~WhirlPool();

private:
    u8 mPad[(0xD8) - sizeof(NameObj)];
};
