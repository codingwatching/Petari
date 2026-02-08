#pragma once

#include "Game/NameObj/NameObj.hpp"


class SphereSelectorHandle : public NameObj {
public:
    SphereSelectorHandle(const char*);
    virtual ~SphereSelectorHandle();

private:
    u8 mPad[(0x12C) - sizeof(NameObj)];
};
