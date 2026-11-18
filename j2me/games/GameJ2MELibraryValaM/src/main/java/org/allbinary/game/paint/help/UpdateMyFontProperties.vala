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
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.string.StringUtil

public class UpdateMyFontProperties : JObject {
    public string[] actionStringArray;
    public int32[] keymappingBeginWidthArray;
    public int32[] actionStringDeltaXArray;
    public int32[,] inputDeltaXArray;
    public string[,] sepArray;
    public int32[,] sepWidthArray;
    public int32 charHeight;

    // Java field initializers run after the base constructor
    private void initFieldsUpdateMyFontProperties() {
    this.actionStringArray = StringUtil.getInstance().getArrayInstance();
    this.keymappingBeginWidthArray = NullUtil.getInstance().NULL_INT_ARRAY;
    this.actionStringDeltaXArray = NullUtil.getInstance().NULL_INT_ARRAY;
    this.inputDeltaXArray = NullUtil.getInstance().NULL_INT_ARRAY_ARRAY;
    this.sepArray = StringUtil.getInstance().ONE_EMPTY_STRING_ARRAY_OF_ARRAYS;
    this.sepWidthArray = NullUtil.getInstance().NULL_INT_ARRAY_ARRAY;
    this.charHeight = 0;
    }

    public UpdateMyFontProperties() {
        base();
        this.initFieldsUpdateMyFontProperties();
    }
}

