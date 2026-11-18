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
// import org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterface
// import org.allbinary.game.input.GameInput
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.util.ABHashtable

public class NullAIFactory : JObject, ArtificialIntelligenceInterfaceFactoryInterface {
    private static NullAI? NULL_AI;
    private static bool staticSet_NULL_AI = false;
    private static NullAI staticGet_NULL_AI() {
        if (!NullAIFactory.staticSet_NULL_AI) {
            NullAIFactory.staticSet_NULL_AI = true;
            NullAIFactory.NULL_AI = new NullAI();
        }
        return NullAIFactory.NULL_AI;
    }

    public NullAIFactory() {
        base();
    }
    

    public virtual ArtificialIntelligenceInterface getInstance3(ABHashtable hashtable, AllBinaryLayer ownerLayerInterface, GameInput gameInput) {
        return NullAIFactory.staticGet_NULL_AI();
    }
    

    public static ArtificialIntelligenceInterface getInstance() {
        return NullAIFactory.staticGet_NULL_AI();
    }
}

