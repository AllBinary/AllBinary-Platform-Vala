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
// package org.allbinary.input.accelerometer
// import org.allbinary.game.configuration.feature.Features
// import org.allbinary.game.configuration.feature.SensorFeatureFactory
// import org.allbinary.input.gyro.AllBinaryOrientationSensor

public class AccelerometerSensorFactory : JObject {
    private static AllBinaryOrientationSensor? allBinaryAccelerometerSensor;
    private static bool staticSet_allBinaryAccelerometerSensor = false;
    private static AllBinaryOrientationSensor staticGet_allBinaryAccelerometerSensor() {
        if (!AccelerometerSensorFactory.staticSet_allBinaryAccelerometerSensor) {
            AccelerometerSensorFactory.staticSet_allBinaryAccelerometerSensor = true;
            AccelerometerSensorFactory.allBinaryAccelerometerSensor = AllBinaryOrientationSensor.NULL_ALLBINARY_ORIENTATION_SENSOR;
        }
        return AccelerometerSensorFactory.allBinaryAccelerometerSensor;
    }

    public AccelerometerSensorFactory() {
        base();
    }
    

    public static void init() {
        Features features = Features.getInstance();
        SensorFeatureFactory sensorFeatureFactory = SensorFeatureFactory.getInstance();
        if (features.isFeature(sensorFeatureFactory.ORIENTATION_SENSORS)) {
            JSystem.fatal(new JException("Exception", "No Orientation Sensors"));
        } else if (features.isFeature(sensorFeatureFactory.SIMULATED_ORIENTATION_SENSORS)) {
            JSystem.fatal(new JException("Exception", "No Simulation Sensors"));
        } else if (features.isFeature(sensorFeatureFactory.NO_ORIENTATION)) {
            AccelerometerSensorFactory.allBinaryAccelerometerSensor = new NoAccelerometerSensor();
        } else {
            JSystem.fatal(new JException("Exception", "Not Such SensorFeature"));
        }
    }
    

    public static AllBinaryOrientationSensor getInstance() {
        return AccelerometerSensorFactory.staticGet_allBinaryAccelerometerSensor();
    }
}

