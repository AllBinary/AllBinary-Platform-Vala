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
// package org.allbinary.game.ag.ai
// import org.allbinary.logic.StdUtil
// import org.allbinary.logic.math.SmallIntegerSingletonFactory
// import org.allbinary.time.TimeDelayHelper
// import org.allbinary.util.ABHashtable

public class InputProbability : JObject {
    public static int32?? INPUT_PROBABILITY;
    private static bool staticSet_INPUT_PROBABILITY = false;
    public static int32? staticGet_INPUT_PROBABILITY() {
        if (!InputProbability.staticSet_INPUT_PROBABILITY) {
            InputProbability.staticSet_INPUT_PROBABILITY = true;
            InputProbability.INPUT_PROBABILITY = SmallIntegerSingletonFactory.getInstance().getAt(0);
        }
        return InputProbability.INPUT_PROBABILITY;
    }
    private int32?[,] likelyhoodIntegerArray;
    private int32?[] repeatLikelyhoodIntegerArray;
    private int32 max;
    private TimeDelayHelper timeDelayHelper;

    // Java field initializers run after the base constructor
    private void initFieldsInputProbability() {
    
    
    
    
    }
    

    public InputProbability(int32?[,] likelyhoodIntegerArray, int32?[] repeatLikelyhoodIntegerArray, int32 max, TimeDelayHelper timeDelayHelper) {
        base();
        this.initFieldsInputProbability();
        this.likelyhoodIntegerArray = likelyhoodIntegerArray;
        this.repeatLikelyhoodIntegerArray = repeatLikelyhoodIntegerArray;
        this.max = max;
        this.timeDelayHelper = timeDelayHelper;
    }
    

    public virtual int32?[,] getLikelyhoodIntegerArray() {
        return this.likelyhoodIntegerArray;
    }
    

    public virtual int32?[] getRepeatLikelyhoodIntegerArray() {
        return this.repeatLikelyhoodIntegerArray;
    }
    

    public virtual int32 getMax() {
        return this.max;
    }
    

    public virtual TimeDelayHelper getTimeDelayHelper() {
        return this.timeDelayHelper;
    }
    

    public virtual ABHashtable toHashtable() {
        ABHashtable hashtable = StdUtil.getInstance().createHashtable();
        hashtable.put(InputProbability.staticGet_INPUT_PROBABILITY(), this);
        return hashtable;
    }
}

