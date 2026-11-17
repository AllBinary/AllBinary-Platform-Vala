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
// package org.allbinary.logic.java.bool

public class BooleanFactory : JObject {
    private static BooleanFactory? instance;
    private static bool staticSet_instance = false;
    private static BooleanFactory staticGet_instance() {
        if (!BooleanFactory.staticSet_instance) {
            BooleanFactory.staticSet_instance = true;
            BooleanFactory.instance = new BooleanFactory();
        }
        return BooleanFactory.instance;
    }
    public bool TRUE_;
    public bool FALSE_;
    public string TRUE_STRING;
    public string FALSE_STRING;
    public string YES;
    public string NO;

    // Java field initializers run after the base constructor
    private void initFieldsBooleanFactory() {
    this.TRUE_ = true;
    this.FALSE_ = false;
    this.TRUE_STRING = this.TRUE_.to_string();
    this.FALSE_STRING = this.FALSE_.to_string();
    this.YES = "yes";
    this.NO = "no";
    }

    public BooleanFactory() {
        base();
        this.initFieldsBooleanFactory();
    }
    

    public static BooleanFactory getInstance() {
        return BooleanFactory.staticGet_instance();
    }
    

    public virtual string toStringb(bool bool) {
        if (bool) {
            return this.TRUE_STRING;
        } else {
            return this.FALSE_STRING;
        }
    }
}

