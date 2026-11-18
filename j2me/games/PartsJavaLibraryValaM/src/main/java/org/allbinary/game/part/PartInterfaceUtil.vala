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
// package org.allbinary.game.part

public class PartInterfaceUtil : JObject {
    private static PartInterface[]? SINGLETON;
    private static bool staticSet_SINGLETON = false;
    private static PartInterface[] staticGet_SINGLETON() {
        if (!PartInterfaceUtil.staticSet_SINGLETON) {
            PartInterfaceUtil.staticSet_SINGLETON = true;
            PartInterfaceUtil.SINGLETON = new PartInterface[0];
        }
        return PartInterfaceUtil.SINGLETON;
    }

    public PartInterfaceUtil() {
        base();
    }
    

    public static PartInterface[] getZeroArray() {
        return PartInterfaceUtil.staticGet_SINGLETON();
    }
}

