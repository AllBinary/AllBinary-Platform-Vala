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
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

public class TextFieldItemValidator : ValidatorBase {
    private ABTextFieldItem textFieldItem;
    private int32 min;
    private int32 max;
    private bool allowOnEmpty;

    // Java field initializers run after the base constructor
    private void initFieldsTextFieldItemValidator() {
    
    
    
    
    }
    

    public TextFieldItemValidator(ABTextFieldItem textFieldItem, int32 min, int32 max, bool allowOnEmpty) {
        base();
        this.initFieldsTextFieldItemValidator();
        this.textFieldItem = textFieldItem;
        this.min = min;
        this.max = max;
        this.allowOnEmpty = allowOnEmpty;
    }
    

    public override bool isValid() {
        BooleanFactory booleanFactory = BooleanFactory.getInstance();
        bool result = booleanFactory.TRUE_;
        string string = this.textFieldItem.getString();
        int32 textLength = JString.length(string);
        if ((textLength == 0 && this.allowOnEmpty) || textLength > this.min && textLength < this.max) {
        } else {
            if (textLength < this.min) {
                result = booleanFactory.FALSE_;
            } else if (textLength > this.max) {
                result = booleanFactory.FALSE_;
            }
        }
        return result;
    }
    

    public override BasicArrayList toList() {
        BasicArrayList list = new BasicArrayListD();
        string string = this.textFieldItem.getString();
        int32 textLength = JString.length(string);
        if (textLength > this.min && textLength < this.max) {
        } else {
            string label = this.textFieldItem.getLabel();
            string name = JString.substring(label, 0, JString.length(label) - 2);
            if (textLength < this.min) {
                list.add(JString.box(new StringMaker().append(name).append(" is to short").toString()));
            } else if (textLength > this.max) {
                list.add(JString.box(new StringMaker().append(name).append(" is to long").toString()));
            }
        }
        return list;
    }
}

