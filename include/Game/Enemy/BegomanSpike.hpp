#pragma once

#include "Game/NameObj/NameObj.hpp"


class BegomanSpike : public NameObj {
public:
    BegomanSpike(const char*);
    virtual ~BegomanSpike();

private:
    u8 mPad[(0x16C) - sizeof(NameObj)];
};
