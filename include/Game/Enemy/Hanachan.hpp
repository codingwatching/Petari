#pragma once

#include "Game/NameObj/NameObj.hpp"


class Hanachan : public NameObj {
public:
    Hanachan(const char*);
    virtual ~Hanachan();

private:
    u8 mPad[(0xC0) - sizeof(NameObj)];
};
