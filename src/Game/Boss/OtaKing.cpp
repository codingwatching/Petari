#include "Game/Boss/OtaKing.hpp"
#include "Game/NameObj/NameObjArchiveListCollector.hpp"
#include "Game/Util.hpp"
#include "Game/MapObj/CocoNut.hpp"

OtaKing::OtaKing(const char* pName) : NameObj(pName) {}
OtaKing::~OtaKing() {}

void OtaKing::makeArchiveList(NameObjArchiveListCollector* pArchiveList, const JMapInfoIter& rIter) {
    bool isLv2 = false;
    MR::getJMapInfoArg1NoInit(rIter, &isLv2);

    pArchiveList->addArchive(CocoNut::getModelName());
    pArchiveList->addArchive("FireBall");
    pArchiveList->addArchive("FireBubble");
    pArchiveList->addArchive("OtaKingMagma");
    pArchiveList->addArchive("OtaKingMagmaBloom");

    if (!isLv2) {
        pArchiveList->addArchive("OtaKing");
        pArchiveList->addArchive("OtaKingFoot");
        pArchiveList->addArchive("OtaKingLongFoot");
    }
    else {
        pArchiveList->addArchive("OtaKingLv2");
        pArchiveList->addArchive("OtaKingFootLv2");
    }
}
