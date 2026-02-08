#pragma once

#include "Game/NameObj/NameObj.hpp"


class SubmarineSteam : public NameObj {
public:
    SubmarineSteam(const char*);
    virtual ~SubmarineSteam();

private:
    u8 mPad[(0x98) - sizeof(NameObj)];
};
