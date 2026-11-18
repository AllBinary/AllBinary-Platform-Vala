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
// package org.allbinary.game.ag.layer.hud.basic.time
// import org.allbinary.logic.math.PrimitiveLongSingleton
// import org.allbinary.logic.math.PrimitiveLongUtil
// import org.allbinary.time.GameTickTimeDelayHelper
// import org.allbinary.time.GameTickTimeDelayHelperFactory

public class HudTimer : JObject {
    private int64 startTime;
    private int64 hundredthTime;
    private int64 maxTime;
    private int64 modifier;
    private uint16[] hundrethsString;
    private int32 totalDigits;
    private PrimitiveLongUtil primitiveLongUtil;
    private uint16[] MAX_;
    private GameTickTimeDelayHelper gameTickTimeDelayHelper;

    // Java field initializers run after the base constructor
    private void initFieldsHudTimer() {
    this.startTime = ((int64) (-1));
    this.hundredthTime = 0;
    
    this.modifier = 0;
    this.hundrethsString = PrimitiveLongSingleton.getInstance().ZERO;
    this.totalDigits = 1;
    
    this.MAX_ = new uint16[] {((uint16) 'L'), ((uint16) 'O'), ((uint16) 'L')};
    this.gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance();
    }
    

    public HudTimer(int32 maxTime) {
        base();
        this.initFieldsHudTimer();
        this.primitiveLongUtil = PrimitiveLongUtil.createPowerOfTen(maxTime);
        this.maxTime = ((int64) (maxTime));
    }
    

    public virtual void start() {
        this.hundredthTime = 0;
        this.startTime = this.gameTickTimeDelayHelper.startTime;
    }
    

    public virtual int64 @get() {
        return this.hundredthTime;
    }
    

    public virtual void update() {
        int64 lastLowerTime = this.hundredthTime;
        int64 currentTime = ((this.modifier + this.gameTickTimeDelayHelper.startTime) - this.startTime);
        if (currentTime < 0) {
            currentTime = 0;
        }
        this.hundredthTime = currentTime / 100;
        if (this.hundredthTime >= this.maxTime) {
            if (this.startTime > 0) {
                this.hundrethsString = this.MAX_;
            }
        } else if (lastLowerTime != this.hundredthTime) {
            this.hundrethsString = this.primitiveLongUtil.getCharArray(((int32) (this.hundredthTime)));
            this.totalDigits = this.primitiveLongUtil.getCurrentTotalDigits();
        }
    }
    

    public virtual void reduce(int32 value) {
        this.modifier -= ((int64) (value));
    }
    

    public virtual void add(int32 value) {
        this.modifier += ((int64) (value));
    }
    

    public virtual uint16[] getTimeChars() {
        return this.hundrethsString;
    }
    

    public virtual int32 getCurrentTotalDigits() {
        return this.totalDigits;
    }
}

