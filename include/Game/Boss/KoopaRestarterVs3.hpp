#pragma once

#include "Game/NameObj/NameObj.hpp"


class KoopaRestarterVs3 : public NameObj {
public:
    KoopaRestarterVs3(const char*);
    virtual ~KoopaRestarterVs3();

private:
    u8 mPad[(0x8C) - sizeof(NameObj)];
};
