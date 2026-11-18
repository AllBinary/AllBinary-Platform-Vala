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
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD
// import org.allbinary.util.BasicArrayListUtil

public class BasicTouchButtonsBuilder : BaseTouchInput {
    private static BasicTouchButtonsBuilder? SINGLETON;
    private static bool staticSet_SINGLETON = false;
    private static BasicTouchButtonsBuilder staticGet_SINGLETON() {
        if (!BasicTouchButtonsBuilder.staticSet_SINGLETON) {
            BasicTouchButtonsBuilder.staticSet_SINGLETON = true;
            BasicTouchButtonsBuilder.SINGLETON = new BasicTouchButtonsBuilder();
        }
        return BasicTouchButtonsBuilder.SINGLETON;
    }
    public LogUtil logUtil;

    // Java field initializers run after the base constructor
    private void initFieldsBasicTouchButtonsBuilder() {
    this.logUtil = LogUtil.getInstance();
    }

    public BasicTouchButtonsBuilder() {
        base();
        this.initFieldsBasicTouchButtonsBuilder();
    }
    

    public static BaseTouchInput getInstance() {
        return BasicTouchButtonsBuilder.staticGet_SINGLETON();
    }
    

    public override BasicArrayList getList() {
        {
            this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.GET_LIST);
            BasicArrayList list = new BasicArrayListD();
            return list;
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

