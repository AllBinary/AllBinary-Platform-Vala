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
// package org.allbinary.graphics.color
// import org.allbinary.logic.util.event.handler.BasicEventHandler

public class ColorChangeEventHandler : BasicEventHandler {
    private static ColorChangeEventHandler? eventHandler;
    private static bool staticSet_eventHandler = false;
    private static ColorChangeEventHandler staticGet_eventHandler() {
        if (!ColorChangeEventHandler.staticSet_eventHandler) {
            ColorChangeEventHandler.staticSet_eventHandler = true;
            ColorChangeEventHandler.eventHandler = new ColorChangeEventHandler();
        }
        return ColorChangeEventHandler.eventHandler;
    }
    

    public ColorChangeEventHandler() {
        base();
    }
    

    public static ColorChangeEventHandler getInstance() {
        return ColorChangeEventHandler.staticGet_eventHandler();
    }
}

