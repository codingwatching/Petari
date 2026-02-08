#pragma once

#include "Game/NameObj/NameObj.hpp"


class StringSpider : public NameObj {
public:
    StringSpider(const char*);
    virtual ~StringSpider();

private:
    u8 mPad[(0xC8) - sizeof(NameObj)];
};
