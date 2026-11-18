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
// package org.allbinary.logic.util.cache

public class CachePolicy : JObject {
    private string name;
    private int64 maxTime;
    private int64 maxSize;

    // Java field initializers run after the base constructor
    private void initFieldsCachePolicy() {
    
    this.maxTime = 0;
    this.maxSize = 0;
    }
    

    public CachePolicy(string name, int64 maxTime, int64 maxSize) {
        base();
        this.initFieldsCachePolicy();
        this.name = name;
        this.setMaxTime(maxTime);
        this.setMaxSize(maxSize);
    }
    

    public virtual int64 getMaxTime() {
        return this.maxTime;
    }
    

    public virtual void setMaxTime(int64 maxTime) {
        this.maxTime = maxTime;
    }
    

    public virtual int64 getMaxSize() {
        return this.maxSize;
    }
    

    public virtual void setMaxSize(int64 maxSize) {
        this.maxSize = maxSize;
    }
    

    public virtual string getName() {
        return this.name;
    }
}

