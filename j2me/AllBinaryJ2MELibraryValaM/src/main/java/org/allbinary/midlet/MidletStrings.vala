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
// package org.allbinary.midlet

public class MidletStrings : JObject {
    private static MidletStrings? instance;
    private static bool staticSet_instance = false;
    private static MidletStrings staticGet_instance() {
        if (!MidletStrings.staticSet_instance) {
            MidletStrings.staticSet_instance = true;
            MidletStrings.instance = new MidletStrings();
        }
        return MidletStrings.instance;
    }
    public string COMMAND_ACTION;

    // Java field initializers run after the base constructor
    private void initFieldsMidletStrings() {
    this.COMMAND_ACTION = "commandAction";
    }

    public MidletStrings() {
        base();
        this.initFieldsMidletStrings();
    }
    

    public static MidletStrings getInstance() {
        return MidletStrings.staticGet_instance();
    }
}

