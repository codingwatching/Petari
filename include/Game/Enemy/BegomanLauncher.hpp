#pragma once

#include "Game/NameObj/NameObj.hpp"


class BegomanLauncher : public NameObj {
public:
    BegomanLauncher(const char*);
    virtual ~BegomanLauncher();

private:
    u8 mPad[(0x9C) - sizeof(NameObj)];
};
