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
// package org.allbinary.game.input
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.math.SmallIntegerSingletonFactory
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonStrings

public class InputFactory : JObject {
    private static JObject? instance;
    private static bool staticSet_instance = false;
    private static JObject staticGet_instance() {
        if (!InputFactory.staticSet_instance) {
            InputFactory.staticSet_instance = true;
            InputFactory.instance = NullUtil.getInstance().NULL_OBJECT;
        }
        return InputFactory.instance;
    }
    public LogUtil logUtil;
    private CommonStrings commonStrings;
    public string KEY_CODE_LABEL;
    public string DEVICE_ID_LABEL;
    public int32 MAX_;
    public Input[] inputIntegerArray;
    public Input NO_INPUT;

    // Java field initializers run after the base constructor
    private void initFieldsInputFactory() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.KEY_CODE_LABEL = "KeyCode: ";
    this.DEVICE_ID_LABEL = "DeviceId: ";
    this.MAX_ = SmallIntegerSingletonFactory.getInstance().getMin();
    this.inputIntegerArray = new Input[this.MAX_];
    this.NO_INPUT = new Input(0, this.commonStrings.UNKNOWN);
    }
    

    public static InputFactory getInstance() {
        if (InputFactory.staticGet_instance() == NullUtil.getInstance().NULL_OBJECT) {
            InputFactory.instance = new InputFactory();
        }
        return ((InputFactory) InputFactory.staticGet_instance());
    }
    

    public InputFactory() {
        base();
        this.initFieldsInputFactory();
        int32 size = this.inputIntegerArray.length;
        for (int32 index = 0; index < size; index++) {
            this.inputIntegerArray[index] = this.NO_INPUT;
        }
    }
    

    public virtual void add(int32 id, Input input) {
        this.inputIntegerArray[id] = input;
    }
    

    public virtual Input getInstanceById(int32 id) {
        if (id < 0) {
            id = -id;
        }
        if (id > this.inputIntegerArray.length) {
            this.logUtil.putF(new StringMaker().append("Warning id: ").appendint(id).toString(), this, this.commonStrings.GET_INSTANCE);
            return this.NO_INPUT;
        }
        return this.inputIntegerArray[id];
    }
}

