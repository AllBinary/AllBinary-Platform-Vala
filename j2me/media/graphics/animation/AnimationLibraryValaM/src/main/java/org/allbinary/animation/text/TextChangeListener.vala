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
// package org.allbinary.animation.text

public class TextChangeListener : JObject {
    private static TextChangeListener? instance;
    private static bool staticSet_instance = false;
    private static TextChangeListener staticGet_instance() {
        if (!TextChangeListener.staticSet_instance) {
            TextChangeListener.staticSet_instance = true;
            TextChangeListener.instance = new TextChangeListener();
        }
        return TextChangeListener.instance;
    }

    public TextChangeListener() {
        base();
    }
    

    public static TextChangeListener getInstance() {
        return TextChangeListener.staticGet_instance();
    }
    

    public virtual void onMeasure() {
    }
}

