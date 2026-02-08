#pragma once

#include "Game/NameObj/NameObj.hpp"


class SwingLight : public NameObj {
public:
    SwingLight(const char*);
    virtual ~SwingLight();

private:
    u8 mPad[(0xC8) - sizeof(NameObj)];
};
