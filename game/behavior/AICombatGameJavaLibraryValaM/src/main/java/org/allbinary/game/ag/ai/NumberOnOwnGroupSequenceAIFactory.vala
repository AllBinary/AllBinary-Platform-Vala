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
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.ABHashtable
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

public class NumberOnOwnGroupSequenceAIFactory : JObject {
    public LogUtil logUtil;

    // Java field initializers run after the base constructor
    private void initFieldsNumberOnOwnGroupSequenceAIFactory() {
    this.logUtil = LogUtil.getInstance();
    }

    public NumberOnOwnGroupSequenceAIFactory() {
        base();
        this.initFieldsNumberOnOwnGroupSequenceAIFactory();
    }
    

    public virtual ArtificialIntelligenceInterface getInstance4(ABHashtable hashtable, ArtificialIntelligenceInterface[] artificialIntelligenceInterface, AllBinaryLayer ownerLayerInterface, GameInput gameInput) {
        int32?[] integerArray = NumberInSameGroupSequence.getInstance().NUMBER_ON_SAME_TEAM_SEQUENCE;
        BasicArrayList list = new BasicArrayListD();
        for (int32 index = 0; index < integerArray.length; index++) {
            JObject integerCanBeNull = hashtable.@get(((JObject) integerArray[index]));
            if (integerCanBeNull == null) {
                break;
            }
            list.add(integerCanBeNull);
        }
        StringMaker stringBuffer = new StringMaker();
        stringBuffer.append("Total AI Properties: ");
        stringBuffer.appendint(list.size());
        stringBuffer.append(" == Total AI: ");
        stringBuffer.appendint(artificialIntelligenceInterface.length);
        stringBuffer.append(" + 1");
        CommonStrings commonStrings = CommonStrings.getInstance();
        this.logUtil.putF(stringBuffer.toString(), this, commonStrings.GET_INSTANCE);
        if (artificialIntelligenceInterface.length - 1 > list.size()) {
            JSystem.fatal(new JException("Exception", "Not enough AI properties."));
        }
        if (artificialIntelligenceInterface.length - 1 < list.size()) {
            JSystem.fatal(new JException("Exception", "Too Many AI properties."));
        }
        int32?[] numberOnSameTeam = new int32?[list.size()];
        for (int32 index = 0; index < numberOnSameTeam.length; index++) {
            numberOnSameTeam[index] = JNumber.unboxInt(list.objectArray[index]);
        }
        return new NumberOnOwnGroupSequenceAI(numberOnSameTeam, artificialIntelligenceInterface, ownerLayerInterface, gameInput);
    }
}

