#pragma once

#include "Game/NameObj/NameObj.hpp"


class JellyfishElectric : public NameObj {
public:
    JellyfishElectric(const char*);
    virtual ~JellyfishElectric();

private:
    u8 mPad[(0xC0) - sizeof(NameObj)];
};
