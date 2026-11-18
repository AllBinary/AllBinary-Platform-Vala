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
// import org.allbinary.logic.communication.log.ForcedLogUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings

public class AllBinarySensor : JObject, AllBinarySensorListener {
    public static AllBinarySensor? NULL_ALLBINARY_SENSOR;
    private static bool staticSet_NULL_ALLBINARY_SENSOR = false;
    public static AllBinarySensor staticGet_NULL_ALLBINARY_SENSOR() {
        if (!AllBinarySensor.staticSet_NULL_ALLBINARY_SENSOR) {
            AllBinarySensor.staticSet_NULL_ALLBINARY_SENSOR = true;
            AllBinarySensor.NULL_ALLBINARY_SENSOR = new AllBinarySensor();
        }
        return AllBinarySensor.NULL_ALLBINARY_SENSOR;
    }
    private static int32 max = 100;
    public LogUtil logUtil;
    public CommonStrings commonStrings;

    // Java field initializers run after the base constructor
    private void initFieldsAllBinarySensor() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    }
    

    public AllBinarySensor() {
        base();
        this.initFieldsAllBinarySensor();
    }
    

    public virtual void init() {
    }
    

    public virtual void update() {
    }
    

    public static void setMax(int32 max) {
        AllBinarySensor.max = max;
    }
    

    public static int32 getMax() {
        return AllBinarySensor.max;
    }
    

    public virtual int32 getId() {
        return AllBinarySensor.getMax();
    }
    

    public virtual void shutdown() {
        this.logUtil.putF(this.commonStrings.START, this, "shutdown");
    }
    

    public virtual void onSensorChange() {
        ForcedLogUtil.log(this.commonStrings.NOT_IMPLEMENTED, this);
    }
}

