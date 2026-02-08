#pragma once

#include "Game/NameObj/NameObj.hpp"


class MeteorStrikeLauncher : public NameObj {
public:
    MeteorStrikeLauncher(const char*);
    virtual ~MeteorStrikeLauncher();

private:
    u8 mPad[(0xA0) - sizeof(NameObj)];
};
