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
// package org.allbinary.animation.transition.shake

public class ShakeEventFactory : JObject {
    private static ShakeEventFactory? instance;
    private static bool staticSet_instance = false;
    private static ShakeEventFactory staticGet_instance() {
        if (!ShakeEventFactory.staticSet_instance) {
            ShakeEventFactory.staticSet_instance = true;
            ShakeEventFactory.instance = new ShakeEventFactory();
        }
        return ShakeEventFactory.instance;
    }
    public ShakeEvent MICRO;
    public ShakeEvent SMALL;
    public ShakeEvent MEDIUM;
    public ShakeEvent LARGE;

    // Java field initializers run after the base constructor
    private void initFieldsShakeEventFactory() {
    this.MICRO = new ShakeEvent();
    this.SMALL = new ShakeEvent();
    this.MEDIUM = new ShakeEvent();
    this.LARGE = new ShakeEvent();
    }

    public ShakeEventFactory() {
        base();
        this.initFieldsShakeEventFactory();
    }
    

    public static ShakeEventFactory getInstance() {
        return ShakeEventFactory.staticGet_instance();
    }
    

    public virtual void init() {
    }
}

