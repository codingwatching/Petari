#pragma once

#include "Game/NameObj/NameObj.hpp"


class GrandStarReturnDemoStarter : public NameObj {
public:
    GrandStarReturnDemoStarter(const char*);
    virtual ~GrandStarReturnDemoStarter();

private:
    u8 mPad[(0x114) - sizeof(NameObj)];
};
