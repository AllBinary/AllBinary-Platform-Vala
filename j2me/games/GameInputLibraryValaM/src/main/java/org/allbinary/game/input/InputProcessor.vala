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
// import javax.microedition.lcdui.Canvas

public class InputProcessor : JObject {
    public GameInputStrings gameInputStrings;

    // Java field initializers run after the base constructor
    private void initFieldsInputProcessor() {
    this.gameInputStrings = GameInputStrings.getInstance();
    }

    public InputProcessor() {
        base();
        this.initFieldsInputProcessor();
    }
    

    public virtual void keyPressedByDevice(int32 keyCode, int32 deviceId) {
    }
    

    public virtual void keyReleasedByDevice(Canvas canvas, int32 keyCode, int32 deviceId) {
    }
}

