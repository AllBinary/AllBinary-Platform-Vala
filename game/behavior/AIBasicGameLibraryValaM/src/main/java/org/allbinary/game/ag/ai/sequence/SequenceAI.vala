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
// package org.allbinary.game.ag.ai.sequence
// import org.allbinary.ai.ArtificialIntelligence
// import org.allbinary.ai.ArtificialIntelligenceInterface
// import org.allbinary.ai.ArtificialIntelligenceTransitionInterface
// import org.allbinary.game.ag.ai.ArrayAI
// import org.allbinary.game.input.GameInput
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.layer.AllBinaryLayerManager
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil

public class SequenceAI : ArrayAI {
    private const string SEQUENCE_AI = "Sequence AI";
    private int32 index;

    // Java field initializers run after the base constructor
    private void initFieldsSequenceAI() {
    this.index = 0;
    }
    

    public SequenceAI(ArtificialIntelligenceInterface[] artificialIntelligenceInterfaceArray, AllBinaryLayer ownerLayerInterface, GameInput gameInput) {
        base(artificialIntelligenceInterfaceArray, ownerLayerInterface, gameInput);
        this.initFieldsSequenceAI();
    }
    

    public override void processAI(AllBinaryLayerManager allBinaryLayerManager) {
        this.getArtificialIntelligenceInterface()[this.index].processAI(allBinaryLayerManager);
    }
    

    public virtual void next() {
        this.index++;
        ArtificialIntelligenceInterface artificialIntelligenceInterface = this.getSelectedArtificialIntelligenceInterface();
        if (artificialIntelligenceInterface.getId() == ArtificialIntelligence.AI_ID) {
            ArtificialIntelligenceTransitionInterface artificialIntelligenceTransitionInterface = ((ArtificialIntelligenceTransitionInterface) artificialIntelligenceInterface);
            artificialIntelligenceTransitionInterface.transition();
        }
    }
    

    public virtual int32 getIndex() {
        return this.index;
    }
    

    public virtual void setIndex(int32 index) {
        this.index = index;
    }
    

    public virtual ArtificialIntelligenceInterface getSelectedArtificialIntelligenceInterface() {
        return this.getArtificialIntelligenceInterface()[this.index];
    }
    

    public override string getName() {
        return SequenceAI.SEQUENCE_AI;
    }
    

    public override string toString() {
        StringMaker stringBuffer = new StringMaker();
        stringBuffer.append(base.toString());
        stringBuffer.append(" Selected AI: ");
        stringBuffer.append(StringUtil.getInstance().toString1(this.getSelectedArtificialIntelligenceInterface()));
        return stringBuffer.toString();
    }
}

