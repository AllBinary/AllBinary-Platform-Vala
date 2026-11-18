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
// package org.allbinary.game.ag.layer.hud.basic
// import org.allbinary.canvas.Processor

public class NextUnremoveableProcessor : Processor {
    private PlayerGameNotificationHud updateMeasurementProcessor;

    // Java field initializers run after the base constructor
    private void initFieldsNextUnremoveableProcessor() {
    
    }
    

    public NextUnremoveableProcessor(PlayerGameNotificationHud updateMeasurementProcessor) {
        base();
        this.initFieldsNextUnremoveableProcessor();
        this.updateMeasurementProcessor = updateMeasurementProcessor;
    }
    

    public override void process() {
        this.updateMeasurementProcessor.setNextUnremoveableProcess();
    }
}

