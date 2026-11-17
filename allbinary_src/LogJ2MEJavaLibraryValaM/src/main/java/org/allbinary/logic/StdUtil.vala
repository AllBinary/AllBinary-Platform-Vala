/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.logic
// import org.allbinary.util.ABHashtable
// import org.allbinary.util.ABStack
// import org.allbinary.util.ABVector

//ActualPlatform
public class StdUtil : JObject {
    private static StdUtil? instance;
    private static bool staticSet_instance = false;
    private static StdUtil staticGet_instance() {
        if (!StdUtil.staticSet_instance) {
            StdUtil.staticSet_instance = true;
            StdUtil.instance = new StdUtil();
        }
        return StdUtil.instance;
    }
    public ABVector EMPTY_VECTOR;
    public ABHashtable NULL_TABLE;

    // Java field initializers run after the base constructor
    private void initFieldsStdUtil() {
    this.EMPTY_VECTOR = this.createVector();
    this.NULL_TABLE = this.createHashtable();
    }

    public StdUtil() {
        base();
        this.initFieldsStdUtil();
    }
    

    public static StdUtil getInstance() {
        return StdUtil.staticGet_instance();
    }
    

    public virtual ABStack createStack() {
        return new ABStack();
    }
    

    public virtual ABVector createVector() {
        return new ABVector();
    }
    

    public virtual ABHashtable createHashtable() {
        return new ABHashtable.with0();
    }
}

