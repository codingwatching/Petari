#pragma once

#include "Game/NameObj/NameObj.hpp"


class UnizoLauncher : public NameObj {
public:
    UnizoLauncher(const char*);
    virtual ~UnizoLauncher();

private:
    u8 mPad[(0x94) - sizeof(NameObj)];
};
