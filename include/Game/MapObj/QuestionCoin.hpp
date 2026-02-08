#pragma once

#include "Game/NameObj/NameObj.hpp"


class QuestionCoin : public NameObj {
public:
    QuestionCoin(const char*);
    virtual ~QuestionCoin();

private:
    u8 mPad[(0x124) - sizeof(NameObj)];
};
