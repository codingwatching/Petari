#pragma once

#include "Game/NameObj/NameObj.hpp"


class StarPieceMother : public NameObj {
public:
    StarPieceMother(const char*);
    virtual ~StarPieceMother();

private:
    u8 mPad[(0xA4) - sizeof(NameObj)];
};
