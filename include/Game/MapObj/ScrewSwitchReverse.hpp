#pragma once

#include "Game/NameObj/NameObj.hpp"


class ScrewSwitchReverse : public NameObj {
public:
    ScrewSwitchReverse(const char*);
    virtual ~ScrewSwitchReverse();

private:
    u8 mPad[(0x94) - sizeof(NameObj)];
};
