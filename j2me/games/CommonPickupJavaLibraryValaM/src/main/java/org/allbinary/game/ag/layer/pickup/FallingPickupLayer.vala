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
// package org.allbinary.game.ag.layer.pickup
// import org.allbinary.animation.NullAnimationFactory
// import org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory
// import org.allbinary.game.layer.pickup.PickupLayer
// import org.allbinary.game.multiplayer.layer.RemoteInfo
// import org.allbinary.game.tick.TickableInterface
// import org.allbinary.graphics.PointFactory
// import org.allbinary.graphics.Rectangle
// import org.allbinary.layer.AllBinaryLayerManager
// import org.allbinary.view.ViewPosition

public class FallingPickupLayer : PickupLayer, TickableInterface, NamedInterface {
    private const string NAME = "FallingPickupLayer";
    

    public FallingPickupLayer(RemoteInfo remoteInfo) {
        base(FallingPickupLayer.NAME, remoteInfo, 0, CountedPickedUpLayerInterfaceFactory.NULL_COUNTED_PICKUP_LAYER_FACTORY, NullAnimationFactory.getFactoryInstance().getInstance1(0), new Rectangle(PointFactory.getInstance().ZERO_ZERO, 0, 0), ViewPosition.getInstanceD());
    }
    

    public override void processTick(AllBinaryLayerManager allBinaryLayerManager) {
        this.setPosition(this.x, this.y + 1, this.z);
    }
    

    public override bool implmentsTickableInterface() {
        return true;
    }
}

