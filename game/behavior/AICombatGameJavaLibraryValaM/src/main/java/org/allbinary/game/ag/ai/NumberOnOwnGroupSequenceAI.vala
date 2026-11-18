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
// import org.allbinary.game.ag.ai.sequence.SequenceAI
// import org.allbinary.game.input.GameInput
// import org.allbinary.game.layer.identification.GroupLayerManagerListener
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.layer.AllBinaryLayerManager

public class NumberOnOwnGroupSequenceAI : SequenceAI {
    private int32?[] numberOnSameTeam;

    // Java field initializers run after the base constructor
    private void initFieldsNumberOnOwnGroupSequenceAI() {
    
    }
    

    public NumberOnOwnGroupSequenceAI(int32?[] numberOnSameTeam, ArtificialIntelligenceInterface[] artificialIntelligenceInterface, AllBinaryLayer ownerLayerInterface, GameInput gameInput) {
        base(artificialIntelligenceInterface, ownerLayerInterface, gameInput);
        this.initFieldsNumberOnOwnGroupSequenceAI();
        this.numberOnSameTeam = numberOnSameTeam;
    }
    

    public override void processAI(AllBinaryLayerManager allBinaryLayerManager) {
        AllBinaryLayer layerInterface = this.getOwnerLayerInterface();
        int32 index = this.getIndex();
        if (this.numberOnSameTeam.length > index) {
            int32 size = GroupLayerManagerListener.getInstance().getGroupSizeFromInterface(layerInterface);
            if (this.numberOnSameTeam[index].intValue() > size) {
                this.next();
            }
        }
        base.processAI(allBinaryLayerManager);
    }
}

