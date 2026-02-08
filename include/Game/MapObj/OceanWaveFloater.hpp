#pragma once

#include "Game/NameObj/NameObj.hpp"


class OceanWaveFloater : public NameObj {
public:
    OceanWaveFloater(const char*);
    virtual ~OceanWaveFloater();

private:
    u8 mPad[(0xF0) - sizeof(NameObj)];
};
