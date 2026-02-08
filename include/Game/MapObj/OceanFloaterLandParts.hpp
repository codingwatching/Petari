#pragma once

#include "Game/NameObj/NameObj.hpp"


class OceanFloaterLandParts : public NameObj {
public:
    OceanFloaterLandParts(const char*);
    virtual ~OceanFloaterLandParts();

private:
    u8 mPad[(0xAC) - sizeof(NameObj)];
};
