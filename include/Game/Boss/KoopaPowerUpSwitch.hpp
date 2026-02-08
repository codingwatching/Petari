#pragma once

#include "Game/NameObj/NameObj.hpp"


class KoopaPowerUpSwitch : public NameObj {
public:
    KoopaPowerUpSwitch(const char*);
    virtual ~KoopaPowerUpSwitch();

private:
    u8 mPad[(0x8C) - sizeof(NameObj)];
};
