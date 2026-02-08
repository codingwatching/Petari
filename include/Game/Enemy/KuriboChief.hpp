#pragma once

#include "Game/NameObj/NameObj.hpp"

class NameObjArchiveListCollector;
class JMapInfoIter;

class KuriboChief : public NameObj {
public:
    KuriboChief(const char*);
    virtual ~KuriboChief();
    static void makeArchiveList(NameObjArchiveListCollector*, const JMapInfoIter&);

private:
    u8 mPad[(0xC8) - sizeof(NameObj)];
};
