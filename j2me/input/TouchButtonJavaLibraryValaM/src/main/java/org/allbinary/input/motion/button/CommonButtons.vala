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
// package org.allbinary.input.motion.button
// import org.allbinary.graphics.PointFactory
// import org.allbinary.graphics.Rectangle
// import org.allbinary.graphics.displayable.DisplayInfoSingleton

public class CommonButtons : JObject {
    private static CommonButtons? instance;
    private static bool staticSet_instance = false;
    private static CommonButtons staticGet_instance() {
        if (!CommonButtons.staticSet_instance) {
            CommonButtons.staticSet_instance = true;
            CommonButtons.instance = new CommonButtons();
        }
        return CommonButtons.instance;
    }
    public int32 STANDARD_BUTTON_SIZE;
    public Rectangle NORMAL_BUTTON;
    public Rectangle LARGE_BUTTON;

    // Java field initializers run after the base constructor
    private void initFieldsCommonButtons() {
    
    
    
    }
    

    public static CommonButtons getInstance() {
        return CommonButtons.staticGet_instance();
    }
    

    public CommonButtons() {
        base();
        this.initFieldsCommonButtons();
        DisplayInfoSingleton displayInfo = DisplayInfoSingleton.getInstance();
        int32 commonButtonSize = 128;
        while (commonButtonSize > 64) {
            int32 totalColumns = displayInfo.getLastWidth() / commonButtonSize;
            int32 totalRows = displayInfo.getLastHeight() / commonButtonSize;
            int32 max = totalColumns;
            if (totalRows > max) {
                max = totalRows;
            }
            if (max > 9) {
                break;
            }
            commonButtonSize = commonButtonSize >> 1;
        }
        this.STANDARD_BUTTON_SIZE = commonButtonSize;
        this.NORMAL_BUTTON = new Rectangle(PointFactory.getInstance().ZERO_ZERO, this.STANDARD_BUTTON_SIZE, this.STANDARD_BUTTON_SIZE);
        this.LARGE_BUTTON = new Rectangle(PointFactory.getInstance().ZERO_ZERO, this.STANDARD_BUTTON_SIZE << 1, this.STANDARD_BUTTON_SIZE << 1);
    }
}

