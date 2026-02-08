#pragma once

#include "Game/NameObj/NameObj.hpp"


class Gesso : public NameObj {
public:
    Gesso(const char*);
    virtual ~Gesso();

private:
    u8 mPad[(0xD8) - sizeof(NameObj)];
};
