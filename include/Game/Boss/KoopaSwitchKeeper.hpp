#pragma once

#include "Game/NameObj/NameObj.hpp"


class KoopaSwitchKeeper : public NameObj {
public:
    KoopaSwitchKeeper(const char*);
    virtual ~KoopaSwitchKeeper();

private:
    u8 mPad[(0x8C) - sizeof(NameObj)];
};
