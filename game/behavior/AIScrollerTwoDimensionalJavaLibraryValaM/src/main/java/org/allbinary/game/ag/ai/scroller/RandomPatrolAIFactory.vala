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
// package org.allbinary.game.ag.ai.scroller
// import org.allbinary.ai.ArtificialIntelligenceInterface
// import org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterface
// import org.allbinary.game.input.GameInput
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.util.ABHashtable

public class RandomPatrolAIFactory : JObject, ArtificialIntelligenceInterfaceFactoryInterface {

    public RandomPatrolAIFactory() {
        base();
    }
    

    public virtual ArtificialIntelligenceInterface getInstance3(ABHashtable hashtable, AllBinaryLayer ownerLayerInterface, GameInput gameInput) {
        return new RandomPatrolAI(hashtable, ownerLayerInterface, gameInput);
    }
}

