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
// package org.allbinary.graphics.form
// import org.allbinary.graphics.displayable.DisplayInfoSingleton
// import org.allbinary.logic.string.StringUtil

public class FormTypeFactory : JObject {
    private static FormTypeFactory? instance;
    private static bool staticSet_instance = false;
    private static FormTypeFactory staticGet_instance() {
        if (!FormTypeFactory.staticSet_instance) {
            FormTypeFactory.staticSet_instance = true;
            FormTypeFactory.instance = new FormTypeFactory();
        }
        return FormTypeFactory.instance;
    }
    public string UNK;
    public FormType NULL_FORM_TYPE;
    public FormType TEMP_HORIZONTAL_FORM;
    public FormType HORIZONTAL_FORM;
    public FormType VERTICAL_CENTER_FORM;

    // Java field initializers run after the base constructor
    private void initFieldsFormTypeFactory() {
    this.UNK = "Unknown FormType";
    this.NULL_FORM_TYPE = new FormType(StringUtil.getInstance().NULL_STRING);
    this.TEMP_HORIZONTAL_FORM = new FormType("TempHorizontal");
    this.HORIZONTAL_FORM = new FormType("Horizontal");
    this.VERTICAL_CENTER_FORM = new FormType("Vertical");
    }

    public FormTypeFactory() {
        base();
        this.initFieldsFormTypeFactory();
    }
    

    public static FormTypeFactory getInstance() {
        return FormTypeFactory.staticGet_instance();
    }
    

    public virtual FormType getFormType() {
        DisplayInfoSingleton displayInfo = DisplayInfoSingleton.getInstance();
        FormType formType = null;
        if (displayInfo.isPortrait()) {
            formType = this.VERTICAL_CENTER_FORM;
        } else {
            formType = this.HORIZONTAL_FORM;
        }
        return formType;
    }
}

