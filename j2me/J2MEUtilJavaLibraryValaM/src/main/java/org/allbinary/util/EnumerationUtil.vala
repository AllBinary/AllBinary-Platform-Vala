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
// package org.allbinary.util
// import jsinterop.annotations.JsType
// import java.util.Enumeration
// import jsinterop.annotations.JsMethod

//ArkTs does not have this.  So this is for the ArkTs build.
public class EnumerationUtil : JObject {
    private static EnumerationUtil? instance;
    private static bool staticSet_instance = false;
    private static EnumerationUtil staticGet_instance() {
        if (!EnumerationUtil.staticSet_instance) {
            EnumerationUtil.staticSet_instance = true;
            EnumerationUtil.instance = new EnumerationUtil();
        }
        return EnumerationUtil.instance;
    }

    public EnumerationUtil() {
        base();
    }
    

    public static EnumerationUtil getInstance() {
        return EnumerationUtil.staticGet_instance();
    }
    

    public virtual bool hasMoreElements(Enumeration enumeration) {
        return enumeration.hasMoreElements();
    }
    

    public virtual JObject nextElement(Enumeration enumeration) {
        return enumeration.nextElement();
    }
    

    public virtual JObject[] getAsArray(Enumeration enumeration) {
        BasicArrayList basicArrayList = new BasicArrayListD();
        while (this.hasMoreElements(enumeration)) {
            basicArrayList.add(this.nextElement(enumeration));
        }
        return basicArrayList.toArray();
    }
}

