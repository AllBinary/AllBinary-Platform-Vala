/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2026 AllBinary 
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
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonStrings

public class PropertyInitUtil : JObject {
    private static PropertyInitUtil? instance;
    private static bool staticSet_instance = false;
    private static PropertyInitUtil staticGet_instance() {
        if (!PropertyInitUtil.staticSet_instance) {
            PropertyInitUtil.staticSet_instance = true;
            PropertyInitUtil.instance = new PropertyInitUtil();
        }
        return PropertyInitUtil.instance;
    }

    public PropertyInitUtil() {
        base();
    }
    

    public static PropertyInitUtil getInstance1(int32 value) {
        CommonStrings commonStrings = CommonStrings.getInstance();
        LogUtil logUtil = LogUtil.getInstance();
        logUtil.putF(new StringMaker().append("PropertyInitUtil: ").appendint(value).toString(), logUtil, commonStrings.CONSTRUCTOR);
        return PropertyInitUtil.staticGet_instance();
    }
}

