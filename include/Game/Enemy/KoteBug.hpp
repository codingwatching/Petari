#pragma once

#include "Game/NameObj/NameObj.hpp"


class KoteBug : public NameObj {
public:
    KoteBug(const char*);
    virtual ~KoteBug();

private:
    u8 mPad[(0xBC) - sizeof(NameObj)];
};
