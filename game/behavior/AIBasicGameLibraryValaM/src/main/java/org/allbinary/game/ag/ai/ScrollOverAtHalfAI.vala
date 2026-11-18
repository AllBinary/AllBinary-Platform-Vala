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

public class ScrollOverAtHalfAI : BasicAI {
    

    public ScrollOverAtHalfAI(AllBinaryLayer ownerLayerInterface, GameInput gameInput) {
        base(ownerLayerInterface, gameInput);
    }
    

    public override void processAI(AllBinaryLayerManager allBinaryLayerManager) {
        AllBinaryLayer ownerLayerInterface = this.getOwnerLayerInterface();
        int32 x = ownerLayerInterface.getXP();
        int32 y = ownerLayerInterface.getYP();
        int32 halfWidth = ownerLayerInterface.getHalfWidth();
        int32 halfHeight = ownerLayerInterface.getHalfHeight();
        DisplayInfoSingleton displayInfo = DisplayInfoSingleton.getInstance();
        if (x > displayInfo.getLastWidth() - halfWidth) {
            ownerLayerInterface.setPosition(halfWidth + 1, y, ownerLayerInterface.getZP());
        }
        if (y > displayInfo.getLastHeight() - halfHeight) {
            ownerLayerInterface.setPosition(x, halfHeight + 1, ownerLayerInterface.getZP());
        }
        if (x < -halfWidth) {
            ownerLayerInterface.setPosition(displayInfo.getLastWidth() - halfWidth, y, ownerLayerInterface.getZP());
        }
        if (y < -halfHeight) {
            ownerLayerInterface.setPosition(x, displayInfo.getLastHeight() - halfHeight, ownerLayerInterface.getZP());
        }
    }
}

