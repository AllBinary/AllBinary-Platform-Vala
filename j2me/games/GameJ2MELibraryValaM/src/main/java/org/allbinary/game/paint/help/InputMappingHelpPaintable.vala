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
// import javax.microedition.lcdui.Font
// import javax.microedition.lcdui.Graphics
// import org.allbinary.game.input.GameKey
// import org.allbinary.game.input.GameKeyFactory
// import org.allbinary.game.input.Input
// import org.allbinary.game.input.PlatformInputMappingFactory
// import org.allbinary.game.input.mapping.GameInputMapping
// import org.allbinary.game.input.mapping.PersistentInputMapping
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.graphics.color.BasicColorUtil
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonLabels
// import org.allbinary.string.CommonSeps
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.BasicArrayList

public class InputMappingHelpPaintable : HelpPaintable {
    private const string AND = " and ";
    private const string SEP = ", ";
    private const string MORE_THAN_TWO_IN_LIST_AND = ", and ";
    public LogUtil logUtil;
    public CommonStrings commonStrings;
    public CommonSeps commonSeps;
    public StringUtil stringUtil;
    private BasicColorFactory basicColorFactory;
    private GameKey NONE;
    private string EMPTY_STRING;
    private GameInputMapping[] gameInputMappingArray;
    private BasicArrayList[] keyMappingArray;
    private BasicColor[] actionBasicColor;
    private BasicColor[,] inputBasicColorArray;
    private BasicColor selectedBasicColor;
    private UpdateMyFontProperties updateMyFontProperties;

    // Java field initializers run after the base constructor
    private void initFieldsInputMappingHelpPaintable() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.commonSeps = CommonSeps.getInstance();
    this.stringUtil = StringUtil.getInstance();
    this.basicColorFactory = BasicColorFactory.getInstance();
    this.NONE = GameKeyFactory.getInstance().NONE;
    this.EMPTY_STRING = StringUtil.getInstance().EMPTY_STRING;
    
    this.keyMappingArray = new BasicArrayList[0];
    this.actionBasicColor = BasicColorUtil.getInstance().ZERO_ARRAY;
    this.inputBasicColorArray = new BasicColor[0, 0];
    this.selectedBasicColor = null;
    this.updateMyFontProperties = new UpdateMyFontProperties();
    }
    

    public InputMappingHelpPaintable(GameInputMapping[] gameInputMappingArray, BasicColor backgroundBasicColor, BasicColor basicColor) {
        base("Input Mapping", backgroundBasicColor, basicColor);
        this.initFieldsInputMappingHelpPaintable();
        this.gameInputMappingArray = gameInputMappingArray;
        this.update(this.NONE, this.NONE);
        if (backgroundBasicColor == this.basicColorFactory.WHITE || basicColor == this.basicColorFactory.WHITE) {
            this.selectedBasicColor = this.basicColorFactory.RED;
        } else {
            this.selectedBasicColor = this.basicColorFactory.WHITE;
        }
    }
    

    public override void updateMeasurement(Graphics graphics) {
        Font font = graphics.getFont();
        UpdateMyFontProperties updateMyFontProperties = new UpdateMyFontProperties();
        updateMyFontProperties.charHeight = font.getHeight();
        StringMaker stringMaker = new StringMaker();
        string[] inputInfo = this.inputInfo;
        int32 size = inputInfo.length;
        updateMyFontProperties.actionStringArray = new string[size];
        updateMyFontProperties.keymappingBeginWidthArray = new int32[size];
        updateMyFontProperties.actionStringDeltaXArray = new int32[size];
        updateMyFontProperties.inputDeltaXArray = new int32[size, 0];
        updateMyFontProperties.sepArray = new string[size, 0];
        updateMyFontProperties.sepWidthArray = new int32[size, 0];
        BasicArrayList list = null;
        string keyMappings = null;
        string actionString = null;
        Input input = null;
        int32 size2 = 0;
        for (int32 index = 0; index < size; index++) {
            list = this.keyMappingArray[index];
            keyMappings = this.@get(list);
            stringMaker.@delete(0, stringMaker.length());
            actionString = stringMaker.append(inputInfo[index]).append(this.commonSeps.COLON).append(this.commonSeps.SPACE).append(this.commonSeps.SPACE).toString();
            updateMyFontProperties.actionStringArray[index] = actionString;
            stringMaker.@delete(0, stringMaker.length());
            updateMyFontProperties.keymappingBeginWidthArray[index] = (font.stringWidth(stringMaker.append(updateMyFontProperties.actionStringArray[index]).append(keyMappings).toString()) >> 1);
            updateMyFontProperties.actionStringDeltaXArray[index] = font.stringWidth(actionString);
            size2 = list.size();
            JArrays.rowInt32(updateMyFontProperties.inputDeltaXArray, index) = new int32[size2];
            updateMyFontProperties.sepArray[index] = new string[size2];
            JArrays.rowInt32(updateMyFontProperties.sepWidthArray, index) = new int32[size2];
            for (int32 index2 = 0; index2 < size2; index2++) {
                input = ((Input) list.objectArray[index2]);
                updateMyFontProperties.inputDeltaXArray[index, index2] = font.stringWidth(input.getName());
                updateMyFontProperties.sepArray[index, index2] = this.EMPTY_STRING;
                if (index2 + 1 < list.size()) {
                    if (list.size() == 2) {
                        updateMyFontProperties.sepArray[index, index2] = InputMappingHelpPaintable.AND;
                    } else {
                        if (index2 + 2 == list.size()) {
                            updateMyFontProperties.sepArray[index, index2] = InputMappingHelpPaintable.MORE_THAN_TWO_IN_LIST_AND;
                        } else {
                            updateMyFontProperties.sepArray[index, index2] = InputMappingHelpPaintable.SEP;
                        }
                    }
                }
                if (updateMyFontProperties.sepArray[index, index2] != this.EMPTY_STRING) {
                    updateMyFontProperties.sepWidthArray[index, index2] = font.stringWidth(updateMyFontProperties.sepArray[index, index2]);
                }
            }
        }
        this.updateMyFontProperties = updateMyFontProperties;
        base.updateMeasurement(graphics);
    }
    

    public virtual void update(GameKey selectedGameKey, Input selectedInput) {
        StringMaker stringMaker = new StringMaker();
        this.logUtil.putF(stringMaker.append(CommonLabels.getInstance().START_LABEL).append("selected GameKey: ").append(this.stringUtil.toString1(selectedGameKey)).append(" Input: ").append(this.stringUtil.toString1(selectedInput)).toString(), this, this.commonStrings.UPDATE);
        PersistentInputMapping gameKeyMapping = PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance();
        int32 size = this.gameInputMappingArray.length;
        string[] keyInfo = new string[size];
        BasicArrayList[] keyMappingArray = new BasicArrayList[size];
        BasicColor[] actionBasicColor = new BasicColor[size];
        BasicColor[,] inputBasicColorArray = new BasicColor[size, 0];
        GameInputMapping gameInputMapping = null;
        GameKey gameKey = null;
        BasicArrayList list = null;
        for (int32 index = 0; index < size; index++) {
            gameInputMapping = this.gameInputMappingArray[index];
            gameKey = gameInputMapping.getGameKey();
            list = gameKeyMapping.getInputMapping().getMappedInput(gameKey);
            int32 size2 = list.size();
            inputBasicColorArray[index] = new BasicColor[size2];
            for (int32 index2 = 0; index2 < size2; index2++) {
                inputBasicColorArray[index, index2] = this.basicColor;
            }
            if (gameKey == selectedGameKey) {
                stringMaker.@delete(0, stringMaker.length());
                this.logUtil.putF(stringMaker.append("Found: selected GameKey: ").append(this.stringUtil.toString1(selectedGameKey)).toString(), this, this.commonStrings.UPDATE);
                actionBasicColor[index] = this.selectedBasicColor;
                int32 indexOfSelectedInput = list.indexOf(selectedInput);
                if (indexOfSelectedInput >= 0) {
                    stringMaker.@delete(0, stringMaker.length());
                    this.logUtil.putF(stringMaker.append("Found: selected Input: ").append(this.stringUtil.toString1(selectedInput)).toString(), this, this.commonStrings.UPDATE);
                    inputBasicColorArray[index, indexOfSelectedInput] = this.selectedBasicColor;
                }
            } else {
                actionBasicColor[index] = this.basicColor;
            }
            keyInfo[index] = gameInputMapping.getName();
            keyMappingArray[index] = list;
        }
        this.keyMappingArray = keyMappingArray;
        this.actionBasicColor = actionBasicColor;
        this.inputBasicColorArray = inputBasicColorArray;
        base.setInputInfoP(keyInfo);
        this.myFontProcessor = this.updateMyFontProcessor;
    }
    

    private string @get(BasicArrayList keyList) {
        StringMaker stringBuffer = new StringMaker();
        Input key = null;
        int32 size = keyList.size();
        for (int32 index = 0; index < size; index++) {
            key = ((Input) keyList.objectArray[index]);
            stringBuffer.append(key.getName());
            if (index + 1 < keyList.size()) {
                if (keyList.size() == 2) {
                    stringBuffer.append(InputMappingHelpPaintable.AND);
                } else {
                    if (index + 2 == keyList.size()) {
                        stringBuffer.append(InputMappingHelpPaintable.MORE_THAN_TWO_IN_LIST_AND);
                    } else {
                        stringBuffer.append(InputMappingHelpPaintable.SEP);
                    }
                }
            }
        }
        return stringBuffer.toString();
    }
    

    public override void paint(Graphics graphics) {
        this.myFontProcessor.process(graphics);
        int32 halfWidth = this.displayInfo.getLastHalfWidth();
        graphics.setColor(this.basicColor.intValue());
        graphics.drawString(this.title, halfWidth - this.titleBeginWidth, this.updateMyFontProperties.charHeight, this.anchor);
        string[] inputInfo = this.inputInfo;
        int32 size = inputInfo.length;
        int32 y = 0;
        int32 deltaX = 0;
        int32 size2 = 0;
        string actionString = null;
        Input input = null;
        BasicArrayList list = null;
        string sep = null;
        int32 beginWidth = 0;
        for (int32 index = 0; index < size; index++) {
            y = (index + 3) * this.updateMyFontProperties.charHeight;
            deltaX = 0;
            list = this.keyMappingArray[index];
            size2 = list.size();
            beginWidth = this.updateMyFontProperties.keymappingBeginWidthArray[index];
            graphics.setColor(this.actionBasicColor[index].intValue());
            actionString = this.updateMyFontProperties.actionStringArray[index];
            graphics.drawString(actionString, halfWidth - beginWidth + deltaX, y, this.anchor);
            deltaX += this.updateMyFontProperties.actionStringDeltaXArray[index];
            for (int32 index2 = 0; index2 < size2; index2++) {
                input = ((Input) list.objectArray[index2]);
                graphics.setColor(this.inputBasicColorArray[index, index2].intValue());
                graphics.drawString(input.getName(), halfWidth - beginWidth + deltaX, y, this.anchor);
                deltaX += this.updateMyFontProperties.inputDeltaXArray[index, index2];
                sep = this.updateMyFontProperties.sepArray[index, index2];
                graphics.setColor(this.basicColor.intValue());
                graphics.drawString(sep, halfWidth - beginWidth + deltaX, y, this.anchor);
                deltaX += this.updateMyFontProperties.sepWidthArray[index, index2];
            }
        }
    }
}

