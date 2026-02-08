#pragma once

#include "Game/NameObj/NameObj.hpp"


class WaterPlant : public NameObj {
public:
    WaterPlant(const char*);
    virtual ~WaterPlant();

private:
    u8 mPad[(0xA8) - sizeof(NameObj)];
};
