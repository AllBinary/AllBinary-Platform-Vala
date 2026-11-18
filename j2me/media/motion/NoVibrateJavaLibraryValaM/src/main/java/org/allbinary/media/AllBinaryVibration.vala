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
// import org.allbinary.game.configuration.GameConfigurationCentral

public class AllBinaryVibration : AllBinaryVibrationME {
    private static AllBinaryVibrationME? VIBRATION;
    private static bool staticSet_VIBRATION = false;
    private static AllBinaryVibrationME staticGet_VIBRATION() {
        if (!AllBinaryVibration.staticSet_VIBRATION) {
            AllBinaryVibration.staticSet_VIBRATION = true;
            AllBinaryVibration.VIBRATION = AllBinaryNoVibration.NO_VIBRATION;
        }
        return AllBinaryVibration.VIBRATION;
    }
    

    public AllBinaryVibration() {
        base();
    }
    

    public static AllBinaryVibrationME getInstance() {
        return AllBinaryVibration.staticGet_VIBRATION();
    }
    

    public static void init() {
        if (GameConfigurationCentral.getInstance().VIBRATION.getValue().intValue() == 0) {
            AllBinaryVibration.VIBRATION = AllBinaryNoVibration.NO_VIBRATION;
        } else {
            AllBinaryVibration.VIBRATION = new AllBinaryVibration();
        }
    }
    

    public override void vibrate(int32 duration, int32 type, int32 volume) {
    }
}

