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
// package org.allbinary.time
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonLabels

public class TimeDelayHelper : JObject {
    private int64 startTime;
    private int64 elapsedTimeAtPause;
    public int32 delay;

    // Java field initializers run after the base constructor
    private void initFieldsTimeDelayHelper() {
    this.startTime = ((int64) (-1));
    this.elapsedTimeAtPause = Long.MIN_VALUE;
    
    }
    

    public TimeDelayHelper(int32 delay) {
        base();
        this.initFieldsTimeDelayHelper();
        this.delay = delay;
        this.setStartTimeTNT();
    }
    

    public virtual bool isTimeTNT() {
        int64 currentTime = JSystem.currentTimeMillis();
        if (currentTime - this.startTime > ((int64) (this.delay))) {
            this.startTime = currentTime;
            return true;
        }
        return false;
    }
    

    public virtual bool isTimeSinceTNT(int32 delay) {
        int64 currentTime = JSystem.currentTimeMillis();
        if (currentTime - this.startTime > ((int64) (delay))) {
            this.startTime = currentTime;
            return true;
        }
        return false;
    }
    

    public virtual bool isTime(int64 currentTime) {
        if (currentTime - this.startTime > ((int64) (this.delay))) {
            this.startTime = currentTime;
            return true;
        }
        return false;
    }
    

    public virtual bool isTimeWithoutReset(int64 currentTime) {
        if (currentTime - this.startTime > ((int64) (this.delay))) {
            return true;
        }
        return false;
    }
    

    public virtual bool isTimeSince(int32 delay, int64 currentTime) {
        if (currentTime - this.startTime > ((int64) (this.delay))) {
            this.startTime = currentTime;
            return true;
        }
        return false;
    }
    

    public virtual int64 getElapsedTNT() {
        return JSystem.currentTimeMillis() - this.startTime;
    }
    

    public virtual int64 getElapsed(int64 currentTime) {
        return currentTime - this.startTime;
    }
    

    public virtual bool isElapsed(int64 currentTime, int64 time) {
        if (this.getElapsed(currentTime) > time) {
            return true;
        } else {
            return false;
        }
    }
    

    public virtual bool isElapsedTNT(int64 time) {
        if (this.getElapsedTNT() > time) {
            return true;
        } else {
            return false;
        }
    }
    

    public virtual void setStartTime(int64 startTime) {
        this.startTime = startTime;
    }
    

    public virtual int64 getStartTime() {
        return this.startTime;
    }
    

    public virtual void setStartTimeTNT() {
        this.startTime = JSystem.currentTimeMillis();
    }
    

    public virtual void pause() {
        this.elapsedTimeAtPause = this.getElapsedTNT();
        this.startTime = Long.MAX_VALUE;
    }
    

    public virtual bool resume() {
        if (this.elapsedTimeAtPause != Long.MIN_VALUE) {
            this.startTime = JSystem.currentTimeMillis() + this.elapsedTimeAtPause;
            this.elapsedTimeAtPause = Long.MIN_VALUE;
            this.setStartTimeTNT();
            return true;
        }
        return false;
    }
    

    public virtual string toStringAt(int64 currentTime) {
        int64 elapsed = this.getElapsed(currentTime);
        if (elapsed > 0) {
            CommonLabels commonLabels = CommonLabels.getInstance();
            string elapsedAsString = (elapsed).to_string();
            return new StringMaker().append(commonLabels.START).appendlong(this.startTime).append(commonLabels.CURRENT).appendlong(currentTime).append(commonLabels.ELAPSED).append(elapsedAsString).toString();
        } else {
            return StringUtil.getInstance().EMPTY_STRING;
        }
    }
    

    public override string toString() {
        int64 currentTime = JSystem.currentTimeMillis();
        int64 elapsed = this.getElapsed(currentTime);
        if (elapsed > 0) {
            CommonLabels commonLabels = CommonLabels.getInstance();
            string elapsedAsString = (elapsed).to_string();
            return new StringMaker().append(commonLabels.START).appendlong(this.startTime).append(commonLabels.CURRENT).appendlong(currentTime).append(commonLabels.ELAPSED).append(elapsedAsString).toString();
        } else {
            return StringUtil.getInstance().EMPTY_STRING;
        }
    }
}

