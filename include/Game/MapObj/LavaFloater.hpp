#pragma once

#include "Game/NameObj/NameObj.hpp"


class LavaFloater : public NameObj {
public:
    LavaFloater(const char*);
    virtual ~LavaFloater();

private:
    u8 mPad[(0xAC) - sizeof(NameObj)];
};
