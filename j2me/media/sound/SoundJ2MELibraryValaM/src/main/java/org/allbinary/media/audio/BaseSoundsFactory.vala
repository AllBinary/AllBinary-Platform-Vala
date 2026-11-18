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
// package org.allbinary.media.audio

public class BaseSoundsFactory : JObject, SoundsFactoryInterface {
    private bool initialized;

    // Java field initializers run after the base constructor
    private void initFieldsBaseSoundsFactory() {
    this.initialized = false;
    }

    public BaseSoundsFactory() {
        base();
        this.initFieldsBaseSoundsFactory();
    }
    

    public virtual void init() {
    }
    

    public virtual Sound[] getSoundInterfaceArray() {
        return new Sound[0];
    }
    

    public virtual void setInitialized(bool initialized) {
        this.initialized = initialized;
    }
    

    public virtual bool isInitialized() {
        return this.initialized;
    }
}

