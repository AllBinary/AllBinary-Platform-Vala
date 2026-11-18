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
// import org.allbinary.game.input.GameInput
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.layer.AllBinaryLayerManager
// import org.allbinary.game.ai.BasicAI

public class ArrayAI : BasicAI {
    private ArtificialIntelligenceInterface[] artificialIntelligenceInterfaceArray;

    // Java field initializers run after the base constructor
    private void initFieldsArrayAI() {
    
    }
    

    public ArrayAI(ArtificialIntelligenceInterface[] artificialIntelligenceInterface, AllBinaryLayer ownerLayerInterface, GameInput gameInput) {
        base(ownerLayerInterface, gameInput);
        this.initFieldsArrayAI();
        this.artificialIntelligenceInterfaceArray = artificialIntelligenceInterface;
    }
    

    public override void processAI(AllBinaryLayerManager allBinaryLayerManager) {
        int32 size = this.artificialIntelligenceInterfaceArray.length;
        for (int32 index = 0; index < size; index++) {
            this.artificialIntelligenceInterfaceArray[index].processAI(allBinaryLayerManager);
        }
    }
    

    public virtual ArtificialIntelligenceInterface[] getArtificialIntelligenceInterface() {
        return this.artificialIntelligenceInterfaceArray;
    }
}

