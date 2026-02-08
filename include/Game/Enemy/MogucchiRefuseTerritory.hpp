#pragma once

#include "Game/NameObj/NameObj.hpp"


class MogucchiRefuseTerritory : public NameObj {
public:
    MogucchiRefuseTerritory(const char*);
    virtual ~MogucchiRefuseTerritory();

private:
    u8 mPad[(0x8C) - sizeof(NameObj)];
};
