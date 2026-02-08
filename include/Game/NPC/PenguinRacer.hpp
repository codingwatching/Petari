#pragma once

#include "Game/NameObj/NameObj.hpp"


class PenguinRacer : public NameObj {
public:
    PenguinRacer(const char*);
    virtual ~PenguinRacer();

private:
    u8 mPad[(0x190) - sizeof(NameObj)];
};
