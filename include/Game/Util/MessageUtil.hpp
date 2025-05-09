#pragma once

#include <revolution.h>

namespace MR {
    const wchar_t* getGameMessageDirect(const char *);
    const wchar_t* getCurrentGalaxyNameOnCurrentLanguage();
    const wchar_t* getCurrentScenarioNameOnCurrentLanguage();
    const wchar_t* getGalaxyNameShortOnCurrentLanguage(const char *);

    const wchar_t* getLayoutMessageDirect(const char *);

    void makeCometMessageID(char *, u32, const char *);
};
