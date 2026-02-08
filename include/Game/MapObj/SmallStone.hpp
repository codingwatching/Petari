#pragma once

#include "Game/NameObj/NameObj.hpp"


class SmallStone : public NameObj {
public:
    SmallStone(const char*);
    virtual ~SmallStone();

private:
    u8 mPad[(0xA0) - sizeof(NameObj)];
};
