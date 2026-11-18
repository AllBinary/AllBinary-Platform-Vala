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
// import org.allbinary.game.ag.ai.tactical.BasicRandomAIFactory
// import org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterface
// import org.allbinary.game.ai.BasicAI
// import org.allbinary.game.input.GameInput
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.logic.util.visitor.Visitor
// import org.allbinary.util.ABHashtable

public class DiveAndDirectionalTrackingAIFactory : JObject, ArtificialIntelligenceInterfaceFactoryInterface {

    public DiveAndDirectionalTrackingAIFactory() {
        base();
    }
    

    public virtual ArtificialIntelligenceInterface getInstance3(ABHashtable hashtable, AllBinaryLayer ownerLayerInterface, GameInput gameInput) {
        JObject visitorCanBeNull = hashtable.@get(((JObject) BasicAI.AI_VISITOR));
        if (visitorCanBeNull == null) {
            visitorCanBeNull = ThrustAIVisitorFactory.getInstance();
        }
        ABHashtable hashtable2 = new BasicProbabilityAIDataFactory().getInstance();
        hashtable2.put(BasicAI.AI_VISITOR, LastKeyAIVisitorFactory.getInstance());
        ArtificialIntelligenceInterface artificialIntelligenceInterface = new BasicRandomAIFactory().getInstance3(hashtable2, ownerLayerInterface, gameInput);
        return new DiveAndDirectionalTrackingAI(ownerLayerInterface, artificialIntelligenceInterface, gameInput, ((Visitor) visitorCanBeNull));
    }
}

