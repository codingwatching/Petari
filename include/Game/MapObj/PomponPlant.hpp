#pragma once

#include "Game/NameObj/NameObj.hpp"


class PomponPlant : public NameObj {
public:
    PomponPlant(const char*);
    virtual ~PomponPlant();

private:
    u8 mPad[(0x98) - sizeof(NameObj)];
};
