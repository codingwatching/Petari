#pragma once

#include "Game/NameObj/NameObj.hpp"


class PenguinSkater : public NameObj {
public:
    PenguinSkater(const char*);
    virtual ~PenguinSkater();

private:
    u8 mPad[(0x1D0) - sizeof(NameObj)];
};
