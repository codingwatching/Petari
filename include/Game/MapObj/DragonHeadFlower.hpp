#pragma once

#include "Game/NameObj/NameObj.hpp"


class DragonHeadFlower : public NameObj {
public:
    DragonHeadFlower(const char*);
    virtual ~DragonHeadFlower();

private:
    u8 mPad[(0xE0) - sizeof(NameObj)];
};
