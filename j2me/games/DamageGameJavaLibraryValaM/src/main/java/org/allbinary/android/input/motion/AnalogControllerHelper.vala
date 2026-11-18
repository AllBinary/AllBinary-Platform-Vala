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
// package org.allbinary.android.input.motion
// import org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer
// import org.allbinary.time.TimeDelayHelper

public class AnalogControllerHelper : JObject {
    private int32 reduceTimeFactor;
    private int32 SCALE_VALUE;
    private TimeDelayHelper rightTimeElapsedHelper;
    private TimeDelayHelper leftTimeElapsedHelper;
    private TimeDelayHelper downTimeElapsedHelper;
    private TimeDelayHelper upTimeElapsedHelper;

    // Java field initializers run after the base constructor
    private void initFieldsAnalogControllerHelper() {
    
    this.SCALE_VALUE = AnalogControllerConfigurationFactory.getInstance().SCALE_VALUE;
    this.rightTimeElapsedHelper = new TimeDelayHelper(0);
    this.leftTimeElapsedHelper = new TimeDelayHelper(0);
    this.downTimeElapsedHelper = new TimeDelayHelper(0);
    this.upTimeElapsedHelper = new TimeDelayHelper(0);
    }
    

    public AnalogControllerHelper(int32 reduceTimeFactor) {
        base();
        this.initFieldsAnalogControllerHelper();
        this.reduceTimeFactor = reduceTimeFactor;
    }
    

    public virtual void right(CollidableDestroyableDamageableLayer collidableDestroyableDamageableLayer, int32 xAnalogValue) {
        this.rightTimeElapsedHelper.delay = ((this.SCALE_VALUE - xAnalogValue) >> this.reduceTimeFactor);
        if (this.rightTimeElapsedHelper.isTimeTNT()) {
            collidableDestroyableDamageableLayer.right();
        }
    }
    

    public virtual void left(CollidableDestroyableDamageableLayer collidableDestroyableDamageableLayer, int32 xAnalogValue) {
        this.leftTimeElapsedHelper.delay = ((this.SCALE_VALUE + xAnalogValue) >> this.reduceTimeFactor);
        if (this.leftTimeElapsedHelper.isTimeTNT()) {
            collidableDestroyableDamageableLayer.left();
        }
    }
    

    public virtual void up(CollidableDestroyableDamageableLayer collidableDestroyableDamageableLayer, int32 xAnalogValue) {
        this.upTimeElapsedHelper.delay = ((this.SCALE_VALUE - xAnalogValue) >> this.reduceTimeFactor);
        if (this.upTimeElapsedHelper.isTimeTNT()) {
            collidableDestroyableDamageableLayer.up();
        }
    }
    

    public virtual void down(CollidableDestroyableDamageableLayer collidableDestroyableDamageableLayer, int32 xAnalogValue) {
        this.downTimeElapsedHelper.delay = ((this.SCALE_VALUE + xAnalogValue) >> this.reduceTimeFactor);
        if (this.downTimeElapsedHelper.isTimeTNT()) {
            collidableDestroyableDamageableLayer.down();
        }
    }
}

