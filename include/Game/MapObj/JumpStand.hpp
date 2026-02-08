#pragma once

#include "Game/NameObj/NameObj.hpp"


class JumpStand : public NameObj {
public:
    JumpStand(const char*);
    virtual ~JumpStand();

private:
    u8 mPad[(0xC4) - sizeof(NameObj)];
};
