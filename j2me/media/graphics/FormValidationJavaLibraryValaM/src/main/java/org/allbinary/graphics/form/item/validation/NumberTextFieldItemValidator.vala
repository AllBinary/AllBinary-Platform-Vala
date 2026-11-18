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
// package org.allbinary.graphics.form.item.validation
// import org.allbinary.graphics.form.item.ABTextFieldItem
// import org.allbinary.logic.control.validate.ValidatorBase
// import org.allbinary.logic.java.bool.BooleanFactory
// import org.allbinary.logic.math.SmallIntegerSingletonFactory
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

public class NumberTextFieldItemValidator : ValidatorBase {
    private ABTextFieldItem textFieldItem;
    private int32 min;
    private int32 max;
    private int32 maxChars;

    // Java field initializers run after the base constructor
    private void initFieldsNumberTextFieldItemValidator() {
    
    
    
    
    }
    

    public NumberTextFieldItemValidator(ABTextFieldItem textFieldItem, int32 maxChars, int32 min, int32 max) {
        base();
        this.initFieldsNumberTextFieldItemValidator();
        this.textFieldItem = textFieldItem;
        this.min = min;
        this.max = max;
        this.maxChars = maxChars;
    }
    

    public virtual bool isNumberValid(int32? value) {
        return BooleanFactory.getInstance().TRUE_;
    }
    

    public virtual BasicArrayList toNumberVector(int32? value) {
        return new BasicArrayListD();
    }
    

    public override bool isValid() {
        bool result = BooleanFactory.getInstance().TRUE_;
        string string = this.textFieldItem.getString();
        int32 textLength = JString.length(string);
        if (textLength > 0 && textLength < this.maxChars) {
            {
                (int32) int.parse(this.textFieldItem.getString());
            } /* catch (NumberFormatException e): a thrown Java exception stops the program */
        } else {
            if (textLength < 1) {
                result = BooleanFactory.getInstance().FALSE_;
            } else if (textLength > this.maxChars) {
                result = BooleanFactory.getInstance().FALSE_;
            }
        }
        return result;
    }
    

    public override BasicArrayList toList() {
        BasicArrayList list = new BasicArrayListD();
        string string = this.textFieldItem.getString();
        int32 textLength = JString.length(string);
        string label = this.textFieldItem.getLabel();
        string name = JString.substring(label, 0, JString.length(label) - 2);
        SmallIntegerSingletonFactory smallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance();
        StringMaker stringMaker = new StringMaker();
        if (textLength > 0 && textLength < this.maxChars) {
            {
                int32? number = smallIntegerSingletonFactory.createInstance((int32) int.parse(this.textFieldItem.getString()));
                if (((int32) number) > this.min) {
                    stringMaker.@delete(0, stringMaker.length());
                    list.add(JString.box(stringMaker.append(name).append(" is to small").toString()));
                } else if (((int32) number) > this.max) {
                    stringMaker.@delete(0, stringMaker.length());
                    list.add(JString.box(stringMaker.append(name).append(" is to large").toString()));
                }
            } /* catch (NumberFormatException e): a thrown Java exception stops the program */
        } else {
            if (textLength < 1) {
                stringMaker.@delete(0, stringMaker.length());
                list.add(JString.box(stringMaker.append(name).append(" is to short").toString()));
            } else if (textLength > this.maxChars) {
                stringMaker.@delete(0, stringMaker.length());
                list.add(JString.box(stringMaker.append(name).append(" is to long").toString()));
            }
        }
        return list;
    }
}

