#pragma once

#include "Game/NameObj/NameObj.hpp"


class Teresa : public NameObj {
public:
    Teresa(const char*);
    virtual ~Teresa();

private:
    u8 mPad[(0x100) - sizeof(NameObj)];
};
