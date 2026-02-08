#pragma once

#include "Game/NameObj/NameObj.hpp"

class NameObjArchiveListCollector;
class JMapInfoIter;

class KoopaJrShip : public NameObj {
public:
    KoopaJrShip(const char*);
    virtual ~KoopaJrShip();
    static void makeArchiveList(NameObjArchiveListCollector*, const JMapInfoIter&);

private:
    u8 mPad[(0x204) - sizeof(NameObj)];
};
