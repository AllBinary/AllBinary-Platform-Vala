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
// import org.allbinary.graphics.GPoint
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonSeps

public class CurrentlyPressedTouchButtonSingletonDebug : CurrentlyPressedTouchButtonSingleton {
    private static CurrentlyPressedTouchButtonSingletonDebug? instanceC;
    private static bool staticSet_instanceC = false;
    private static CurrentlyPressedTouchButtonSingletonDebug staticGet_instanceC() {
        if (!CurrentlyPressedTouchButtonSingletonDebug.staticSet_instanceC) {
            CurrentlyPressedTouchButtonSingletonDebug.staticSet_instanceC = true;
            CurrentlyPressedTouchButtonSingletonDebug.instanceC = new CurrentlyPressedTouchButtonSingletonDebug();
        }
        return CurrentlyPressedTouchButtonSingletonDebug.instanceC;
    }
    private string string;
    private string listString;
    private string appendText;
    private string PRESSED_AND_FIRED;
    private string PRESSED_AND_NOT_FIRED;
    private string ASSOCIATED_RELEASED_AND_FIRED;
    private string RELEASED_AND_FIRED;
    private string RELEASED_AND_FIRED_2;
    private string RELEASED_AND_NOT_FIRED;

    // Java field initializers run after the base constructor
    private void initFieldsCurrentlyPressedTouchButtonSingletonDebug() {
    this.string = StringUtil.getInstance().EMPTY_STRING;
    this.listString = StringUtil.getInstance().EMPTY_STRING;
    this.appendText = StringUtil.getInstance().EMPTY_STRING;
    this.PRESSED_AND_FIRED = "pressed & fired";
    this.PRESSED_AND_NOT_FIRED = "pressed in button but not fired";
    this.ASSOCIATED_RELEASED_AND_FIRED = "assoc. rel & fired";
    this.RELEASED_AND_FIRED = "rel & fired 1";
    this.RELEASED_AND_FIRED_2 = "rel & fired 2";
    this.RELEASED_AND_NOT_FIRED = "rel & not fired";
    }

    public CurrentlyPressedTouchButtonSingletonDebug() {
        base();
        this.initFieldsCurrentlyPressedTouchButtonSingletonDebug();
    }
    

    public static CurrentlyPressedTouchButtonSingleton getInstance() {
        return CurrentlyPressedTouchButtonSingletonDebug.staticGet_instanceC();
    }
    

    private void appendTouchButtonInput(string append, TouchButtonInput touchButtonInput) {
        StringMaker stringBuffer = new StringMaker();
        stringBuffer.append(touchButtonInput.toString());
        stringBuffer.append(CommonSeps.getInstance().SPACE);
        stringBuffer.append(append);
        this.appendText = stringBuffer.toString();
        this.string = new StringMaker().append(this.listString).append(this.appendText).toString();
    }
    

    private void append(string append) {
        this.appendText = new StringMaker().append(this.appendText).append(append).toString();
        this.string = new StringMaker().append(this.listString).append(this.appendText).toString();
    }
    

    public virtual void clearLog(int32 x, int32 y) {
        this.appendText = new StringMaker().append(GPoint.toStringStatic(x, y, 0)).append(CommonSeps.getInstance().SPACE).toString();
        this.string = new StringMaker().append(this.listString).append(this.appendText).toString();
    }
    

    public virtual void releaseAndNotFired() {
        this.append(this.RELEASED_AND_NOT_FIRED);
    }
    

    public virtual void releaseAndFired(TouchButtonInput touchButtonInput) {
        this.appendTouchButtonInput(this.RELEASED_AND_FIRED, touchButtonInput);
    }
    

    public virtual void releaseAndFired2(TouchButtonInput touchButtonInput) {
        this.appendTouchButtonInput(this.RELEASED_AND_FIRED_2, touchButtonInput);
    }
    

    public virtual void releaseAndFiredAssociated(TouchButtonInput touchButtonInput) {
        this.appendTouchButtonInput(this.ASSOCIATED_RELEASED_AND_FIRED, touchButtonInput);
    }
    

    public virtual void pressedAndFired(TouchButtonInput touchButtonInput) {
        this.appendTouchButtonInput(this.PRESSED_AND_FIRED, touchButtonInput);
    }
    

    public virtual void pressedAndNotFired(TouchButtonInput touchButtonInput) {
        this.appendTouchButtonInput(this.PRESSED_AND_NOT_FIRED, touchButtonInput);
    }
    

    public override TouchButtonInput removeAt(int32 index) {
        TouchButtonInput touchButtonInput = base.removeAt(index);
        this.listString = this.list.toString();
        this.string = new StringMaker().append(this.listString).append(this.appendText).toString();
        return touchButtonInput;
    }
    

    public override bool remove(TouchButtonInput touchButtonInput) {
        bool isRemoved = base.remove(touchButtonInput);
        this.listString = this.list.toString();
        this.string = new StringMaker().append(this.listString).append(this.appendText).toString();
        return isRemoved;
    }
    

    public override void add(TouchButtonInput touchButtonInput) {
        base.add(touchButtonInput);
        this.listString = this.list.toString();
        this.string = new StringMaker().append(this.listString).append(this.appendText).toString();
    }
    

    public override string toString() {
        return this.string;
    }
}

