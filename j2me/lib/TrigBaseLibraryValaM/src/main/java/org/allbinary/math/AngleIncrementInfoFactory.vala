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
// package org.allbinary.math

public class AngleIncrementInfoFactory : JObject {
    private static AngleIncrementInfoFactory? instance;
    private static bool staticSet_instance = false;
    private static AngleIncrementInfoFactory staticGet_instance() {
        if (!AngleIncrementInfoFactory.staticSet_instance) {
            AngleIncrementInfoFactory.staticSet_instance = true;
            AngleIncrementInfoFactory.instance = new AngleIncrementInfoFactory();
        }
        return AngleIncrementInfoFactory.instance;
    }
    private AngleIncrementInfo[] angleIncrementInfo;

    // Java field initializers run after the base constructor
    private void initFieldsAngleIncrementInfoFactory() {
    this.angleIncrementInfo = new AngleIncrementInfo[((int32) (AngleFactory.getInstance().TOTAL_ANGLE))];
    }

    public AngleIncrementInfoFactory() {
        base();
        this.initFieldsAngleIncrementInfoFactory();
    }
    

    public static AngleIncrementInfoFactory getInstance() {
        return AngleIncrementInfoFactory.staticGet_instance();
    }
    

    public virtual AngleIncrementInfo getAt(int16 angleIncrement) {
        int32 halfAngleIncrement = (((int32) (angleIncrement)) >> 1);
        AngleIncrementInfo angleIncrementInfo = null;
        AngleIncrementInfo angleIncrementInfoCanBeNull = this.angleIncrementInfo[halfAngleIncrement];
        if (angleIncrementInfoCanBeNull == null) {
            angleIncrementInfo = new AngleIncrementInfo(angleIncrement);
            this.angleIncrementInfo[halfAngleIncrement] = angleIncrementInfo;
            return angleIncrementInfo;
        } else {
            angleIncrementInfo = angleIncrementInfoCanBeNull;
        }
        return angleIncrementInfo;
    }
}

