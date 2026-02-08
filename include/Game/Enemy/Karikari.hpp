#pragma once

#include "Game/NameObj/NameObj.hpp"


class Karikari : public NameObj {
public:
    Karikari(const char*);
    virtual ~Karikari();

private:
    u8 mPad[(0xA8) - sizeof(NameObj)];
};
