#pragma once

#include "Game/NameObj/NameObj.hpp"


class BlueStarCupsulePlanet : public NameObj {
public:
    BlueStarCupsulePlanet(const char*);
    virtual ~BlueStarCupsulePlanet();

private:
    u8 mPad[(0xA0) - sizeof(NameObj)];
};
