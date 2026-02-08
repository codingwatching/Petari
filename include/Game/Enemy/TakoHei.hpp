#pragma once

#include "Game/NameObj/NameObj.hpp"


class TakoHei : public NameObj {
public:
    TakoHei(const char*);
    virtual ~TakoHei();

private:
    u8 mPad[(0xF0) - sizeof(NameObj)];
};
