#pragma once

#include "Game/NameObj/NameObj.hpp"


class CocoSambo : public NameObj {
public:
    CocoSambo(const char*);
    virtual ~CocoSambo();

private:
    u8 mPad[(0xC8) - sizeof(NameObj)];
};
