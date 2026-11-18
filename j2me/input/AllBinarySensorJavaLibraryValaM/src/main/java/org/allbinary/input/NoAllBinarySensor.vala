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
// package org.allbinary.input

public class NoAllBinarySensor : AllBinarySensor {
    private static NoAllBinarySensor? instance;
    private static bool staticSet_instance = false;
    private static NoAllBinarySensor staticGet_instance() {
        if (!NoAllBinarySensor.staticSet_instance) {
            NoAllBinarySensor.staticSet_instance = true;
            NoAllBinarySensor.instance = new NoAllBinarySensor();
        }
        return NoAllBinarySensor.instance;
    }
    

    public static NoAllBinarySensor getInstance() {
        return NoAllBinarySensor.staticGet_instance();
    }
    

    public NoAllBinarySensor() {
        base();
    }
}

