#pragma once

#include "Game/NameObj/NameObj.hpp"

class NameObjArchiveListCollector;
class JMapInfoIter;

class OtaRock : public NameObj {
public:
    OtaRock(const char*);
    virtual ~OtaRock();
    static void makeArchiveList(NameObjArchiveListCollector*, const JMapInfoIter&);

private:
    u8 mPad[(0xE4) - sizeof(NameObj)];
};
