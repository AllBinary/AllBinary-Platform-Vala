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
// package org.allbinary.layer

public class LayerManagerNoDebug : LayerManagerLoggingBase {
    private static LayerManagerNoDebug? instance;
    private static bool staticSet_instance = false;
    private static LayerManagerNoDebug staticGet_instance() {
        if (!LayerManagerNoDebug.staticSet_instance) {
            LayerManagerNoDebug.staticSet_instance = true;
            LayerManagerNoDebug.instance = new LayerManagerNoDebug();
        }
        return LayerManagerNoDebug.instance;
    }

    public LayerManagerNoDebug() {
        base();
    }
    

    public static LayerManagerNoDebug getInstance() {
        return LayerManagerNoDebug.staticGet_instance();
    }
}

