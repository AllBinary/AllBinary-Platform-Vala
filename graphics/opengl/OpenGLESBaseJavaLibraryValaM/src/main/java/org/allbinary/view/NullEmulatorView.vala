/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.view
// import javax.microedition.lcdui.Displayable
// import javax.microedition.midlet.MIDlet

public class NullEmulatorView : JObject, EmulatorViewInterface {
    public static NullEmulatorView? NULL_EMULATOR_VIEW;
    private static bool staticSet_NULL_EMULATOR_VIEW = false;
    public static NullEmulatorView staticGet_NULL_EMULATOR_VIEW() {
        if (!NullEmulatorView.staticSet_NULL_EMULATOR_VIEW) {
            NullEmulatorView.staticSet_NULL_EMULATOR_VIEW = true;
            NullEmulatorView.NULL_EMULATOR_VIEW = new NullEmulatorView();
        }
        return NullEmulatorView.NULL_EMULATOR_VIEW;
    }

    public NullEmulatorView() {
        base();
    }
    

    public virtual void setMidlet(MIDlet midlet) {
    }
    

    public virtual void onEmulatorInitComplete(JObject midletActivity) {
    }
    

    public virtual void onSetDisplayable(Displayable displayable) {
    }
}

