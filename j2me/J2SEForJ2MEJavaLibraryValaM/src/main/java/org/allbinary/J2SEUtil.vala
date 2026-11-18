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
// package org.allbinary
// import java.util.HashMap
// import java.util.Map
// import java.util.Set

//J2SEForJ2ME
public class J2SEUtil : JObject {
    private static J2SEUtil? instance;
    private static bool staticSet_instance = false;
    private static J2SEUtil staticGet_instance() {
        if (!J2SEUtil.staticSet_instance) {
            J2SEUtil.staticSet_instance = true;
            J2SEUtil.instance = new J2SEUtil();
        }
        return J2SEUtil.instance;
    }

    public J2SEUtil() {
        base();
    }
    

    public static J2SEUtil getInstance() {
        return J2SEUtil.staticGet_instance();
    }
    

    public virtual JObject[] getHashMapAsArray(HashMap hashMap) {
        JObject[] objectArray = hashMap.keySet().toArray();
        return objectArray;
    }
    

    public virtual JObject[] getMapAsArray(Map map) {
        JObject[] objectArray = map.keySet().toArray();
        return objectArray;
    }
    

    public virtual JObject[] getSetAsArray(Set @set) {
        JObject[] objectArray = @set.toArray();
        return objectArray;
    }
}

