#pragma once

#include "Game/NameObj/NameObj.hpp"


class PhantomShipHandle : public NameObj {
public:
    PhantomShipHandle(const char*);
    virtual ~PhantomShipHandle();

private:
    u8 mPad[(0x90) - sizeof(NameObj)];
};
