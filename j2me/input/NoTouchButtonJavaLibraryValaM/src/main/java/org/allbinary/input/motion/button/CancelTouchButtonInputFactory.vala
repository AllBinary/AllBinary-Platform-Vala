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
// import org.allbinary.game.input.InputFactory
// import org.allbinary.logic.NullUtil

public class CancelTouchButtonInputFactory : JObject {
    private static JObject? instance;
    private static bool staticSet_instance = false;
    private static JObject staticGet_instance() {
        if (!CancelTouchButtonInputFactory.staticSet_instance) {
            CancelTouchButtonInputFactory.staticSet_instance = true;
            CancelTouchButtonInputFactory.instance = NullUtil.getInstance().NULL_OBJECT;
        }
        return CancelTouchButtonInputFactory.instance;
    }
    private TouchButtonInput[] cancelInputArray;

    // Java field initializers run after the base constructor
    private void initFieldsCancelTouchButtonInputFactory() {
    this.cancelInputArray = new TouchButtonInput[InputFactory.getInstance().MAX_];
    }
    

    public static CancelTouchButtonInputFactory getInstance() {
        if (CancelTouchButtonInputFactory.staticGet_instance() == NullUtil.getInstance().NULL_OBJECT) {
            CancelTouchButtonInputFactory.instance = new CancelTouchButtonInputFactory();
        }
        return ((CancelTouchButtonInputFactory) CancelTouchButtonInputFactory.staticGet_instance());
    }
    

    public CancelTouchButtonInputFactory() {
        base();
        this.initFieldsCancelTouchButtonInputFactory();
        BasicTouchInputFactory basicTouchInputFactory = BasicTouchInputFactory.getInstance();
        for (int32 index = this.cancelInputArray.length - 1; index >= 0; index--) {
            this.cancelInputArray[index] = basicTouchInputFactory.NONE;
        }
        this.cancelInputArray[basicTouchInputFactory.UP.getId()] = basicTouchInputFactory.DOWN;
        this.cancelInputArray[basicTouchInputFactory.DOWN.getId()] = basicTouchInputFactory.UP;
        this.cancelInputArray[basicTouchInputFactory.LEFT.getId()] = basicTouchInputFactory.RIGHT;
        this.cancelInputArray[basicTouchInputFactory.RIGHT.getId()] = basicTouchInputFactory.LEFT;
    }
    

    public virtual TouchButtonInput getCancel(TouchButtonInput touchButtonInput) {
        return this.cancelInputArray[touchButtonInput.getId()];
    }
}

