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
// import org.allbinary.logic.java.bool.BooleanFactory
// import org.allbinary.logic.util.visitor.Visitor

public class TextItemVisitor : Visitor {
    

    public TextItemVisitor() {
        base();
    }
    

    public override JObject visit(JObject anyType) {
        string value = JString.unbox(anyType);
        if (JString.length(value) < 2) {
            return BooleanFactory.getInstance().TRUE_;
        } else {
            return BooleanFactory.getInstance().FALSE_;
        }
    }
}

