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
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonStrings

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
    public LogUtil logUtil;
    private bool touch;
    private bool multiTouch;
    private bool multiTouchDistinct;
    private TouchScreenType touchScreenType;

    // Java field initializers run after the base constructor
    private void initFieldsTouchScreenFactory() {
    this.logUtil = LogUtil.getInstance();
    this.touch = false;
    this.multiTouch = false;
    this.multiTouchDistinct = false;
    this.touchScreenType = TouchScreenTypesFactory.getInstance().NOTOUCH;
    }
    

    public TouchScreenFactory() {
        base();
        this.initFieldsTouchScreenFactory();
        {
            this.setTouch(true);
            this.setMultiTouch(false);
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public static TouchScreenFactory getInstance() {
        return TouchScreenFactory.staticGet_SINGLETON();
    }
    

    public virtual void setMultiTouch(bool multiTouch) {
        this.multiTouch = multiTouch;
    }
    

    public virtual bool isMultiTouch() {
        return this.multiTouch;
    }
    

    public virtual void setTouch(bool touch) {
        this.touch = touch;
    }
    

    public virtual bool isTouch() {
        return this.touch;
    }
    

    public virtual void setMultiTouchDistinct(bool multiTouchDistinct) {
        this.multiTouchDistinct = multiTouchDistinct;
    }
    

    public virtual bool isMultiTouchDistinct() {
        return this.multiTouchDistinct;
    }
    

    public virtual void setTouchScreenType(TouchScreenType touchScreenType) {
        this.touchScreenType = touchScreenType;
    }
    

    public virtual TouchScreenType getTouchScreenType() {
        return this.touchScreenType;
    }
    

    public override string toString() {
        StringMaker stringBuffer = new StringMaker();
        stringBuffer.append("TouchScreen: ");
        stringBuffer.appendboolean(this.isTouch());
        stringBuffer.append(" MultiTouch: ");
        stringBuffer.appendboolean(this.isMultiTouch());
        stringBuffer.append(" Distinct MultiTouch: ");
        stringBuffer.appendboolean(this.isMultiTouchDistinct());
        stringBuffer.append(" TouchScreenType: ");
        stringBuffer.append(StringUtil.getInstance().toString1(this.getTouchScreenType()));
        return stringBuffer.toString();
    }
}

