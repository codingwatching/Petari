#pragma once

#include "Game/NameObj/NameObj.hpp"


class Metbo : public NameObj {
public:
    Metbo(const char*);
    virtual ~Metbo();

private:
    u8 mPad[(0xC0) - sizeof(NameObj)];
};
