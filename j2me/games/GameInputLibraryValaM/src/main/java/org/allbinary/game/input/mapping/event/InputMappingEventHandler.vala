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
// package org.allbinary.game.input.mapping.event
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.logic.util.event.EventListenerInterface
// import org.allbinary.logic.util.event.handler.BasicEventHandler

public class InputMappingEventHandler : BasicEventHandler {
    private static InputMappingEventHandler? gameKeyEventHandler;
    private static bool staticSet_gameKeyEventHandler = false;
    private static InputMappingEventHandler staticGet_gameKeyEventHandler() {
        if (!InputMappingEventHandler.staticSet_gameKeyEventHandler) {
            InputMappingEventHandler.staticSet_gameKeyEventHandler = true;
            InputMappingEventHandler.gameKeyEventHandler = new InputMappingEventHandler();
        }
        return InputMappingEventHandler.gameKeyEventHandler;
    }
    

    public InputMappingEventHandler() {
        base();
    }
    

    public static InputMappingEventHandler getInstance() {
        return InputMappingEventHandler.staticGet_gameKeyEventHandler();
    }
    

    public override void process(AllBinaryEventObject eventObject, EventListenerInterface eventListenerInterface) {
        InputMappingEventListenerInterface inputMappingEventListenerInterface = ((InputMappingEventListenerInterface) eventListenerInterface);
        inputMappingEventListenerInterface.onInputMappingEvent(((InputMappingEvent) eventObject));
    }
}

