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
// package org.allbinary.game.configuration.feature

public class SensorFeatureFactory : JObject {
    private static SensorFeatureFactory? instance;
    private static bool staticSet_instance = false;
    private static SensorFeatureFactory staticGet_instance() {
        if (!SensorFeatureFactory.staticSet_instance) {
            SensorFeatureFactory.staticSet_instance = true;
            SensorFeatureFactory.instance = new SensorFeatureFactory();
        }
        return SensorFeatureFactory.instance;
    }
    public SensorFeature NO_ORIENTATION;
    public SensorFeature ORIENTATION_SENSORS;
    public SensorFeature SIMULATED_ORIENTATION_SENSORS;
    public SensorFeature YAW;
    public SensorFeature YAW_MINUS_RIGHT_PLUS_LEFT;
    public SensorFeature YAW_MINUS_LEFT_PLUS_RIGHT;
    public SensorFeature PITCH;
    public SensorFeature ROLL;

    // Java field initializers run after the base constructor
    private void initFieldsSensorFeatureFactory() {
    this.NO_ORIENTATION = new SensorFeature("No Orientation");
    this.ORIENTATION_SENSORS = new SensorFeature("Orientation Sensors");
    this.SIMULATED_ORIENTATION_SENSORS = new SensorFeature("Simulated Orientation Sensors");
    this.YAW = new SensorFeature("Yaw");
    this.YAW_MINUS_RIGHT_PLUS_LEFT = new SensorFeature("Yaw -Right +Left");
    this.YAW_MINUS_LEFT_PLUS_RIGHT = new SensorFeature("Yaw -Left +Right ");
    this.PITCH = new SensorFeature("Pitch");
    this.ROLL = new SensorFeature("Roll");
    }
    

    public static SensorFeatureFactory getInstance() {
        return SensorFeatureFactory.staticGet_instance();
    }
    

    public SensorFeatureFactory() {
        base();
        this.initFieldsSensorFeatureFactory();
    }
}

