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
// package org.allbinary.game.paint.help
// import org.allbinary.game.input.GameKey
// import org.allbinary.game.input.GameKeyFactory
// import org.allbinary.game.input.Input
// import org.allbinary.game.input.PlatformInputMappingFactory
// import org.allbinary.game.input.mapping.GameInputMapping
// import org.allbinary.game.input.mapping.PersistentInputMapping
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonSeps
// import org.allbinary.util.BasicArrayList

public class BasicInputMappingHelpPaintable : HelpPaintable {
    private GameInputMapping[] gameInputMappingArray;
    private GameKey NONE;

    // Java field initializers run after the base constructor
    private void initFieldsBasicInputMappingHelpPaintable() {
    
    this.NONE = GameKeyFactory.getInstance().NONE;
    }
    

    public BasicInputMappingHelpPaintable(GameInputMapping[] gameInputMappingArray, BasicColor basicColor) {
        base("Help Screen", BasicColorFactory.getInstance().BLACK, basicColor);
        this.initFieldsBasicInputMappingHelpPaintable();
        this.gameInputMappingArray = gameInputMappingArray;
        this.update(this.NONE, this.NONE);
    }
    

    public virtual void update(GameKey selectedGameKey, Input selectedInput) {
        PersistentInputMapping gameKeyMapping = PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance();
        string EQUAL = " = ";
        StringMaker stringMaker = new StringMaker();
        int32 size = this.gameInputMappingArray.length;
        string[] keyInfo = new string[size];
        GameInputMapping gameInputMapping = null;
        GameKey gameKey = null;
        BasicArrayList list = null;
        for (int32 index = 0; index < size; index++) {
            gameInputMapping = this.gameInputMappingArray[index];
            gameKey = gameInputMapping.getGameKey();
            list = gameKeyMapping.getInputMapping().getMappedInput(gameKey);
            stringMaker.@delete(0, stringMaker.length());
            keyInfo[index] = stringMaker.append(gameInputMapping.getName()).append(EQUAL).append(this.@get(list)).toString();
        }
        base.setInputInfoP(keyInfo);
    }
    

    private string @get(BasicArrayList keyList) {
        CommonSeps commonSeps = CommonSeps.getInstance();
        StringMaker stringBuffer = new StringMaker();
        string AND = "and ";
        Input key = null;
        int32 size = keyList.size();
        for (int32 index = 0; index < size; index++) {
            key = ((Input) keyList.objectArray[index]);
            stringBuffer.append(key.getName());
            if (index + 1 < keyList.size()) {
                if (keyList.size() == 2) {
                    stringBuffer.append(commonSeps.SPACE).append(AND);
                } else {
                    if (index + 2 == keyList.size()) {
                        stringBuffer.append(commonSeps.COMMA_SEP);
                        stringBuffer.append(AND);
                    } else {
                        stringBuffer.append(commonSeps.COMMA_SEP);
                    }
                }
            }
        }
        return stringBuffer.toString();
    }
}

