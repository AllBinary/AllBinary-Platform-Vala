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
// import org.allbinary.input.AllBinarySensor
// import org.allbinary.input.NoAllBinarySensor

public class SensorGameUpdateProcessor : JObject {
    private AllBinarySensor inputSensor;

    // Java field initializers run after the base constructor
    private void initFieldsSensorGameUpdateProcessor() {
    this.inputSensor = NoAllBinarySensor.getInstance();
    }

    public SensorGameUpdateProcessor() {
        base();
        this.initFieldsSensorGameUpdateProcessor();
    }
    

    public virtual void setInputSensor(AllBinarySensor inputSensor) {
        this.inputSensor = inputSensor;
    }
    

    public virtual AllBinarySensor getInputSensor() {
        return this.inputSensor;
    }
    

    public virtual void process(JObject anyType) {
    }
    

    public virtual void sendNotifications(JObject anyType) {
    }
    

    public virtual bool isAnySensor() {
        if (this.inputSensor == NoAllBinarySensor.getInstance()) {
            return false;
        } else {
            return true;
        }
    }
    

    public virtual void setNoSensors() {
        this.setInputSensor(NoAllBinarySensor.getInstance());
    }
}

