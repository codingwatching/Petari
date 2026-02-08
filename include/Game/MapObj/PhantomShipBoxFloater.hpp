#pragma once

#include "Game/NameObj/NameObj.hpp"


class PhantomShipBoxFloater : public NameObj {
public:
    PhantomShipBoxFloater(const char*);
    virtual ~PhantomShipBoxFloater();

private:
    u8 mPad[(0xA4) - sizeof(NameObj)];
};
