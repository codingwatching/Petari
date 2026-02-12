#pragma once

class JPABaseEmitter;

#ifndef JPA_EMITTER_CALLBACK_DEFINED
#define JPA_EMITTER_CALLBACK_DEFINED
class JPAEmitterCallBack {
    virtual ~JPAEmitterCallBack();
    virtual void execute(JPABaseEmitter*);
    virtual void executeAfter(JPABaseEmitter*);
    virtual void draw(JPABaseEmitter*);
    virtual void drawAfter(JPABaseEmitter*);
    virtual void init(JPABaseEmitter*) = 0;
};
#endif
