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
// package org.allbinary.logic.system.os

public class NoOperatingSystem : GenericOperatingSystem {
    public static GenericOperatingSystem? NO_OPERATING_SYSTEM;
    private static bool staticSet_NO_OPERATING_SYSTEM = false;
    public static GenericOperatingSystem staticGet_NO_OPERATING_SYSTEM() {
        if (!NoOperatingSystem.staticSet_NO_OPERATING_SYSTEM) {
            NoOperatingSystem.staticSet_NO_OPERATING_SYSTEM = true;
            NoOperatingSystem.NO_OPERATING_SYSTEM = new GenericOperatingSystem();
        }
        return NoOperatingSystem.NO_OPERATING_SYSTEM;
    }
    

    public NoOperatingSystem() {
        base();
    }
}

