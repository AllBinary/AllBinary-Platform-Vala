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
// import org.allbinary.game.configuration.feature.Features
// import org.allbinary.game.configuration.feature.SensorFeatureFactory
// import org.allbinary.logic.math.Orientation

public class OrientationToGameKeyEvent : JObject {
    private AllBinaryOrientationSensor allBinaryGyroSensor;
    private int32 MIN_;

    // Java field initializers run after the base constructor
    private void initFieldsOrientationToGameKeyEvent() {
    this.allBinaryGyroSensor = null;
    this.MIN_ = 15;
    }
    

    public OrientationToGameKeyEvent() {
        base();
        this.initFieldsOrientationToGameKeyEvent();
        if (Features.getInstance().isFeature(SensorFeatureFactory.getInstance().NO_ORIENTATION)) {
            this.allBinaryGyroSensor = new NoGyroSensor();
        } else {
            JSystem.fatal(new JException("Exception", "Not Such Feature"));
        }
    }
    

    public virtual void setAllBinaryGyroSensor(AllBinaryOrientationSensor allBinaryGyroSensor) {
        this.allBinaryGyroSensor = allBinaryGyroSensor;
    }
    

    public virtual AllBinaryOrientationSensor getAllBinaryGyroSensor() {
        return this.allBinaryGyroSensor;
    }
    

    public virtual void process() {
    }
    

    private void updateGameKeyEvents(Orientation orientation, int32 yaw, int32 pitch, int32 roll) {
    }
}

