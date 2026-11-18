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
// package org.allbinary.animation
// import org.allbinary.logic.util.event.handler.BasicEventHandler

public class AnimationEventHandler : BasicEventHandler {
    private static AnimationEventHandler? eventHandler;
    private static bool staticSet_eventHandler = false;
    private static AnimationEventHandler staticGet_eventHandler() {
        if (!AnimationEventHandler.staticSet_eventHandler) {
            AnimationEventHandler.staticSet_eventHandler = true;
            AnimationEventHandler.eventHandler = new AnimationEventHandler();
        }
        return AnimationEventHandler.eventHandler;
    }
    

    public AnimationEventHandler() {
        base();
    }
    

    public static AnimationEventHandler getInstance() {
        return AnimationEventHandler.staticGet_eventHandler();
    }
}

