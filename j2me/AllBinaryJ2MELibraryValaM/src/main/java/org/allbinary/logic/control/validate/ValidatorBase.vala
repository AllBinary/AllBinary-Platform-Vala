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
// package org.allbinary.logic.control.validate
// import org.allbinary.logic.StdUtil
// import org.allbinary.logic.java.bool.BooleanFactory
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListUtil
// import org.allbinary.util.ABHashtable

public class ValidatorBase : JObject, ValidatorBaseInterface {
    private static ValidatorBase? instance;
    private static bool staticSet_instance = false;
    private static ValidatorBase staticGet_instance() {
        if (!ValidatorBase.staticSet_instance) {
            ValidatorBase.staticSet_instance = true;
            ValidatorBase.instance = new ValidatorBase();
        }
        return ValidatorBase.instance;
    }
    

    public static ValidatorBase getInstance() {
        return ValidatorBase.staticGet_instance();
    }
    

    public ValidatorBase() {
        base();
    }
    

    public virtual bool isValid() {
        return BooleanFactory.getInstance().TRUE_;
    }
    

    public virtual string validationInfo() {
        return StringUtil.getInstance().EMPTY_STRING;
    }
    

    public virtual ABHashtable toHashtable() {
        return StdUtil.getInstance().NULL_TABLE;
    }
    

    public virtual BasicArrayList toList() {
        return BasicArrayListUtil.getInstance().getImmutableInstance();
    }
}

