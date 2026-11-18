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
// import org.allbinary.game.input.TextNotificationUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.java.bool.BooleanFactory
// import org.allbinary.logic.string.StringValidationUtil
// import org.allbinary.logic.util.visitor.Visitor
// import org.allbinary.string.CommonStrings

public class TextItemUserIdentifierVisitor : Visitor {
    public LogUtil logUtil;

    // Java field initializers run after the base constructor
    private void initFieldsTextItemUserIdentifierVisitor() {
    this.logUtil = LogUtil.getInstance();
    }
    

    public TextItemUserIdentifierVisitor() {
        base();
        this.initFieldsTextItemUserIdentifierVisitor();
    }
    

    public override JObject visit(JObject anyType) {
        string value = JString.unbox(anyType);
        if (JString.length(value) < 2) {
            uint16 charValue = JString.charAt(value, 0);
            StringValidationUtil stringValidationUtil = StringValidationUtil.getInstance();
            if (stringValidationUtil.isNumber(value)) {
                return BooleanFactory.getInstance().TRUE_;
            } else if (this.isLetter(charValue)) {
                return BooleanFactory.getInstance().TRUE_;
            } else {
                {
                    TextNotificationUtil.getInstance().fireError("Only Letters & Numbers Allowed");
                } /* catch (Exception e): a thrown Java exception stops the program */
                return BooleanFactory.getInstance().FALSE_;
            }
        } else {
            return BooleanFactory.getInstance().FALSE_;
        }
    }
    

    public virtual bool isLetter(uint16 charValue) {
        int32 value = ((int32) (charValue));
        return (value > 64 && value < 91) || (value > 96 && value < 123);
    }
}

