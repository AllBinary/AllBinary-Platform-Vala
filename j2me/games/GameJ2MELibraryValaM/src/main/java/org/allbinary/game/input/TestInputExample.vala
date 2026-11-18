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
// package org.allbinary.game.input
// import javax.microedition.lcdui.Graphics

public class TestInputExample : JObject, TestInputInterface, PaintableInterface {
    private int32 testValue;

    // Java field initializers run after the base constructor
    private void initFieldsTestInputExample() {
    this.testValue = 0;
    }

    public TestInputExample() {
        base();
        this.initFieldsTestInputExample();
    }
    

    public virtual void up() {
    }
    

    public virtual void down() {
    }
    

    public virtual void left() {
        this.testValue++;
    }
    

    public virtual void right() {
        this.testValue--;
    }
    

    public virtual void strafeLeft() {
    }
    

    public virtual void strafeRight() {
    }
    

    public virtual void paint(Graphics graphics) {
    }
    

    public virtual void paintThreed(Graphics graphics) {
    }
}

