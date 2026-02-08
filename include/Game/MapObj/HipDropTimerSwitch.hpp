#pragma once

#include "Game/NameObj/NameObj.hpp"


class HipDropTimerSwitch : public NameObj {
public:
    HipDropTimerSwitch(const char*);
    virtual ~HipDropTimerSwitch();

private:
    u8 mPad[(0xD8) - sizeof(NameObj)];
};
