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
// package org.allbinary.input.motion.button

public class NoButtonsTouchInputFactory : JObject {
    private static BaseTouchInput? instance;
    private static bool staticSet_instance = false;
    private static BaseTouchInput staticGet_instance() {
        if (!NoButtonsTouchInputFactory.staticSet_instance) {
            NoButtonsTouchInputFactory.staticSet_instance = true;
            NoButtonsTouchInputFactory.instance = new BaseTouchInput();
        }
        return NoButtonsTouchInputFactory.instance;
    }

    public NoButtonsTouchInputFactory() {
        base();
    }
    

    public static BaseTouchInput getInstance() {
        return NoButtonsTouchInputFactory.staticGet_instance();
    }
}

