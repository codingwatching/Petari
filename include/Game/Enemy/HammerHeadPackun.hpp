#pragma once

#include "Game/NameObj/NameObj.hpp"


class HammerHeadPackun : public NameObj {
public:
    HammerHeadPackun(const char*);
    virtual ~HammerHeadPackun();

private:
    u8 mPad[(0xC0) - sizeof(NameObj)];
};
