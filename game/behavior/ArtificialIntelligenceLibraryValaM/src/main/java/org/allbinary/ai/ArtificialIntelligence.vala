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
// package org.allbinary.ai
// import org.allbinary.layer.AllBinaryLayerManager

public class ArtificialIntelligence : JObject, ArtificialIntelligenceInterface, IdentifierInterface {
    public const int32 AI_ID = 2;
    private static ArtificialIntelligence? instance;
    private static bool staticSet_instance = false;
    private static ArtificialIntelligence staticGet_instance() {
        if (!ArtificialIntelligence.staticSet_instance) {
            ArtificialIntelligence.staticSet_instance = true;
            ArtificialIntelligence.instance = new ArtificialIntelligence();
        }
        return ArtificialIntelligence.instance;
    }
    

    public static ArtificialIntelligence getInstance() {
        return ArtificialIntelligence.staticGet_instance();
    }
    

    public ArtificialIntelligence() {
        base();
    }
    

    public virtual void processAI(AllBinaryLayerManager layerManager) {
    }
    

    public virtual int32 getId() {
        return 1;
    }
}

