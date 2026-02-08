#pragma once

#include "Game/NameObj/NameObj.hpp"


class ElectricRail : public NameObj {
public:
    ElectricRail(const char*);
    virtual ~ElectricRail();

private:
    u8 mPad[(0xB8) - sizeof(NameObj)];
};
