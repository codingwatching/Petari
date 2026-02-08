#pragma once

#include "Game/NameObj/NameObj.hpp"


class ItemBubble : public NameObj {
public:
    ItemBubble(const char*);
    virtual ~ItemBubble();

private:
    u8 mPad[(0x11C) - sizeof(NameObj)];
};
