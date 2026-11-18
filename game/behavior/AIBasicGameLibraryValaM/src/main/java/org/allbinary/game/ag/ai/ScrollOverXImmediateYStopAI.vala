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
// package org.allbinary.game.ag.ai
// import org.allbinary.game.ai.BasicAI
// import org.allbinary.game.input.GameInput
// import org.allbinary.graphics.displayable.DisplayInfoSingleton
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.layer.AllBinaryLayerManager

public class ScrollOverXImmediateYStopAI : BasicAI {
    

    public ScrollOverXImmediateYStopAI(AllBinaryLayer ownerLayerInterface, GameInput gameInput) {
        base(ownerLayerInterface, gameInput);
    }
    

    public override void processAI(AllBinaryLayerManager allBinaryLayerManager) {
        AllBinaryLayer ownerLayerInterface = this.getOwnerLayerInterface();
        int32 x = ownerLayerInterface.getXP();
        int32 y = ownerLayerInterface.getYP();
        int32 x2 = ownerLayerInterface.getX2();
        int32 y2 = ownerLayerInterface.getY2();
        int32 width = ownerLayerInterface.getWidth();
        int32 height = ownerLayerInterface.getHeight();
        DisplayInfoSingleton displayInfo = DisplayInfoSingleton.getInstance();
        if (x2 > displayInfo.getLastWidth()) {
            ownerLayerInterface.setPosition(0, y, ownerLayerInterface.getZP());
        }
        if (y2 > displayInfo.getLastHeight()) {
            ownerLayerInterface.setPosition(x, displayInfo.getLastHeight() - height, ownerLayerInterface.getZP());
        }
        if (x < 0) {
            ownerLayerInterface.setPosition(displayInfo.getLastWidth() - width, y, ownerLayerInterface.getZP());
        }
        if (y < 0) {
            ownerLayerInterface.setPosition(x, 0, ownerLayerInterface.getZP());
        }
    }
}

