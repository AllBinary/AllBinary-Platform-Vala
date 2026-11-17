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
// package org.allbinary.logic.util.visitor
// import org.allbinary.logic.NullUtil

public class Visitor : JObject, VisitorInterface {
    private static Visitor? instance;
    private static bool staticSet_instance = false;
    private static Visitor staticGet_instance() {
        if (!Visitor.staticSet_instance) {
            Visitor.staticSet_instance = true;
            Visitor.instance = new Visitor();
        }
        return Visitor.instance;
    }
    public NullUtil nullUtil;

    // Java field initializers run after the base constructor
    private void initFieldsVisitor() {
    this.nullUtil = NullUtil.getInstance();
    }

    public Visitor() {
        base();
        this.initFieldsVisitor();
    }
    

    public virtual JObject visit(JObject anyType) {
        return this.nullUtil.NULL_OBJECT;
    }
    

    public static Visitor getInstance() {
        return Visitor.staticGet_instance();
    }
}

