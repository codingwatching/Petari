#pragma once

#include "Game/NameObj/NameObj.hpp"


class JumpHole : public NameObj {
public:
    JumpHole(const char*);
    virtual ~JumpHole();

private:
    u8 mPad[(0xE8) - sizeof(NameObj)];
};
