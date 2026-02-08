#pragma once

#include "Game/NameObj/NameObj.hpp"


class SimpleBreakableObj : public NameObj {
public:
    SimpleBreakableObj(const char*);
    virtual ~SimpleBreakableObj();

private:
    u8 mPad[(0xE8) - sizeof(NameObj)];
};
