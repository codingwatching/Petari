#pragma once

#include "Game/NameObj/NameObj.hpp"


class AstroDomeDemoStarter : public NameObj {
public:
    AstroDomeDemoStarter(const char*);
    virtual ~AstroDomeDemoStarter();

private:
    u8 mPad[(0xF8) - sizeof(NameObj)];
};
