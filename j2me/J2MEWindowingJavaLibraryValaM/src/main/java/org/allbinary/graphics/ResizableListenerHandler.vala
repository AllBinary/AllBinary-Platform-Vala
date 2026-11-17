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

public class ResizableListenerHandler : JObject {
    private static ResizableListenerHandler? instance;
    private static bool staticSet_instance = false;
    private static ResizableListenerHandler staticGet_instance() {
        if (!ResizableListenerHandler.staticSet_instance) {
            ResizableListenerHandler.staticSet_instance = true;
            ResizableListenerHandler.instance = new ResizableListenerHandler();
        }
        return ResizableListenerHandler.instance;
    }

    public ResizableListenerHandler() {
        base();
    }
    

    public static ResizableListenerHandler getInstance() {
        return ResizableListenerHandler.staticGet_instance();
    }
    

    public virtual void setListener(ResizableListenerInterface resizableListenerInterface) {
    }
    

    public virtual void fire(bool isFullScreen) {
    }
    

    public virtual void fireEvent(bool value) {
    }
}

