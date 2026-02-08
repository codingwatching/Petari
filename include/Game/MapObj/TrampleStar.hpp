#pragma once

#include "Game/NameObj/NameObj.hpp"


class TrampleStar : public NameObj {
public:
    TrampleStar(const char*);
    virtual ~TrampleStar();

private:
    u8 mPad[(0xEC) - sizeof(NameObj)];
};
