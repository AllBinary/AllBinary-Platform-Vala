/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2026 AllBinary 
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
// package org.allbinary.graphics.canvas.transition.progress

public class ProgressEndListener : JObject {
    public static ProgressEndListener? instance;
    private static bool staticSet_instance = false;
    public static ProgressEndListener staticGet_instance() {
        if (!ProgressEndListener.staticSet_instance) {
            ProgressEndListener.staticSet_instance = true;
            ProgressEndListener.instance = new ProgressEndListener();
        }
        return ProgressEndListener.instance;
    }

    public ProgressEndListener() {
        base();
    }
    

    public virtual void onEndEvent() {
    }
}

