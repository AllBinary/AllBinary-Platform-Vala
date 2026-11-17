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
// package org.allbinary.graphics

public class ScreenListenerHandler : JObject {
    private static ScreenListenerHandler? instance;
    private static bool staticSet_instance = false;
    private static ScreenListenerHandler staticGet_instance() {
        if (!ScreenListenerHandler.staticSet_instance) {
            ScreenListenerHandler.staticSet_instance = true;
            ScreenListenerHandler.instance = new ScreenListenerHandler();
        }
        return ScreenListenerHandler.instance;
    }
    private ScreenListenerInterface screenListenerInterface;

    // Java field initializers run after the base constructor
    private void initFieldsScreenListenerHandler() {
    this.screenListenerInterface = new ScreenEmptyListener();
    }

    public ScreenListenerHandler() {
        base();
        this.initFieldsScreenListenerHandler();
    }
    

    public static ScreenListenerHandler getInstance() {
        return ScreenListenerHandler.staticGet_instance();
    }
    

    public virtual void setListener(ScreenListenerInterface screenListenerInterface) {
        this.screenListenerInterface = screenListenerInterface;
    }
    

    public virtual void fireWithState(bool isFullScreen) {
        this.screenListenerInterface.onFullScreen(isFullScreen);
    }
    

    public virtual void fire() {
        this.screenListenerInterface.onFullScreenDisplay();
    }
}

