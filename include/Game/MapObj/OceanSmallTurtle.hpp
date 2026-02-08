#pragma once

#include "Game/NameObj/NameObj.hpp"


class OceanSmallTurtle : public NameObj {
public:
    OceanSmallTurtle(const char*);
    virtual ~OceanSmallTurtle();

private:
    u8 mPad[(0x114) - sizeof(NameObj)];
};
