#pragma once

#include "Game/NameObj/NameObj.hpp"


class EffectObjGravityDust : public NameObj {
public:
    EffectObjGravityDust(const char*);
    virtual ~EffectObjGravityDust();

private:
    u8 mPad[(0xA4) - sizeof(NameObj)];
};
