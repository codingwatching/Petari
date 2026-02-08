#pragma once

#include "Game/NameObj/NameObj.hpp"


class FallDownBridge : public NameObj {
public:
    FallDownBridge(const char*);
    virtual ~FallDownBridge();

private:
    u8 mPad[(0xAC) - sizeof(NameObj)];
};
