#pragma once

#include "Game/NameObj/NameObj.hpp"


class KuriboMini : public NameObj {
public:
    KuriboMini(const char*);
    virtual ~KuriboMini();

private:
    u8 mPad[(0xC4) - sizeof(NameObj)];
};
