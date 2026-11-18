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
// package org.allbinary.game.tick
// import org.allbinary.layer.AllBinaryLayerManager

public class NullTickable : JObject, TickableInterface, NamedInterface {
    private static NullTickable? SINGLETON;
    private static bool staticSet_SINGLETON = false;
    private static NullTickable staticGet_SINGLETON() {
        if (!NullTickable.staticSet_SINGLETON) {
            NullTickable.staticSet_SINGLETON = true;
            NullTickable.SINGLETON = new NullTickable();
        }
        return NullTickable.SINGLETON;
    }
    private string NAME;

    // Java field initializers run after the base constructor
    private void initFieldsNullTickable() {
    this.NAME = "NulLTickable";
    }

    public NullTickable() {
        base();
        this.initFieldsNullTickable();
    }
    

    public static NullTickable getInstance() {
        return NullTickable.staticGet_SINGLETON();
    }
    

    public virtual void processTick(AllBinaryLayerManager allBinaryLayerManager) {
    }
    

    public virtual string getName() {
        return this.NAME;
    }
}

