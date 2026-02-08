#include "Game/MapObj/MiniatureGalaxy.hpp"
#include "Game/NameObj/NameObjArchiveListCollector.hpp"
#include "Game/Util.hpp"
#include "Game/LiveActor/LiveActor.hpp"

MiniatureGalaxy::MiniatureGalaxy(const char* pName) : LiveActor(pName) {}

void MiniatureGalaxy::makeArchiveList(NameObjArchiveListCollector* pArchiveList, const JMapInfoIter& rIter) {
    const char* pObjectName = nullptr;

    if (!MR::getObjectName(&pObjectName, rIter)) {
        return;
    }

    for (s32 i = 0; i < pArchiveList->mCount; i++) {
        if (MR::isEqualString(pArchiveList->getArchive(i), pObjectName)) {
            return;
        }
    }

    pArchiveList->addArchive(pObjectName);
}
