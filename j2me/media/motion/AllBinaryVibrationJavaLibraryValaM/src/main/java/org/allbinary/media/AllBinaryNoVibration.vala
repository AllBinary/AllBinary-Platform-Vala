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
// package org.allbinary.media

public class AllBinaryNoVibration : AllBinaryVibrationME {
    public static AllBinaryVibrationME? NO_VIBRATION;
    private static bool staticSet_NO_VIBRATION = false;
    public static AllBinaryVibrationME staticGet_NO_VIBRATION() {
        if (!AllBinaryNoVibration.staticSet_NO_VIBRATION) {
            AllBinaryNoVibration.staticSet_NO_VIBRATION = true;
            AllBinaryNoVibration.NO_VIBRATION = new AllBinaryNoVibration();
        }
        return AllBinaryNoVibration.NO_VIBRATION;
    }

    public AllBinaryNoVibration() {
        base();
    }
    

    public override void vibrate(int32 duration, int32 type, int32 volume) {
    }
}

