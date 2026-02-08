#pragma once

#include "Game/NameObj/NameObj.hpp"


class Unizo : public NameObj {
public:
    Unizo(const char*);
    virtual ~Unizo();

private:
    u8 mPad[(0x134) - sizeof(NameObj)];
};
