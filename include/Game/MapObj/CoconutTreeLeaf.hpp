#pragma once

#include "Game/NameObj/NameObj.hpp"


class CoconutTreeLeafGroup : public NameObj {
public:
    CoconutTreeLeafGroup(const char*);
    virtual ~CoconutTreeLeafGroup();

private:
    u8 mPad[(0xA4) - sizeof(NameObj)];
};
