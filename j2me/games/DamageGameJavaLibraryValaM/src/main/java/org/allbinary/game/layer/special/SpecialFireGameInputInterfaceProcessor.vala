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
// package org.allbinary.game.layer.special
// import org.allbinary.game.input.event.GameKeyEvent
// import org.allbinary.layer.AllBinaryLayerManager

public class SpecialFireGameInputInterfaceProcessor : SpecialGameInputInterfaceProcessor {
    

    public SpecialFireGameInputInterfaceProcessor(SpecialGameInputInterface collidableDestroyableDamageableLayer) {
        base(collidableDestroyableDamageableLayer);
    }
    

    public override void processEvent(AllBinaryLayerManager allbinaryLayerManager, GameKeyEvent gameKeyEvent) {
        this.specialGameInputInterface.fire(allbinaryLayerManager, gameKeyEvent);
    }
}

