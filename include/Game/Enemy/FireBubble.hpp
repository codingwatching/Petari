#pragma once

#include "Game/NameObj/NameObj.hpp"


class FireBubble : public NameObj {
public:
    FireBubble(const char*);
    virtual ~FireBubble();

private:
    u8 mPad[(0xC8) - sizeof(NameObj)];
};
