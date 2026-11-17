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
// package org.allbinary.logic.io.path
// import org.allbinary.logic.io.file.FilePathData
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonSeps

public class AbPathData : JObject {
    private static AbPathData? instance;
    private static bool staticSet_instance = false;
    private static AbPathData staticGet_instance() {
        if (!AbPathData.staticSet_instance) {
            AbPathData.staticSet_instance = true;
            AbPathData.instance = new AbPathData();
        }
        return AbPathData.instance;
    }
    public string EXTENSION_SEP;
    public uint16 SEPARATORCHAR;
    public string SEPARATOR;

    // Java field initializers run after the base constructor
    private void initFieldsAbPathData() {
    this.EXTENSION_SEP = CommonSeps.getInstance().PERIOD;
    this.SEPARATORCHAR = ((uint16) '/');
    this.SEPARATOR = CommonSeps.getInstance().FORWARD_SLASH;
    }
    

    public static AbPathData getInstance() {
        return AbPathData.staticGet_instance();
    }
    

    public AbPathData() {
        base();
        this.initFieldsAbPathData();
    }
}

