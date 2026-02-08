#pragma once

#include "Game/NameObj/NameObj.hpp"


class MarioLauncher : public NameObj {
public:
    MarioLauncher(const char*);
    virtual ~MarioLauncher();

private:
    u8 mPad[(0x220) - sizeof(NameObj)];
};
