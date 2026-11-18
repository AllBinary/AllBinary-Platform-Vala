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
// package org.allbinary.logic.system.loader
// import org.allbinary.logic.NullUtil

public class WebappClassLoaderInfo : JObject {
    private static JObject? classLoader;
    private static bool staticSet_classLoader = false;
    private static JObject staticGet_classLoader() {
        if (!WebappClassLoaderInfo.staticSet_classLoader) {
            WebappClassLoaderInfo.staticSet_classLoader = true;
            WebappClassLoaderInfo.classLoader = NullUtil.getInstance().NULL_OBJECT;
        }
        return WebappClassLoaderInfo.classLoader;
    }
    

    public WebappClassLoaderInfo() {
        base();
    }
    

    public static void setLoader(ClassLoader classLoader) {
        WebappClassLoaderInfo.classLoader = classLoader;
    }
    

    public static ClassLoader getLoader() {
        return ((ClassLoader) WebappClassLoaderInfo.staticGet_classLoader());
    }
}

