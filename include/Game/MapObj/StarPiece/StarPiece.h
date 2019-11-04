#ifndef STARPIECE_H
#define STARPIECE_H

#include "types.h"
#include "Game/MapObj/StarPiece/StarPieceGroup.h"

class StarPiece : public StarPieceGroup
{
public:
    StarPiece(const char *);
};

#endif // STARPIECE_H