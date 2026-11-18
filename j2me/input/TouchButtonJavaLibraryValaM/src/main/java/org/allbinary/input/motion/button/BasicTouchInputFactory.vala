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
// import org.allbinary.game.input.mapping.InputToGameKeyMapping
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonLabels
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

public class BasicTouchInputFactory : JObject {
    private static JObject? instance;
    private static bool staticSet_instance = false;
    private static JObject staticGet_instance() {
        if (!BasicTouchInputFactory.staticSet_instance) {
            BasicTouchInputFactory.staticSet_instance = true;
            BasicTouchInputFactory.instance = NullUtil.getInstance().NULL_OBJECT;
        }
        return BasicTouchInputFactory.instance;
    }
    public LogUtil logUtil;
    public TouchButtonInput SPECIAL_BUTTON_SEVEN_TESTING_ONLY;
    public TouchButtonInput SPECIAL_BUTTON_EIGHT_TESTING_ONLY;
    public TouchButtonInput SPECIAL_BUTTON_SIX;
    public TouchButtonInput SPECIAL_BUTTON_FIVE;
    public TouchButtonInput SPECIAL_BUTTON_FOUR;
    public TouchButtonInput SPECIAL_BUTTON_THREE;
    public TouchButtonInput SPECIAL_BUTTON_TWO;
    public TouchButtonInput SPECIAL_BUTTON_ONE;
    public TouchButtonInput UP;
    public TouchButtonInput LEFT;
    public TouchButtonInput RIGHT;
    public TouchButtonInput DOWN;
    public TouchButtonInput NONE;
    private bool initialized;
    private BasicArrayList list;

    // Java field initializers run after the base constructor
    private void initFieldsBasicTouchInputFactory() {
    this.logUtil = LogUtil.getInstance();
    
    
    
    
    
    
    
    
    
    
    
    
    
    this.initialized = false;
    this.list = new BasicArrayListD();
    }
    

    public static BasicTouchInputFactory getInstance() {
        if (BasicTouchInputFactory.staticGet_instance() == NullUtil.getInstance().NULL_OBJECT) {
            BasicTouchInputFactory.instance = new BasicTouchInputFactory();
        }
        return ((BasicTouchInputFactory) BasicTouchInputFactory.staticGet_instance());
    }
    

    public BasicTouchInputFactory() {
        base();
        this.initFieldsBasicTouchInputFactory();
        int32 MAX_ = InputFactory.getInstance().MAX_;
        this.SPECIAL_BUTTON_SEVEN_TESTING_ONLY = new TouchButtonInput(MAX_ - 41, "Button 7 - Testing Only May Cross Over Key Values");
        this.SPECIAL_BUTTON_EIGHT_TESTING_ONLY = new TouchButtonInput(MAX_ - 42, "Button 8 - Testing Only May Cross Over Key Values");
        this.SPECIAL_BUTTON_SIX = new TouchButtonInput(MAX_ - 30, "Button 6");
        this.SPECIAL_BUTTON_FIVE = new TouchButtonInput(MAX_ - 31, "Button 5");
        this.SPECIAL_BUTTON_FOUR = new TouchButtonInput(MAX_ - 32, "Button 4");
        this.SPECIAL_BUTTON_THREE = new TouchButtonInput(MAX_ - 33, "Button 3");
        this.SPECIAL_BUTTON_TWO = new TouchButtonInput(MAX_ - 34, "Button 2");
        this.SPECIAL_BUTTON_ONE = new TouchButtonInput(MAX_ - 35, "Button 1");
        this.UP = new TouchButtonInput(MAX_ - 36, "Up Button");
        this.LEFT = new TouchButtonInput(MAX_ - 37, "Left Button");
        this.RIGHT = new TouchButtonInput(MAX_ - 38, "Right Button");
        this.DOWN = new TouchButtonInput(MAX_ - 39, "Down Button");
        this.NONE = new TouchButtonInput(MAX_ - 40, "No Button");
    }
    

    public virtual void init(InputToGameKeyMapping inputToGameKeyMapping) {
        if (!this.initialized) {
            this.initialized = true;
            this.list.add(this.UP);
            this.list.add(this.LEFT);
            this.list.add(this.RIGHT);
            this.list.add(this.DOWN);
            this.list.add(this.SPECIAL_BUTTON_TWO);
            this.list.add(this.SPECIAL_BUTTON_FOUR);
            this.list.add(this.SPECIAL_BUTTON_THREE);
            this.list.add(this.SPECIAL_BUTTON_ONE);
            this.list.add(this.SPECIAL_BUTTON_FIVE);
            this.list.add(this.SPECIAL_BUTTON_SIX);
            this.list.add(this.SPECIAL_BUTTON_SIX);
            this.list.add(this.SPECIAL_BUTTON_SEVEN_TESTING_ONLY);
            this.list.add(this.SPECIAL_BUTTON_EIGHT_TESTING_ONLY);
            this.updateAllFromList(this.list, inputToGameKeyMapping);
        }
    }
    

    public virtual void updateAll(InputToGameKeyMapping inputToGameKeyMapping) {
        this.updateAllFromList(this.list, inputToGameKeyMapping);
    }
    

    public virtual void updateAllFromList(BasicArrayList list, InputToGameKeyMapping inputToGameKeyMapping) {
        this.logUtil.putF(new StringMaker().append(CommonLabels.getInstance().START_LABEL).appendint(list.size()).toString(), this, "updateAll");
        TouchButtonInput touchButtonInput = null;
        for (int32 index = list.size() - 1; index >= 0; index--) {
            touchButtonInput = ((TouchButtonInput) list.objectArray[index]);
            touchButtonInput.update(inputToGameKeyMapping);
        }
    }
    

    public virtual BasicArrayList getList() {
        return this.list;
    }
}

