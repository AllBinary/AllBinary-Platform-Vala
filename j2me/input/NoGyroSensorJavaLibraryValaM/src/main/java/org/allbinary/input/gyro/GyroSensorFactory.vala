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

public class GyroSensorFactory : JObject {
    private static AllBinaryOrientationSensor? allBinaryGyroSensor;
    private static bool staticSet_allBinaryGyroSensor = false;
    private static AllBinaryOrientationSensor staticGet_allBinaryGyroSensor() {
        if (!GyroSensorFactory.staticSet_allBinaryGyroSensor) {
            GyroSensorFactory.staticSet_allBinaryGyroSensor = true;
            GyroSensorFactory.allBinaryGyroSensor = AllBinaryOrientationSensor.NULL_ALLBINARY_ORIENTATION_SENSOR;
        }
        return GyroSensorFactory.allBinaryGyroSensor;
    }

    public GyroSensorFactory() {
        base();
    }
    

    public static void init() {
        GyroSensorFactory.allBinaryGyroSensor = new NoGyroSensor();
    }
    

    public static AllBinaryOrientationSensor getInstance() {
        return GyroSensorFactory.staticGet_allBinaryGyroSensor();
    }
}

