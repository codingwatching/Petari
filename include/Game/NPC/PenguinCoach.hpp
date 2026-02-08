#pragma once

#include "Game/NameObj/NameObj.hpp"


class PenguinCoach : public NameObj {
public:
    PenguinCoach(const char*);
    virtual ~PenguinCoach();

private:
    u8 mPad[(0x17C) - sizeof(NameObj)];
};
