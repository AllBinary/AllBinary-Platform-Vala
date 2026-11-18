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
// package org.allbinary.animation
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.time.GameTickTimeDelayHelperFactory
// import org.allbinary.time.TimeDelayHelper

public class TimedVectorAnimation : VectorAnimation {
    private TimeDelayHelper timeElapsedHelper;

    // Java field initializers run after the base constructor
    private void initFieldsTimedVectorAnimation() {
    this.timeElapsedHelper = new TimeDelayHelper(200);
    }
    

    public TimedVectorAnimation(int32[,,] currentPoints, BasicColor basicColor, AnimationBehavior animationBehavior) {
        base(currentPoints, basicColor, animationBehavior);
        this.initFieldsTimedVectorAnimation();
    }
    

    public override void nextFrame() {
        if (this.timeElapsedHelper.isTime(GameTickTimeDelayHelperFactory.getInstance().startTime)) {
            base.nextFrame();
        }
    }
}

