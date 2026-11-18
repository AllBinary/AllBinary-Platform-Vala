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
// package org.allbinary.android.input.motion
// import org.allbinary.game.input.analog.AnalogLocationInput
// import org.allbinary.game.input.analog.AnalogLocationInputFactory
// import org.allbinary.layer.AllBinaryLayerManager

public class SingleAnalogControllerVisitor : AnalogControllerVisitor {
    private int32 playerInputId;

    // Java field initializers run after the base constructor
    private void initFieldsSingleAnalogControllerVisitor() {
    
    }
    

    public SingleAnalogControllerVisitor(int32 playerInputId) {
        base();
        this.initFieldsSingleAnalogControllerVisitor();
        this.playerInputId = playerInputId;
    }
    

    public override void process(AllBinaryLayerManager allbinaryLayerManager, AnalogLocationInputProcessor analogLocationInputProcessor) {
        AnalogLocationInput analogLocationInput = AnalogLocationInputFactory.getInstance().getInstanceForPlayer(this.playerInputId);
        analogLocationInputProcessor.process(allbinaryLayerManager, analogLocationInput);
    }
}

