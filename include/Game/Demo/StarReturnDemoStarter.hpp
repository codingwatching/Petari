#pragma once

#include "Game/NameObj/NameObj.hpp"

class NameObjArchiveListCollector;
class JMapInfoIter;

class StarReturnDemoStarter : public NameObj {
public:
    StarReturnDemoStarter(const char*);
    virtual ~StarReturnDemoStarter();
    static void makeArchiveList(NameObjArchiveListCollector*, const JMapInfoIter&);

private:
    u8 mPad[(0xE0) - sizeof(NameObj)];
};
