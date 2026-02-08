#pragma once

#include "Game/NameObj/NameObj.hpp"


class SamboHead : public NameObj {
public:
    SamboHead(const char*);
    virtual ~SamboHead();

private:
    u8 mPad[(0xB4) - sizeof(NameObj)];
};
