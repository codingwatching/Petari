#pragma once

#include "Game/NameObj/NameObj.hpp"


class BombHei : public NameObj {
public:
    BombHei(const char*);
    virtual ~BombHei();

private:
    u8 mPad[(0xE0) - sizeof(NameObj)];
};
