#pragma once

#include "Game/NameObj/NameObj.hpp"


class SpaceShipStep : public NameObj {
public:
    SpaceShipStep(const char*);
    virtual ~SpaceShipStep();

private:
    u8 mPad[(0xD8) - sizeof(NameObj)];
};
