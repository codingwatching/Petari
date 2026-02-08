#pragma once

#include "Game/NameObj/NameObj.hpp"


class LavaHomeSeesaw : public NameObj {
public:
    LavaHomeSeesaw(const char*);
    virtual ~LavaHomeSeesaw();

private:
    u8 mPad[(0xA4) - sizeof(NameObj)];
};
