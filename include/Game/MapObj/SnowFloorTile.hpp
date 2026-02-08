#pragma once

#include "Game/NameObj/NameObj.hpp"


class SnowFloorTile : public NameObj {
public:
    SnowFloorTile(const char*);
    virtual ~SnowFloorTile();

private:
    u8 mPad[(0x10C) - sizeof(NameObj)];
};
