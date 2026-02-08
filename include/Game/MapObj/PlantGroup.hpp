#pragma once

#include "Game/NameObj/NameObj.hpp"


class PlantGroup : public NameObj {
public:
    PlantGroup(const char*);
    virtual ~PlantGroup();

private:
    u8 mPad[(0xBC) - sizeof(NameObj)];
};
