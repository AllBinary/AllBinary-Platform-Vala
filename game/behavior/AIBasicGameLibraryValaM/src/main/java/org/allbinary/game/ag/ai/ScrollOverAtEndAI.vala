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

public class ScrollOverAtEndAI : BasicAI {
    

    public ScrollOverAtEndAI(AllBinaryLayer ownerLayerInterface, GameInput gameInput) {
        base(ownerLayerInterface, gameInput);
    }
    

    public override void processAI(AllBinaryLayerManager allBinaryLayerManager) {
        AllBinaryLayer ownerLayerInterface = this.getOwnerLayerInterface();
        int32 x = ownerLayerInterface.getXP();
        int32 y = ownerLayerInterface.getYP();
        int32 width = ownerLayerInterface.getWidth();
        int32 height = ownerLayerInterface.getHeight();
        DisplayInfoSingleton displayInfo = DisplayInfoSingleton.getInstance();
        if (x > displayInfo.getLastWidth()) {
            ownerLayerInterface.setPosition(0, y, ownerLayerInterface.getZP());
        }
        if (y > displayInfo.getLastHeight()) {
            ownerLayerInterface.setPosition(x, 0, ownerLayerInterface.getZP());
        }
        if (x < -width) {
            ownerLayerInterface.setPosition(displayInfo.getLastWidth() - width, y, ownerLayerInterface.getZP());
        }
        if (y < -height) {
            ownerLayerInterface.setPosition(x, displayInfo.getLastHeight() - height, ownerLayerInterface.getZP());
        }
    }
}

