#pragma once

#include "Game/NameObj/NameObj.hpp"


class GravityLight : public NameObj {
public:
    GravityLight(const char*);
    virtual ~GravityLight();

private:
    u8 mPad[(0xDC) - sizeof(NameObj)];
};
