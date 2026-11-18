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
// package org.allbinary.game.midlet

public class LicenseLevelUtil : JObject {
    private static LicenseLevelUtil? instance;
    private static bool staticSet_instance = false;
    private static LicenseLevelUtil staticGet_instance() {
        if (!LicenseLevelUtil.staticSet_instance) {
            LicenseLevelUtil.staticSet_instance = true;
            LicenseLevelUtil.instance = new LicenseLevelUtil();
        }
        return LicenseLevelUtil.instance;
    }

    public LicenseLevelUtil() {
        base();
    }
    

    public static LicenseLevelUtil getInstance() {
        return LicenseLevelUtil.staticGet_instance();
    }
    

    public virtual int32 getMaxLevel(int32 maxLevel, int32 demoLevel) {
        return demoLevel;
    }
}

