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
// import org.allbinary.ai.ArtificialIntelligenceInterface
// import org.allbinary.bounds.TopULayerBounds
// import org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterface
// import org.allbinary.game.input.GameInput
// import org.allbinary.game.physics.velocity.VelocityInterface
// import org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface
// import org.allbinary.graphics.GPoint
// import org.allbinary.graphics.PointFactory
// import org.allbinary.graphics.Rectangle
// import org.allbinary.graphics.displayable.DisplayInfoSingleton
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.util.ABHashtable

public class TopUBoundBounceAIFactory : JObject, ArtificialIntelligenceInterfaceFactoryInterface {

    public TopUBoundBounceAIFactory() {
        base();
    }
    

    public virtual ArtificialIntelligenceInterface getInstance3(ABHashtable hashtable, AllBinaryLayer ownerLayerInterface, GameInput gameInput) {
        VelocityInterfaceCompositeInterface velocityInterfaceCompositeInterface = ((VelocityInterfaceCompositeInterface) ownerLayerInterface);
        VelocityInterface velocityInterface = ((VelocityInterface) velocityInterfaceCompositeInterface.getVelocityProperties());
        int32 maxDistancePerTick = (velocityInterface.getMaxForwardVelocity() >> velocityInterface.getVelocityXBasicDecimalP().getScaledFactor());
        int32 halfWidth = ownerLayerInterface.getWidth() * 2 + maxDistancePerTick + 1;
        int32 halfHeight = ownerLayerInterface.getHeight() * 2 + maxDistancePerTick + 1;
        GPoint point = PointFactory.getInstance().createXY(halfWidth, halfHeight + 60);
        DisplayInfoSingleton displayInfo = DisplayInfoSingleton.getInstance();
        Rectangle rectangle = new Rectangle(point, (displayInfo.getLastWidth() - halfWidth - point.getX()), (displayInfo.getLastHeight() - halfHeight - point.getY()));
        return new BoundBounceAI(ownerLayerInterface, gameInput, new TopULayerBounds(rectangle), new ReverseVelocityBoundsVisitor(ownerLayerInterface));
    }
}

