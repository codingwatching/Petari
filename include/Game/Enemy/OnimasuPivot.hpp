#pragma once

#include "Game/NameObj/NameObj.hpp"


class OnimasuPivot : public NameObj {
public:
    OnimasuPivot(const char*);
    virtual ~OnimasuPivot();

private:
    u8 mPad[(0x130) - sizeof(NameObj)];
};
