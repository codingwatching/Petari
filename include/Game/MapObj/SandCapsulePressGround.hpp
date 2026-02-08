#pragma once

#include "Game/NameObj/NameObj.hpp"


class SandCapsulePressGround : public NameObj {
public:
    SandCapsulePressGround(const char*);
    virtual ~SandCapsulePressGround();

private:
    u8 mPad[(0x10C) - sizeof(NameObj)];
};
