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
// package org.allbinary.game.ag.ai.scroller
// import javax.microedition.lcdui.Canvas
// import org.allbinary.game.ai.BasicAI
// import org.allbinary.game.input.GameInput
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.layer.AllBinaryLayerManager
// import org.allbinary.logic.math.SmallIntegerSingletonFactory
// import org.allbinary.time.GameTickTimeDelayHelperFactory
// import org.allbinary.time.TimeDelayHelper

public class TimedFireAI : BasicAI {
    public static int32?? TIME;
    private static bool staticSet_TIME = false;
    public static int32? staticGet_TIME() {
        if (!TimedFireAI.staticSet_TIME) {
            TimedFireAI.staticSet_TIME = true;
            TimedFireAI.TIME = SmallIntegerSingletonFactory.getInstance().getAt(1);
        }
        return TimedFireAI.TIME;
    }
    public TimeDelayHelper maxFireDelayTimeHelper;
    private int32 delay;

    // Java field initializers run after the base constructor
    private void initFieldsTimedFireAI() {
    this.maxFireDelayTimeHelper = new TimeDelayHelper(0);
    
    }
    

    public TimedFireAI(int32 delay, AllBinaryLayer ownerLayerInterface, GameInput gameInput) {
        base(ownerLayerInterface, gameInput);
        this.initFieldsTimedFireAI();
        this.delay = delay;
    }
    

    public override void processAI(AllBinaryLayerManager allBinaryLayerManager) {
        TimeFiredInterface timeFiredInterface = ((TimeFiredInterface) this.getOwnerLayerInterface());
        if (this.maxFireDelayTimeHelper.isTime(GameTickTimeDelayHelperFactory.getInstance().startTime) && timeFiredInterface.getLastFireTime() + this.maxFireDelayTimeHelper.delay < this.maxFireDelayTimeHelper.getStartTime()) {
            base.processKeyAI(Canvas.KEY_NUM1);
            this.maxFireDelayTimeHelper.delay = this.delay;
        }
    }
}

