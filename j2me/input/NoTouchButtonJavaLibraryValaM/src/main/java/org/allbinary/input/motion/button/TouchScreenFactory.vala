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
// package org.allbinary.input.motion.button

public class TouchScreenFactory : JObject {
    private static TouchScreenFactory? SINGLETON;
    private static bool staticSet_SINGLETON = false;
    private static TouchScreenFactory staticGet_SINGLETON() {
        if (!TouchScreenFactory.staticSet_SINGLETON) {
            TouchScreenFactory.staticSet_SINGLETON = true;
            TouchScreenFactory.SINGLETON = new TouchScreenFactory();
        }
        return TouchScreenFactory.SINGLETON;
    }
    private bool multiTouch;
    private bool touch;
    private TouchScreenType touchScreenType;

    // Java field initializers run after the base constructor
    private void initFieldsTouchScreenFactory() {
    this.multiTouch = false;
    this.touch = false;
    this.touchScreenType = TouchScreenTypesFactory.getInstance().NOTOUCH;
    }
    

    public TouchScreenFactory() {
        base();
        this.initFieldsTouchScreenFactory();
    }
    

    public static TouchScreenFactory getInstance() {
        return TouchScreenFactory.staticGet_SINGLETON();
    }
    

    public virtual bool isMultiTouch() {
        return this.multiTouch;
    }
    

    public virtual void setTouch(bool touch) {
    }
    

    public virtual bool isTouch() {
        return this.touch;
    }
    

    public virtual TouchScreenType getTouchScreenType() {
        return this.touchScreenType;
    }
}

