#pragma once

#include "Game/NameObj/NameObj.hpp"


class ShockWaveGenerator : public NameObj {
public:
    ShockWaveGenerator(const char*);
    virtual ~ShockWaveGenerator();

private:
    u8 mPad[(0x90) - sizeof(NameObj)];
};
