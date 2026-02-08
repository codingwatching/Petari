#pragma once

#include "Game/NameObj/NameObj.hpp"


class WaterPressure : public NameObj {
public:
    WaterPressure(const char*);
    virtual ~WaterPressure();

private:
    u8 mPad[(0xC8) - sizeof(NameObj)];
};
