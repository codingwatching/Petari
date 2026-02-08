#pragma once

#include "Game/NameObj/NameObj.hpp"


class SandUpDownEffectObj : public NameObj {
public:
    SandUpDownEffectObj(const char*);
    virtual ~SandUpDownEffectObj();

private:
    u8 mPad[(0xD4) - sizeof(NameObj)];
};
