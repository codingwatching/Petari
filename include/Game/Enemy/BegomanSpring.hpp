#pragma once

#include "Game/NameObj/NameObj.hpp"


class BegomanSpring : public NameObj {
public:
    BegomanSpring(const char*);
    virtual ~BegomanSpring();

private:
    u8 mPad[(0x190) - sizeof(NameObj)];
};
