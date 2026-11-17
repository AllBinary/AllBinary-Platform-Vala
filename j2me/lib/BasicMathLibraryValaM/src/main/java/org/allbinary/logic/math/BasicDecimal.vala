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
// package org.allbinary.logic.math

public class BasicDecimal : JObject {
    public static BasicDecimal? ZERO_BIGDECIMAL;
    private static bool staticSet_ZERO_BIGDECIMAL = false;
    public static BasicDecimal staticGet_ZERO_BIGDECIMAL() {
        if (!BasicDecimal.staticSet_ZERO_BIGDECIMAL) {
            BasicDecimal.staticSet_ZERO_BIGDECIMAL = true;
            BasicDecimal.ZERO_BIGDECIMAL = new BasicDecimal(0);
        }
        return BasicDecimal.ZERO_BIGDECIMAL;
    }
    private int64 units;
    private int32 scaled;
    private int32 factor;
    private int32 factorValue;

    // Java field initializers run after the base constructor
    private void initFieldsBasicDecimal() {
    
    this.scaled = 0;
    this.factor = ScaleFactorFactory.getInstance().DEFAULT_SCALE_FACTOR;
    this.factorValue = ScaleFactorFactory.getInstance().DEFAULT_SCALE_VALUE;
    }
    

    public static BasicDecimal createBigDecimal(BasicDecimal bigDecimal) {
        return new BasicDecimal(bigDecimal.getUnscaled());
    }
    

    public BasicDecimal(int64 units) {
        base();
        this.initFieldsBasicDecimal();
        this.units = units;
        this.updateScaled();
    }
    

    public virtual void setint(int32 value) {
        this.units = ((int64) (value));
        this.updateScaled();
    }
    

    public virtual void setlong(int64 value) {
        this.units = value;
        this.updateScaled();
    }
    

    public virtual void @set(BasicDecimal bigDecimal) {
        this.units = bigDecimal.getUnscaled();
        this.updateScaled();
    }
    

    public virtual void addint(int32 value) {
        this.units = this.units + ((int64) (value));
        this.updateScaled();
    }
    

    public virtual void addlong(int64 value) {
        this.units = this.units + value;
        this.updateScaled();
    }
    

    public virtual void add(BasicDecimal bigDecimal) {
        this.units = this.units + bigDecimal.getUnscaled();
        this.updateScaled();
    }
    

    public virtual void subtractint(int32 value) {
        this.units = this.units - ((int64) (value));
        this.updateScaled();
    }
    

    public virtual void subtractlong(int64 value) {
        this.units = this.units - value;
        this.updateScaled();
    }
    

    public virtual void subtract(BasicDecimal bigDecimal) {
        this.units = this.units - bigDecimal.getUnscaled();
        this.updateScaled();
    }
    

    public virtual void multiplyint(int32 value) {
        this.units = this.units * ((int64) (value));
        this.updateScaled();
    }
    

    public virtual void multiplylong(int64 value) {
        this.units = this.units * value;
        this.updateScaled();
    }
    

    public virtual void multiply(BasicDecimal bigDecimal) {
        this.units = this.units * bigDecimal.getUnscaled();
        this.updateScaled();
    }
    

    public virtual void divideint(int32 value) {
        this.units = this.units / ((int64) (value));
        this.updateScaled();
    }
    

    public virtual void dividelong(int64 value) {
        this.units = this.units / value;
        this.updateScaled();
    }
    

    public virtual void divide(BasicDecimal bigDecimal) {
        this.units = this.units / bigDecimal.getUnscaled();
        this.updateScaled();
    }
    

    public virtual int64 getUnscaled() {
        return this.units;
    }
    

    private void updateScaled() {
        this.scaled = ((int32) ((this.units / ((int64) (this.factorValue)))));
    }
    

    public virtual int32 getScaled() {
        return this.scaled;
    }
    

    public override string toString() {
        return (this.units).to_string();
    }
    

    public virtual int32 getScaledFactor() {
        return this.factor;
    }
    

    public virtual int32 getScaledFactorValue() {
        return this.factorValue;
    }
}

