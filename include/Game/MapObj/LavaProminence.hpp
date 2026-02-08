#pragma once

#include "Game/NameObj/NameObj.hpp"


class LavaProminence : public NameObj {
public:
    LavaProminence(const char*);
    virtual ~LavaProminence();

private:
    u8 mPad[(0x1BC) - sizeof(NameObj)];
};
