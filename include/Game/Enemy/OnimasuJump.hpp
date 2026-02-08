#pragma once

#include "Game/NameObj/NameObj.hpp"


class OnimasuJump : public NameObj {
public:
    OnimasuJump(const char*);
    virtual ~OnimasuJump();

private:
    u8 mPad[(0x110) - sizeof(NameObj)];
};
