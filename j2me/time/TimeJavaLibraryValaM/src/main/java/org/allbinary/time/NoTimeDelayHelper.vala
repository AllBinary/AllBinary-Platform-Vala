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

public class NoTimeDelayHelper : TimeDelayHelper {
    public static NoTimeDelayHelper? SINGLETON;
    private static bool staticSet_SINGLETON = false;
    public static NoTimeDelayHelper staticGet_SINGLETON() {
        if (!NoTimeDelayHelper.staticSet_SINGLETON) {
            NoTimeDelayHelper.staticSet_SINGLETON = true;
            NoTimeDelayHelper.SINGLETON = new NoTimeDelayHelper();
        }
        return NoTimeDelayHelper.SINGLETON;
    }
    

    public NoTimeDelayHelper() {
        base(0);
    }
    

    public override bool isTimeTNT() {
        return true;
    }
    

    public override bool isTimeSinceTNT(int32 delay) {
        return true;
    }
    

    public override bool isTime(int64 currentTime) {
        return true;
    }
    

    public override bool isTimeSince(int32 delay, int64 currentTime) {
        return true;
    }
}

