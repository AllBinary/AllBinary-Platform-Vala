/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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

public class GameTickTimeDelayHelper : JObject {
    public int64 timeDelta;
    public int64 startTime;
    public int64 lastStartTime;

    // Java field initializers run after the base constructor
    private void initFieldsGameTickTimeDelayHelper() {
    this.timeDelta = 0;
    
    
    }
    

    public GameTickTimeDelayHelper(int64 startTime) {
        base();
        this.initFieldsGameTickTimeDelayHelper();
        this.startTime = startTime;
        this.lastStartTime = 0;
    }
    

    public virtual int64 setStartTime() {
        this.startTime = JSystem.currentTimeMillis();
        return this.startTime;
    }
    

    public virtual void loop() {
        if (this.lastStartTime == Long.MIN_VALUE) {
            this.timeDelta = 0;
        } else {
            this.timeDelta = JSystem.currentTimeMillis() - this.lastStartTime;
        }
    }
    

    public virtual int64 getTimeFromStart() {
        return this.startTime - this.lastStartTime;
    }
}

