#pragma once

#include "Game/NameObj/NameObj.hpp"


class Kanina : public NameObj {
public:
    Kanina(const char*);
    virtual ~Kanina();

private:
    u8 mPad[(0xE0) - sizeof(NameObj)];
};
