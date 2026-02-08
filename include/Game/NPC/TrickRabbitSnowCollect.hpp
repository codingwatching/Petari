#pragma once

#include "Game/NameObj/NameObj.hpp"


class TrickRabbitSnowCollect : public NameObj {
public:
    TrickRabbitSnowCollect(const char*);
    virtual ~TrickRabbitSnowCollect();

private:
    u8 mPad[(0xDC) - sizeof(NameObj)];
};
