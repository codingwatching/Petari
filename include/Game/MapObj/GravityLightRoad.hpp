#pragma once

#include "Game/NameObj/NameObj.hpp"


class GravityLightRoad : public NameObj {
public:
    GravityLightRoad(const char*);
    virtual ~GravityLightRoad();

private:
    u8 mPad[(0xA4) - sizeof(NameObj)];
};
