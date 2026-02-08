#pragma once

#include "Game/NameObj/NameObj.hpp"


class SpringWaterFloaterSpot : public NameObj {
public:
    SpringWaterFloaterSpot(const char*);
    virtual ~SpringWaterFloaterSpot();

private:
    u8 mPad[(0x100) - sizeof(NameObj)];
};
