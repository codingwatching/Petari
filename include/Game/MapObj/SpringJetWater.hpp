#pragma once

#include "Game/NameObj/NameObj.hpp"


class SpringJetWater : public NameObj {
public:
    SpringJetWater(const char*);
    virtual ~SpringJetWater();

private:
    u8 mPad[(0x9C) - sizeof(NameObj)];
};
