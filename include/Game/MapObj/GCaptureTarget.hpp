#pragma once

#include "Game/NameObj/NameObj.hpp"


class GCaptureTarget : public NameObj {
public:
    GCaptureTarget(const char*);
    virtual ~GCaptureTarget();

private:
    u8 mPad[(0xA8) - sizeof(NameObj)];
};
