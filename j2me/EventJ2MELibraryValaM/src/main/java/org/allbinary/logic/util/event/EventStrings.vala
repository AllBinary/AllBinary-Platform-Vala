/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package org.allbinary.logic.util.event

public class EventStrings : JObject {
    private static EventStrings? instance;
    private static bool staticSet_instance = false;
    private static EventStrings staticGet_instance() {
        if (!EventStrings.staticSet_instance) {
            EventStrings.staticSet_instance = true;
            EventStrings.instance = new EventStrings();
        }
        return EventStrings.instance;
    }
    public string PERFORMANCE_MESSAGE;
    public string TOTAL_LISTENERS;
    public string LISTENER_LABEL;
    public string FIRE_EVENT;

    // Java field initializers run after the base constructor
    private void initFieldsEventStrings() {
    this.PERFORMANCE_MESSAGE = "Use Custom onEvent Methods for needed optimization";
    this.TOTAL_LISTENERS = "Total Listeners: ";
    this.LISTENER_LABEL = " Listener: ";
    this.FIRE_EVENT = "fireEvent";
    }

    public EventStrings() {
        base();
        this.initFieldsEventStrings();
    }
    

    public static EventStrings getInstance() {
        return EventStrings.staticGet_instance();
    }
}

