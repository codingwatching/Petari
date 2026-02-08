#pragma once
#include "Game/NameObj/NameObj.hpp"


namespace JMath {
    void gekko_ps_copy12(void*, const void*);
};

class BossStinkBug : public NameObj {
public:
    BossStinkBug(const char*);
    virtual ~BossStinkBug();

private:
    u8 mPad[(0x114) - sizeof(NameObj)];
};
