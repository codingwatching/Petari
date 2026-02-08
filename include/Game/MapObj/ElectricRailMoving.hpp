#pragma once

#include "Game/NameObj/NameObj.hpp"


class ElectricRailMoving : public NameObj {
public:
    ElectricRailMoving(const char*);
    virtual ~ElectricRailMoving();

private:
    u8 mPad[(0xF4) - sizeof(NameObj)];
};
