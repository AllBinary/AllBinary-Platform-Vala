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
// package org.allbinary.logic.java.character

public class CharArrayFactory : JObject {
    private static CharArrayFactory? instance;
    private static bool staticSet_instance = false;
    private static CharArrayFactory staticGet_instance() {
        if (!CharArrayFactory.staticSet_instance) {
            CharArrayFactory.staticSet_instance = true;
            CharArrayFactory.instance = new CharArrayFactory();
        }
        return CharArrayFactory.instance;
    }
    private uint16[] zeroCharArray;

    // Java field initializers run after the base constructor
    private void initFieldsCharArrayFactory() {
    this.zeroCharArray = new uint16[0];
    }

    public CharArrayFactory() {
        base();
        this.initFieldsCharArrayFactory();
    }
    

    public static CharArrayFactory getInstance() {
        return CharArrayFactory.staticGet_instance();
    }
    

    public virtual uint16[] getZeroCharArray() {
        return this.zeroCharArray;
    }
}

