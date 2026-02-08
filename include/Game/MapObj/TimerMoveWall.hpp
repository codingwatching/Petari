#pragma once

#include "Game/NameObj/NameObj.hpp"


class TimerMoveWall : public NameObj {
public:
    TimerMoveWall(const char*);
    virtual ~TimerMoveWall();

private:
    u8 mPad[(0xCC) - sizeof(NameObj)];
};
