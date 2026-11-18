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
// package org.allbinary.input.gyro

public class OrientationData : JObject {
    private static OrientationData? SINGLETON;
    private static bool staticSet_SINGLETON = false;
    private static OrientationData staticGet_SINGLETON() {
        if (!OrientationData.staticSet_SINGLETON) {
            OrientationData.staticSet_SINGLETON = true;
            OrientationData.SINGLETON = new OrientationData();
        }
        return OrientationData.SINGLETON;
    }
    public string ORIENTATION_SENSOR_INPUT;
    public string ORIENTATION_TYPE;

    // Java field initializers run after the base constructor
    private void initFieldsOrientationData() {
    this.ORIENTATION_SENSOR_INPUT = "Orientation Sensor Input";
    this.ORIENTATION_TYPE = "Orientation Type";
    }
    

    public OrientationData() {
        base();
        this.initFieldsOrientationData();
    }
    

    public static OrientationData getInstance() {
        return OrientationData.staticGet_SINGLETON();
    }
}

