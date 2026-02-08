#pragma once

#include "Game/NameObj/NameObj.hpp"


class BombHeiLauncher : public NameObj {
public:
    BombHeiLauncher(const char*);
    virtual ~BombHeiLauncher();

private:
    u8 mPad[(0x9C) - sizeof(NameObj)];
};
