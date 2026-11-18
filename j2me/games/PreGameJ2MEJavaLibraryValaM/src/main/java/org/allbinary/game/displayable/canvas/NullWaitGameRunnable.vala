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
// package org.allbinary.game.displayable.canvas

public class NullWaitGameRunnable : GameRunnable {
    private static GameRunnable? instance;
    private static bool staticSet_instance = false;
    private static GameRunnable staticGet_instance() {
        if (!NullWaitGameRunnable.staticSet_instance) {
            NullWaitGameRunnable.staticSet_instance = true;
            NullWaitGameRunnable.instance = new NullWaitGameRunnable();
        }
        return NullWaitGameRunnable.instance;
    }

    public NullWaitGameRunnable() {
        base();
    }
    

    public static GameRunnable getInstance() {
        return NullWaitGameRunnable.staticGet_instance();
    }
}

