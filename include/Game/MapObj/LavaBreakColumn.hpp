#pragma once

#include "Game/NameObj/NameObj.hpp"


class LavaBreakColumn : public NameObj {
public:
    LavaBreakColumn(const char*);
    virtual ~LavaBreakColumn();

private:
    u8 mPad[(0xE0) - sizeof(NameObj)];
};
