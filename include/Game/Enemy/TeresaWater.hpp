#pragma once

#include "Game/NameObj/NameObj.hpp"


class TeresaWater : public NameObj {
public:
    TeresaWater(const char*);
    virtual ~TeresaWater();

private:
    u8 mPad[(0xBC) - sizeof(NameObj)];
};
