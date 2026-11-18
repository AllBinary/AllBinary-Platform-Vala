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
// package org.allbinary.android.view

public class AllBinaryRenderer : JObject {
    private static AllBinaryRenderer? instance;
    private static bool staticSet_instance = false;
    private static AllBinaryRenderer staticGet_instance() {
        if (!AllBinaryRenderer.staticSet_instance) {
            AllBinaryRenderer.staticSet_instance = true;
            AllBinaryRenderer.instance = new AllBinaryRenderer();
        }
        return AllBinaryRenderer.instance;
    }

    public AllBinaryRenderer() {
        base();
    }
    

    public static AllBinaryRenderer getInstance() {
        return AllBinaryRenderer.staticGet_instance();
    }
    

    public virtual void setRunnable(Runnable runnable) {
    }
    

    public virtual void clearRunnable() {
    }
}

