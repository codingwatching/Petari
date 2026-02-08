#pragma once

#include "Game/NameObj/NameObj.hpp"


class StinkBugParent : public NameObj {
public:
    StinkBugParent(const char*);
    virtual ~StinkBugParent();

private:
    u8 mPad[(0xC4) - sizeof(NameObj)];
};
