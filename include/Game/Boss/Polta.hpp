#pragma once

#include "Game/NameObj/NameObj.hpp"


class Polta : public NameObj {
public:
    Polta(const char*);
    virtual ~Polta();

private:
    u8 mPad[(0xF0) - sizeof(NameObj)];
};
