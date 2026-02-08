#pragma once

#include "Game/NameObj/NameObj.hpp"


class ElectricBall : public NameObj {
public:
    ElectricBall(const char*);
    virtual ~ElectricBall();

private:
    u8 mPad[(0xDC) - sizeof(NameObj)];
};
