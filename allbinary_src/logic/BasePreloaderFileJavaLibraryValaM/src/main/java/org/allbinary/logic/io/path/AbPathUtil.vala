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
// package org.allbinary.logic.io.path

public class AbPathUtil : JObject {
    private static AbPathUtil? instance;
    private static bool staticSet_instance = false;
    private static AbPathUtil staticGet_instance() {
        if (!AbPathUtil.staticSet_instance) {
            AbPathUtil.staticSet_instance = true;
            AbPathUtil.instance = new AbPathUtil();
        }
        return AbPathUtil.instance;
    }
    public AbPath NO_ABPATH;

    // Java field initializers run after the base constructor
    private void initFieldsAbPathUtil() {
    this.NO_ABPATH = AbPath.createAbPath();
    }

    public AbPathUtil() {
        base();
        this.initFieldsAbPathUtil();
    }
    

    public static AbPathUtil getInstance() {
        return AbPathUtil.staticGet_instance();
    }
}

