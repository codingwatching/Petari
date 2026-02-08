#pragma once

#include "Game/NameObj/NameObj.hpp"


class TeresaRacer : public NameObj {
public:
    TeresaRacer(const char*);
    virtual ~TeresaRacer();

private:
    u8 mPad[(0x194) - sizeof(NameObj)];
};
