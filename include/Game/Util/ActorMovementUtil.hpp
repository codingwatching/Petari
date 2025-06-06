#pragma once

#include <revolution.h>
#include "JSystem/JGeometry/TVec.hpp"
#include "JSystem/JGeometry/TMatrix.hpp"

class LiveActor;
class HitSensor;

namespace MR {
    f32 calcDistance(const HitSensor *, const HitSensor *, TVec3f *);
    f32 calcDistance(const LiveActor *, const TVec3f &);
    f32 calcDistanceHorizontal(const LiveActor *, const TVec3f &, const TVec3f &);
    f32 calcDistanceVertical(const LiveActor *, const TVec3f &, const TVec3f &);
    f32 calcDistanceVertical(const LiveActor *, const TVec3f &);
    f32 calcDistanceToPlayer(const LiveActor *);
    f32 calcDistanceToPlayerH(const LiveActor *);
    bool isNear(const HitSensor *, const HitSensor *, f32);
    bool isNear(const LiveActor *, const LiveActor *, f32);
    bool isNear(const LiveActor *, const TVec3f &, f32);
    bool isNearPlayer(const LiveActor *, f32);
    bool isNearPlayerAnyTime(const LiveActor *, f32);
    bool isNearPlayer(const TVec3f &, f32);
    bool isNearPlayerPose(const LiveActor *, f32, f32);
    bool isNearPlayerHorizontal(const LiveActor *, f32);
    void calcFrontVec(TVec3f *, const LiveActor *);
    void calcUpVec(TVec3f *, const LiveActor *);
    void calcSideVec(TVec3f *, const LiveActor *);
    void calcPositionUpOffset(TVec3f *, const LiveActor *, f32);
    void calcVecToPlayerH(TVec3f *, const LiveActor *, const TVec3f *);
    void calcVecFromPlayerH(TVec3f *, const LiveActor *);
    void calcVecToTargetPosH(TVec3f *, const LiveActor *, const TVec3f &, const TVec3f *);
    void calcVecFromTargetPosH(TVec3f *, const LiveActor *, const TVec3f &, const TVec3f *);
    bool isFaceToTargetDegree(const LiveActor *, const TVec3f &, const TVec3f &, f32);
    bool isFaceToPlayerDegree(const LiveActor *, const TVec3f &, f32);
    bool isFaceToTargetDegree(const LiveActor *, const TVec3f &, f32);
    bool isFaceToPlayerDegree(const LiveActor *, f32);
    bool isFaceToPlayerDegreeHV(const LiveActor *, const TVec3f&, f32, f32);
    bool isFaceToTargetHorizontalDegree(const LiveActor *, const TVec3f &, const TVec3f &, f32);
    bool isFaceToPlayerHorizontalDegree(const LiveActor *, const TVec3f &, f32);
    bool isClockwiseToDir(const LiveActor *, const TVec3f &, const TVec3f &);
    bool isClockwiseToPlayer(const LiveActor *, const TVec3f &);
    bool isPlayerLeftSide(const LiveActor *);
    bool isLeftSideFromPlayer(const LiveActor *);
    bool isInSightConePlayer(const LiveActor *, const TVec3f &, f32, f32);
    bool isInSightFanPlayer(const LiveActor *, const TVec3f &, f32, f32, f32);
    bool isBindedWallFront(const LiveActor *, const TVec3f &, f32);
    bool isOnPlayer(const LiveActor *);
    bool isPlayerExistSide(const LiveActor *, f32, f32);
    bool isPlayerExistUp(const LiveActor *, f32, f32);
    bool isPlayerExistDown(const LiveActor *, f32, f32);
    bool isInWater(const LiveActor *, const TVec3f &);
    bool isInDeath(const LiveActor *, const TVec3f &);

    void addVelocityAwayFromTarget(LiveActor *, const TVec3f &, f32, f32, f32, f32);

    void turnDirectionToPlayerDegree(const LiveActor *, TVec3f *, f32);

    void makeMtxTR(MtxPtr, const LiveActor *);
    void makeMtxTRS(MtxPtr, const LiveActor *);
    void makeMtxTransRotateY(MtxPtr, const LiveActor *);

    void blendQuatFromGroundAndFront(TQuat4f *, const LiveActor *, const TVec3f &, f32, f32);

    void resetPosition(LiveActor *);
    void resetPosition(LiveActor *, const TVec3f &);
    void resetPosition(LiveActor *, const char *);

    void calcActorAxis(TVec3f *, TVec3f *, TVec3f *, const LiveActor *);

    void calcActorAxisY(TVec3f *, const LiveActor *);

    void addVelocitySeparateHV(LiveActor *, const TVec3f &, f32, f32);

    void attenuateVelocity(LiveActor *, f32);

    void killVelocityToTarget(LiveActor *, const TVec3f &);

    void restrictVelocity(LiveActor *, f32);

    bool calcVelocityAreaMoveOnGround(TVec3f *, const LiveActor *);

    void turnDirectionToGround(const LiveActor *, TVec3f *);

    void calcMtxFromGravityAndZAxis(TPos3f *, const LiveActor *, const TVec3f &, const TVec3f &);

    void setVelocityJump(LiveActor *, f32);
    void addVelocityToGravity(LiveActor *, f32);

    void addVelocityKeepHeight(LiveActor *, const TVec3f &, f32, f32, f32);

    void reboundVelocityFromCollision(LiveActor *, f32, f32, f32);

    void addVelocity(LiveActor *, const TVec3f &);

    f32 calcVelocityLength(const LiveActor *);

    void turnDirectionAndGravityH(LiveActor *, const TVec3f &, f32, f32);

    void turnDirectionToTargetUseGroundNormalDegree(const LiveActor *, TVec3f *, const TVec3f &, f32);

    void turnDirectionToTargetDegree(const LiveActor *, TVec3f *, const TVec3f &, f32);

    void addVelocityMoveToTarget(LiveActor *, const TVec3f &, f32, f32, f32, f32);

    void addVelocityKeepHeight(LiveActor *, const TVec3f &, f32, f32, f32);
    void addVelocityKeepHeightUseShadow(LiveActor *, f32, f32, f32, const char *);

    void turnDirectionToTarget(const LiveActor *, TVec3f *, const TVec3f &, f32);

    void makeQuatAndFrontFromRotate(TQuat4f *, TVec3f *, const LiveActor *);

    void moveAndTurnToPlayer(LiveActor *, TVec3f *, f32, f32, f32, f32);
};
