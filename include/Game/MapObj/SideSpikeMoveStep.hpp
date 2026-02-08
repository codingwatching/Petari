#pragma once

#include "Game/NameObj/NameObj.hpp"


class SideSpikeMoveStep : public NameObj {
public:
    SideSpikeMoveStep(const char*);
    virtual ~SideSpikeMoveStep();

private:
    u8 mPad[(0xD8) - sizeof(NameObj)];
};
