#pragma once

#include "Game/NameObj/NameObj.hpp"


class MechanicKoopaMini : public NameObj {
public:
    MechanicKoopaMini(const char*);
    virtual ~MechanicKoopaMini();

private:
    u8 mPad[(0x98) - sizeof(NameObj)];
};
