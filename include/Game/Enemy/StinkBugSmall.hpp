#pragma once

#include "Game/NameObj/NameObj.hpp"


class StinkBugSmall : public NameObj {
public:
    StinkBugSmall(const char*);
    virtual ~StinkBugSmall();

private:
    u8 mPad[(0xC8) - sizeof(NameObj)];
};
