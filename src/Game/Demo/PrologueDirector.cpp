#include "Game/Camera/CameraTargetMtx.hpp"
#include "Game/Demo/PrologueDirector.hpp"
#include "Game/LiveActor/ActorCameraInfo.hpp"
#include "Game/LiveActor/ModelObj.hpp"
#include "Game/Scene/SceneObjHolder.hpp"
#include "Game/Screen/PrologueLetter.hpp"
#include "Game/Screen/ProloguePictureBook.hpp"

namespace {
    const char* sPictureBookDemoName = "プロローグデモ";
    const char* sArriveDemoName = "主人公ピーチ城に到着";
};

namespace {
    NEW_NERVE(PrologueDirectorNrvWait, PrologueDirector, Wait);
    NEW_NERVE(PrologueDirectorNrvPictureBook, PrologueDirector, PictureBook);
    NEW_NERVE(PrologueDirectorNrvPeachLetterStart, PrologueDirector, PeachLetterStart);
    NEW_NERVE(PrologueDirectorNrvPeachLetter, PrologueDirector, PeachLetter);
    NEW_NERVE(PrologueDirectorNrvPeachLetterWait, PrologueDirector, PeachLetterWait);
    NEW_NERVE(PrologueDirectorNrvPeachLetterEnd, PrologueDirector, PeachLetterEnd);
    NEW_NERVE(PrologueDirectorNrvBindWait, PrologueDirector, BindWait);
    NEW_NERVE(PrologueDirectorNrvArrive, PrologueDirector, Arrive);
    NEW_NERVE(PrologueDirectorNrvGameStart, PrologueDirector, GameStart);
};

PrologueDirector::PrologueDirector(const char* pName) :
    LiveActor(pName),
    mPictureBook(NULL),
    mLetter(NULL),
    mScenery(NULL),
    mMarioPosDummyModel(NULL),
    mCameraTarget(NULL),
    _D0(false)
{
    _A0.identity();
}

void PrologueDirector::init(const JMapInfoIter& rIter) {
    if (MR::useStageSwitchWriteA(this, rIter)) {
        _D0 = true;
    }

    MR::connectToSceneMapObjMovement(this);
    MR::invalidateClipping(this);
    initNerve(&PrologueDirectorNrvWait::sInstance);
    createPictureBook();
    createLetter();
    createScenery();
    createMarioPosDummyModel();
    createCameraTarget();
    makeActorDead();

    MR::createSceneObj(SceneObj_PrologueHolder);
    MR::getPrologueHolder()->registerPrologueObj(this);
}

void PrologueDirector::initAfterPlacement() {
    if (_D0) {
        MR::onSwitchA(this);
    }
}

void PrologueDirector::appear() {
    LiveActor::appear();
    setNerve(&PrologueDirectorNrvWait::sInstance);
    MR::forceCloseWipeFade();
    MR::forceOffImageEffect();

    if (_D0) {
        MR::offSwitchA(this);
    }
}

void PrologueDirector::kill() {
    LiveActor::kill();

    if (_D0) {
        MR::onSwitchA(this);
    }
}

void PrologueDirector::exeWait() {
    if (MR::tryStartDemoWithoutCinemaFrame(this, sPictureBookDemoName)) {
        MR::submitLevelSE();
        setNerve(&PrologueDirectorNrvPictureBook::sInstance);
        pauseOff();
        _A0.set(MR::getPlayerBaseMtx());
    }
}

void PrologueDirector::exePictureBook() {
    ActorCameraInfo cameraInfo = ActorCameraInfo(-1, 0);

    if (MR::isFirstStep(this)) {
        mPictureBook->appear();
        MR::openWipeFade(60);
        mScenery->appear();
        MR::startAnimCameraTargetSelf(mScenery, &cameraInfo, "DemoLetter", 0, 1.0f);
        MR::startStageBGM("STM_PROLOGUE_01", false);
    }

    bool isPictureBookEndOrDead = mPictureBook->isEnd() || MR::isDead(mPictureBook);

    if (isPictureBookEndOrDead) {
        MR::forceCloseWipeFade();
        mPictureBook->kill();
        MR::stopStageBGM(90);
        setNerve(&PrologueDirectorNrvPeachLetterStart::sInstance);
    }
}

void PrologueDirector::exePeachLetterStart() {
    if (MR::isFirstStep(this)) {
        MR::openWipeFade(60);
    }

    if (MR::isStep(this, 90)) {
        setNerve(&PrologueDirectorNrvPeachLetter::sInstance);
    }
}

void PrologueDirector::exePeachLetter() {
    if (MR::isFirstStep(this)) {
        MR::startStageBGM("STM_PROLOGUE_02", false);
        MR::startSystemSE("SE_SY_LETTER_APPEAR", -1, -1);
        MR::startSystemSE("SE_SV_PEACH_OPENING_LETTER", -1, -1);
        mLetter->appear();
    }

    if (MR::isDead(mLetter)) {
        MR::stopSystemSE("SE_SV_PEACH_OPENING_LETTER", 0);
        setNerve(&PrologueDirectorNrvPeachLetterWait::sInstance);
    }
}

void PrologueDirector::exePeachLetterWait() {
    if (MR::isGreaterEqualStep(this, 20)) {
        setNerve(&PrologueDirectorNrvPeachLetterEnd::sInstance);
    }
}

void PrologueDirector::exePeachLetterEnd() {
    if (MR::isFirstStep(this)) {
        MR::closeWipeFade(60);
    }

    if (MR::isWipeActive()) {
        return;
    }

    ActorCameraInfo cameraInfo = ActorCameraInfo(-1, 0);

    MR::endAnimCamera(mScenery, &cameraInfo, "DemoLetter", 0, true);
    mScenery->kill();
    setNerve(&PrologueDirectorNrvBindWait::sInstance);
}

void PrologueDirector::exeBindWait() {
    if (MR::isFirstStep(this)) {
        MR::endDemo(this, sPictureBookDemoName);
    }

    if (MR::tryStartDemoMarioPuppetable(this, sArriveDemoName)) {
        pauseOff();
        mMarioPosDummyModel->appear();
        MR::startBck(mMarioPosDummyModel, "DemoPeachCastleGate", 0);

        ActorCameraInfo cameraInfo = ActorCameraInfo(-1, 0);
        CameraTargetArg cameraTarget = CameraTargetArg(NULL, mCameraTarget, NULL, NULL);

        MR::startAnimCameraTargetOther(mMarioPosDummyModel, &cameraInfo, "DemoPeachCastleGate", cameraTarget, 0, 1.0f);
        setNerve(&PrologueDirectorNrvArrive::sInstance);
    }
}

void PrologueDirector::exeArrive() {
    ActorCameraInfo cameraInfo = ActorCameraInfo(-1, 0);

    if (MR::isFirstStep(this)) {
        MR::permitLevelSE();

        TPos3f baseMtx;
        baseMtx.set(MR::getJointMtx(mMarioPosDummyModel, "MarioPosition"));

        TVec3f trans;
        baseMtx.getTransInline(trans);

        MR::setPlayerBaseMtx(baseMtx);
        MR::startBckPlayer("DemoPeachCastleGate", (const char*)NULL);
        MR::openWipeFade(30);
        MR::setImageEffectControlAuto();
    }

    TMtx34f baseMtx;
    baseMtx.set(MR::getJointMtx(mMarioPosDummyModel, "MarioPosition"));

    MR::setPlayerBaseMtx(baseMtx);

    if (MR::isStep(this, 130)) {
        MR::startAtmosphereSE("SE_DM_ARRIVE_CASTLE_STAR", -1, -1);
    }

    if (MR::isStep(this, MR::getBckFrameMaxPlayer("DemoPeachCastleGate") - 30)) {
        MR::closeWipeFade(30);
    }

    if (MR::isBckStoppedPlayer()) {
        MR::endAnimCamera(mMarioPosDummyModel, &cameraInfo, "DemoPeachCastleGate", 0, true);
        mMarioPosDummyModel->kill();
        setNerve(&PrologueDirectorNrvGameStart::sInstance);
    }
}

void PrologueDirector::exeGameStart() {
    if (MR::isFirstStep(this)) {
        MR::setPlayerBaseMtx(_A0);
        MR::forceCloseWipeFade();
    }

    if (MR::isStep(this, 15)) {
        MR::openWipeFade(30);
        MR::endDemo(this, sArriveDemoName);
        MR::initPlayerAfterOpeningDemo();
        kill();
    }
}

void PrologueDirector::createPictureBook() {
    mPictureBook = new ProloguePictureBook();
    mPictureBook->initWithoutIter();
    mPictureBook->kill();
}

void PrologueDirector::createLetter() {
    mLetter = new PrologueLetter("ピーチからの手紙");
    mLetter->initWithoutIter();
}

void PrologueDirector::createScenery() {
    mScenery = new ModelObj("背景書割", "DemoLetter", NULL, 10, -2, -2, false);

    MR::invalidateClipping(mScenery);
    mScenery->initWithoutIter();
    MR::initLightCtrl(mScenery);
    mScenery->kill();

    ActorCameraInfo cameraInfo = ActorCameraInfo(-1, 0);

    MR::initAnimCamera(mScenery, &cameraInfo, "DemoLetter");
}

#ifdef NON_MATCHING
// PrologueDirector::mMarioPosDummyModel should be loaded each time there is a store.
void PrologueDirector::createMarioPosDummyModel() {
    mMarioPosDummyModel = new ModelObj("マリオの経路", "DemoPeachCastleGate", NULL, -2, -2, -2, false);
    mMarioPosDummyModel->initWithoutIter();

    MR::invalidateClipping(mMarioPosDummyModel);

    mMarioPosDummyModel->kill();
    mMarioPosDummyModel->mPosition.z = 0.0f;
    mMarioPosDummyModel->mPosition.y = 0.0f;
    mMarioPosDummyModel->mPosition.x = 0.0f;

    ActorCameraInfo cameraInfo = ActorCameraInfo(-1, 0);

    MR::initAnimCamera(mMarioPosDummyModel, &cameraInfo, "DemoPeachCastleGate");
}
#endif

void PrologueDirector::createCameraTarget() {
    mCameraTarget = new CameraTargetMtx("カメラターゲットダミー");
    mCameraTarget->mMatrix.identity();
}

void PrologueDirector::control() {
    
}

void PrologueDirector::pauseOff() {
    MR::requestMovementOn(mPictureBook);
    mLetter->pauseOff();
    MR::requestMovementOn(mScenery);
    MR::requestMovementOn(mMarioPosDummyModel);
}

PrologueHolder::PrologueHolder(const char* pName) :
    NameObj(pName),
    mDirector(NULL)
{}

void PrologueHolder::registerPrologueObj(PrologueDirector* pDirector) {
    mDirector = pDirector;
}

void PrologueHolder::start() {
    mDirector->appear();
}

namespace MR {
    PrologueHolder* getPrologueHolder() {
        return MR::getSceneObj<PrologueHolder*>(SceneObj_PrologueHolder);
    }

    void startPrologue() {
        getPrologueHolder()->start();
    }
};
