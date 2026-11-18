/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package org.allbinary.logic.system
// import java.io.InputStream
// import org.allbinary.data.resource.ResourceUtil

public class PlatformAssetManager : JObject {
    private static PlatformAssetManager? instance;
    private static bool staticSet_instance = false;
    private static PlatformAssetManager staticGet_instance() {
        if (!PlatformAssetManager.staticSet_instance) {
            PlatformAssetManager.staticSet_instance = true;
            PlatformAssetManager.instance = new PlatformAssetManager();
        }
        return PlatformAssetManager.instance;
    }

    public PlatformAssetManager() {
        base();
    }
    

    public static PlatformAssetManager getInstance() {
        return PlatformAssetManager.staticGet_instance();
    }
    

    public virtual InputStream getResourceAsStream(string resource) {
        ResourceUtil resourceUtil = ResourceUtil.getInstance();
        InputStream inputStream = resourceUtil.getResourceAsStream(resource);
        return inputStream;
    }
}

