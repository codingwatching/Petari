#include "Game/Map/FileSelectItem.hpp"
#include "Game/Map/FileSelectModel.hpp"
#include "Game/NPC/MiiFaceParts.hpp"

namespace {
    NEW_NERVE(FileSelectItemNrvNewWait, FileSelectItem, NewWait);
    NEW_NERVE(FileSelectItemNrvExistWait, FileSelectItem, ExistWait);
    NEW_NERVE(FileSelectItemNrvFormat, FileSelectItem, Format);
    NEW_NERVE(FileSelectItemNrvChangeFellow, FileSelectItem, ChangeFellow);
    NEW_NERVE(FileSelectItemNrvChangeMii, FileSelectItem, ChangeMii);
};  // namespace

namespace FileSelectItemSub {
    NEW_NERVE(ScaleControllerNrvToSmall, ScaleController, ToSmall);
    NEW_NERVE(ScaleControllerNrvSmall, ScaleController, Small);
    NEW_NERVE(ScaleControllerNrvToBig, ScaleController, ToBig);
    NEW_NERVE(ScaleControllerNrvBig, ScaleController, Big);
    NEW_NERVE(BlinkControllerNrvOpen, BlinkController, Open);
    NEW_NERVE(BlinkControllerNrvShut, BlinkController, Shut);
    NEW_NERVE(BlinkControllerNrvSleep, BlinkController, Sleep);
    NEW_NERVE(BlinkControllerNrvBlink, BlinkController, Blink);

    ScaleController::ScaleController() : NerveExecutor("ファイルセレクタアイコンサイズ管理") {
        _8 = 1.0f;
        initNerve(&FileSelectItemSub::ScaleControllerNrvSmall::sInstance);
    }

    void ScaleController::exeToSmall() {
        if (MR::isLessEqualStep(this, 30)) {
            f32 v = (getNerveStep() / 30.0f);
            _8 += (v * (1.0f - _8));
        }

        MR::setNerveAtStep(this, &FileSelectItemSub::ScaleControllerNrvSmall::sInstance, 30);
    }

    void ScaleController::exeToBig() {
        if (MR::isLessEqualStep(this, 30)) {
            f32 v = (getNerveStep() / 30.0f);
            _8 += v * (1.2f - _8);
        }

        MR::setNerveAtStep(this, &FileSelectItemSub::ScaleControllerNrvBig::sInstance, 30);
    }

    BlinkController::BlinkController(FileSelectItem* pItem) : NerveExecutor("ファイルセレクタアイコン瞬き管理") {
        mItem = pItem;
        _C = 0;
        _10 = 0;
        initNerve(&FileSelectItemSub::BlinkControllerNrvOpen::sInstance);
    }

    void BlinkController::exeOpen() {
        if (MR::isFirstStep(this)) {
            _C = MR::getRandom(180l, 300l);
            _10 = 0;
        }

        f32 v2 = __fabsf(mItem->_160);

        if (v2 > 10.0f) {
            _10 += 2;
        } else {
            if (v2 > 6.0f) {
                _10++;
            } else {
                _10 = 0;
            }
        }

        if (_10 > 180) {
            setNerve(&FileSelectItemSub::BlinkControllerNrvSleep::sInstance);
        } else {
            if (MR::isGreaterEqualStep(this, _C)) {
                setNerve(&FileSelectItemSub::BlinkControllerNrvShut::sInstance);
            }
        }
    }

    void BlinkController::exeShut() {
        if (MR::isFirstStep(this)) {
            shut();
        }

        if (MR::isGreaterEqualStep(this, 10)) {
            open();
            setNerve(&FileSelectItemSub::BlinkControllerNrvOpen::sInstance);
        }
    }

    void BlinkController::exeSleep() {
        if (MR::isFirstStep(this)) {
            sleep();
            _10 = 0;
        }

        _10++;

        if (__fabsf(mItem->_160) > 2.0f) {
            _10 = 0;
        }

        if (_10 > 60) {
            setNerve(&FileSelectItemSub::BlinkControllerNrvBlink::sInstance);
        }
    }

    void BlinkController::exeBlink() {
        if (MR::isFirstStep(this) && mItem->mIconID->isFellow()) {
            mItem->mModels[mItem->mIconID->getFellowID()]->blink();
        }

        if (getNerveStep() % 8 < 4) {
            mItem->mFaceParts->changeExpressionBlink();

        } else {
            mItem->mFaceParts->changeExpressionNormal();
        }

        if (mItem->mIconID->isFellow()) {
            FileSelectIconID::EFellowID id = mItem->mIconID->getFellowID();

            if (mItem->mModels[id]->isOpen()) {
                setNerve(&FileSelectItemSub::BlinkControllerNrvOpen::sInstance);
                return;
            }
        }

        if (mItem->mIconID->isMii()) {
            if (MR::isGreaterEqualStep(this, 40)) {
                mItem->mFaceParts->changeExpressionNormal();
                setNerve(&FileSelectItemSub::BlinkControllerNrvOpen::sInstance);
            }
        }
    }

    void BlinkController::shut() {
        if (!mItem->_8C) {
            if (mItem->mIconID->isMii()) {
                mItem->mFaceParts->changeExpressionBlink();
            } else {
                mItem->mModels[mItem->mIconID->getFellowID()]->blinkOnce();
            }
        }
    }

    void BlinkController::open() {
        if (!mItem->_8C) {
            if (mItem->mIconID->isMii()) {
                mItem->mFaceParts->changeExpressionNormal();
            } else {
                mItem->mModels[mItem->mIconID->getFellowID()]->open();
            }
        }
    }

    void BlinkController::sleep() {
        if (!mItem->_8C) {
            if (mItem->mIconID->isMii()) {
                mItem->mFaceParts->changeExpressionBlink();
            } else {
                mItem->mModels[mItem->mIconID->getFellowID()]->close();
            }
        }
    }

    ScaleController::~ScaleController() {
    }

    BlinkController::~BlinkController() {
    }

    void ScaleController::exeBig() {
        _8 = 1.2f;
    }

    void ScaleController::exeSmall() {
        _8 = 1.0f;
    }
};  // namespace FileSelectItemSub

FileSelectItem::~FileSelectItem() {
}

void FileSelectItem::exeExistWait() {
}

void FileSelectItem::exeNewWait() {
}
