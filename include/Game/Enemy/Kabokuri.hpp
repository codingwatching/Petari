#pragma once

#include "Game/NameObj/NameObj.hpp"


class Kabokuri : public NameObj {
public:
    Kabokuri(const char*);
    virtual ~Kabokuri();

private:
    u8 mPad[(0xC0) - sizeof(NameObj)];
};
