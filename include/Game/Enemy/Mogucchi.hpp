#pragma once

#include "Game/NameObj/NameObj.hpp"


class Mogucchi : public NameObj {
public:
    Mogucchi(const char*);
    virtual ~Mogucchi();

private:
    u8 mPad[(0xF4) - sizeof(NameObj)];
};
