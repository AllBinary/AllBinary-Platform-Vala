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
// package org.allbinary.graphics.paint

public class StatePaintableFactory : JObject {
    private static StatePaintable? instance;
    private static bool staticSet_instance = false;
    private static StatePaintable staticGet_instance() {
        if (!StatePaintableFactory.staticSet_instance) {
            StatePaintableFactory.staticSet_instance = true;
            StatePaintableFactory.instance = new StatePaintable();
        }
        return StatePaintableFactory.instance;
    }

    public StatePaintableFactory() {
        base();
    }
    

    public static StatePaintable getInstance() {
        return StatePaintableFactory.staticGet_instance();
    }
}

