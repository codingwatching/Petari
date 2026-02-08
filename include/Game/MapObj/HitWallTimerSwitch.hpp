#pragma once

#include "Game/NameObj/NameObj.hpp"


class HitWallTimerSwitch : public NameObj {
public:
    HitWallTimerSwitch(const char*);
    virtual ~HitWallTimerSwitch();

private:
    u8 mPad[(0x9C) - sizeof(NameObj)];
};
