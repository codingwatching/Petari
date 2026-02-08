#pragma once

#include "Game/NameObj/NameObj.hpp"


class PenguinRacerLeader : public NameObj {
public:
    PenguinRacerLeader(const char*);
    virtual ~PenguinRacerLeader();

private:
    u8 mPad[(0x198) - sizeof(NameObj)];
};
