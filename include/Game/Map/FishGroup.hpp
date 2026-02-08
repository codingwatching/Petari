#pragma once

#include "Game/NameObj/NameObj.hpp"


class FishGroup : public NameObj {
public:
    FishGroup(const char*);
    virtual ~FishGroup();

private:
    u8 mPad[(0xB0) - sizeof(NameObj)];
};
