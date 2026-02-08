#pragma once

#include "Game/NameObj/NameObj.hpp"


class KoopaViewSwitchKeeper : public NameObj {
public:
    KoopaViewSwitchKeeper(const char*);
    virtual ~KoopaViewSwitchKeeper();

private:
    u8 mPad[(0x8C) - sizeof(NameObj)];
};
