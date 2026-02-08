#pragma once

#include "Game/NameObj/NameObj.hpp"


class JumpSpider : public NameObj {
public:
    JumpSpider(const char*);
    virtual ~JumpSpider();

private:
    u8 mPad[(0xAC) - sizeof(NameObj)];
};
