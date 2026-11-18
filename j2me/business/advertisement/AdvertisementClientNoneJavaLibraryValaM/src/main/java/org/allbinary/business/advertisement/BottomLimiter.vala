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
// package org.allbinary.business.advertisement
// import org.allbinary.game.GameAdState
// import org.allbinary.graphics.displayable.DisplayInfoSingleton

public class BottomLimiter : JObject {
    private static BottomLimiter? instance;
    private static bool staticSet_instance = false;
    private static BottomLimiter staticGet_instance() {
        if (!BottomLimiter.staticSet_instance) {
            BottomLimiter.staticSet_instance = true;
            BottomLimiter.instance = new BottomLimiter();
        }
        return BottomLimiter.instance;
    }
    private int32 bottom;
    private int32 deltaY;
    private int32 lower;
    private int32 higher;

    // Java field initializers run after the base constructor
    private void initFieldsBottomLimiter() {
    this.bottom = 0;
    this.deltaY = 0;
    this.lower = 0;
    this.higher = 0;
    }
    

    public static BottomLimiter getInstance() {
        return BottomLimiter.staticGet_instance();
    }
    

    public BottomLimiter() {
        base();
        this.initFieldsBottomLimiter();
    }
    

    public virtual void init(int32 lower, int32 higher) {
        this.lower = lower;
        this.higher = higher;
    }
    

    public virtual void update() {
        DisplayInfoSingleton displayInfo = DisplayInfoSingleton.getInstance();
        GameAdState gameAdState = GameAdStateFactory.getInstance().getCurrentInstance();
        if (gameAdState.isShowingAt()) {
            this.deltaY = this.higher;
        } else {
            this.deltaY = this.lower;
        }
        this.bottom = displayInfo.getLastHeight() - this.deltaY;
    }
    

    public virtual int32 getDeltaY() {
        return this.deltaY;
    }
    

    public virtual int32 getBottom() {
        return this.bottom;
    }
}

