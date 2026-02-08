#pragma once

#include "Game/NameObj/NameObj.hpp"


class DharmaSambo : public NameObj {
public:
    DharmaSambo(const char*);
    virtual ~DharmaSambo();

private:
    u8 mPad[(0xC8) - sizeof(NameObj)];
};
