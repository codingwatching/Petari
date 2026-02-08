#pragma once

#include "Game/NameObj/NameObj.hpp"


class KoopaBattleMapCoinPlate : public NameObj {
public:
    KoopaBattleMapCoinPlate(const char*);
    virtual ~KoopaBattleMapCoinPlate();

private:
    u8 mPad[(0xBC) - sizeof(NameObj)];
};
