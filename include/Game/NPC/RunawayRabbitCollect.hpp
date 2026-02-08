#pragma once

#include "Game/NameObj/NameObj.hpp"


class RunawayRabbitCollect : public NameObj {
public:
    RunawayRabbitCollect(const char*);
    virtual ~RunawayRabbitCollect();

private:
    u8 mPad[(0xB4) - sizeof(NameObj)];
};
