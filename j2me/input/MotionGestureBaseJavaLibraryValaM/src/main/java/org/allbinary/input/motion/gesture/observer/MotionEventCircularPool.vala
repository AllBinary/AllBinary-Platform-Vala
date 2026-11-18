/*
 *
 * AllBinary Open License Version 1
 * Copyright (c) 2011 AllBinary
 * 
 * By agreeing to this license you and any business entity you represent are
 * legally bound to the AllBinary Open License Version 1 legal agreement.
 * 
 * You may obtain the AllBinary Open License Version 1 legal agreement from
 * AllBinary or the root directory of AllBinary's AllBinary Platform repository.
 * 
 * Created By: Travis Berthelot
 *  
 */
// Generated Code Do Not Modify
// package org.allbinary.input.motion.gesture.observer
// import org.allbinary.game.input.InputFactory
// import org.allbinary.input.motion.gesture.MotionGestureInput
// import org.allbinary.input.motion.gesture.TouchMotionGestureFactory
// import org.allbinary.logic.util.event.AllBinaryEventCircularPool

public class MotionEventCircularPool : JObject {
    private int32 MIN_;
    private AllBinaryEventCircularPool eventPool;

    // Java field initializers run after the base constructor
    private void initFieldsMotionEventCircularPool() {
    this.MIN_ = TouchMotionGestureFactory.getInstance().LAST_MOTION.getId();
    this.eventPool = new AllBinaryEventCircularPool((InputFactory.getInstance().MAX_ - 1) - this.MIN_);
    }
    

    public static MotionEventCircularPool createPool(int32 id) {
        return new MotionEventCircularPool(id);
    }
    

    public MotionEventCircularPool(int32 id) {
        base();
        this.initFieldsMotionEventCircularPool();
        this.eventPool.initAllBinaryEventCircularPool(new MotionEventFactory(this.eventPool, id));
    }
    

    public virtual MotionGestureEvent getInstance1(MotionGestureInput motionGestureInput) {
        return ((MotionGestureEvent) this.eventPool.getInstance1(JNumber.box(motionGestureInput.getId() - this.MIN_)));
    }
}

