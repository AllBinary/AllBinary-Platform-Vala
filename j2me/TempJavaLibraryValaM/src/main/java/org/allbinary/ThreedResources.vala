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
// package org.allbinary

public class ThreedResources : JObject {
    private static ThreedResources? threedResources;
    private static bool staticSet_threedResources = false;
    private static ThreedResources staticGet_threedResources() {
        if (!ThreedResources.staticSet_threedResources) {
            ThreedResources.staticSet_threedResources = true;
            ThreedResources.threedResources = new ThreedResources();
        }
        return ThreedResources.threedResources;
    }

    public ThreedResources() {
        base();
    }
    

    public static ThreedResources getThreedResources() {
        return ThreedResources.staticGet_threedResources();
    }
    

    public virtual void add() {
    }
}

