#pragma once

#include "Game/NameObj/NameObj.hpp"


class NokonokoLand : public NameObj {
public:
    NokonokoLand(const char*);
    virtual ~NokonokoLand();

private:
    u8 mPad[(0xC8) - sizeof(NameObj)];
};
