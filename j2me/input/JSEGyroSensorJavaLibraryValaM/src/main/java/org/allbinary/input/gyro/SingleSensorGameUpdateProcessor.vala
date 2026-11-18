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
// import org.allbinary.canvas.Processor

public class SingleSensorGameUpdateProcessor : SensorGameUpdateProcessor {
    private Processor accelerometerSensorUpdateProcessor;
    private Processor gyroSensorUpdateProcessor;

    // Java field initializers run after the base constructor
    private void initFieldsSingleSensorGameUpdateProcessor() {
    this.accelerometerSensorUpdateProcessor = new AccelerometerSensorUpdateProcessor();
    this.gyroSensorUpdateProcessor = new GyroSensorUpdateProcessor();
    }

    public SingleSensorGameUpdateProcessor() {
        base();
        this.initFieldsSingleSensorGameUpdateProcessor();
    }
    

    public override void process(JObject anyType) {
        this.setNoSensors();
    }
    

    public override void sendNotifications(JObject anyType) {
    }
}

