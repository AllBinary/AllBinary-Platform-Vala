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
// package org.allbinary.thread

public class NullABRunnable : ABRunnable {
    private static NullABRunnable? instance;
    private static bool staticSet_instance = false;
    private static NullABRunnable staticGet_instance() {
        if (!NullABRunnable.staticSet_instance) {
            NullABRunnable.staticSet_instance = true;
            NullABRunnable.instance = new NullABRunnable();
        }
        return NullABRunnable.instance;
    }

    public NullABRunnable() {
        base();
    }
    

    public static NullABRunnable getInstance() {
        return NullABRunnable.staticGet_instance();
    }
    

    public override bool isRunning() {
        return false;
    }
}

