#pragma once

#include "Game/NameObj/NameObj.hpp"

class NameObjArchiveListCollector;
class JMapInfoIter;

class RunawayTico : public NameObj {
public:
    RunawayTico(const char*);
    virtual ~RunawayTico();
    static void makeArchiveList(NameObjArchiveListCollector*, const JMapInfoIter&);
};
