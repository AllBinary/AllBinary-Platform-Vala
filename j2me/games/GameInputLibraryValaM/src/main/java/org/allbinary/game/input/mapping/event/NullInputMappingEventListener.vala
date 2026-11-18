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
// package org.allbinary.game.input.mapping.event
// import org.allbinary.logic.util.event.AllBinaryEventObject

public class NullInputMappingEventListener : JObject, InputMappingEventListenerInterface, EventListenerInterface {
    public static NullInputMappingEventListener? NULL_INPUT_MAPPING_EVENT_LISTENER;
    private static bool staticSet_NULL_INPUT_MAPPING_EVENT_LISTENER = false;
    public static NullInputMappingEventListener staticGet_NULL_INPUT_MAPPING_EVENT_LISTENER() {
        if (!NullInputMappingEventListener.staticSet_NULL_INPUT_MAPPING_EVENT_LISTENER) {
            NullInputMappingEventListener.staticSet_NULL_INPUT_MAPPING_EVENT_LISTENER = true;
            NullInputMappingEventListener.NULL_INPUT_MAPPING_EVENT_LISTENER = new NullInputMappingEventListener();
        }
        return NullInputMappingEventListener.NULL_INPUT_MAPPING_EVENT_LISTENER;
    }

    public NullInputMappingEventListener() {
        base();
    }
    

    public virtual void onInputMappingEvent(InputMappingEvent inputMappingEvent) {
    }
    

    public virtual void onEvent(AllBinaryEventObject eventObject) {
    }
}

