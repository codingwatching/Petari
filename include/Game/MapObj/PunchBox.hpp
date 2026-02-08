#pragma once

#include "Game/NameObj/NameObj.hpp"


class PunchBox : public NameObj {
public:
    PunchBox(const char*);
    virtual ~PunchBox();

private:
    u8 mPad[(0xA0) - sizeof(NameObj)];
};
