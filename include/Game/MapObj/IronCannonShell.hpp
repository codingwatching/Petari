#pragma once

#include "Game/NameObj/NameObj.hpp"


class IronCannonLauncher : public NameObj {
public:
    IronCannonLauncher(const char*);
    virtual ~IronCannonLauncher();

private:
    u8 mPad[(0xA4) - sizeof(NameObj)];
};

class IronCannonLauncherPoint : public NameObj {
public:
    IronCannonLauncherPoint(const char*);
    virtual ~IronCannonLauncherPoint();

private:
    u8 mPad[(0x98) - sizeof(NameObj)];
};
