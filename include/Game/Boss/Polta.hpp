#pragma once

#include "Game/NameObj/NameObj.hpp"
#include "Game/LiveActor/LiveActor.hpp"


class Polta : public LiveActor {
public:
    Polta(const char*);
    virtual ~Polta();

private:
    u8 mPad[(0xF0) - sizeof(LiveActor)];
};
