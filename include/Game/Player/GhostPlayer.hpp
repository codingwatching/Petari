#pragma once

#include "Game/NameObj/NameObj.hpp"

class NameObjArchiveListCollector;
class JMapInfoIter;

class GhostPlayer : public NameObj {
public:
    GhostPlayer(const char*);
    virtual ~GhostPlayer();
    static void makeArchiveList(NameObjArchiveListCollector*, const JMapInfoIter&);

private:
    u8 mPad[(0x134) - sizeof(NameObj)];
};
